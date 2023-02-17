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

// SystemVerilog created from cnn_top_bb_conv_process_B25_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B25_stall_region (
    output wire [0:0] out_c1_exe711,
    output wire [0:0] out_unnamed_conv_process122,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_52_0,
    input wire [31:0] in_intel_reserved_ffwd_76_0,
    output wire [31:0] out_intel_reserved_ffwd_78_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c1_exe711,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] bgTrunc_i_inc47_conv_process1_sel_x_b;
    wire [31:0] c_i32_18_q;
    wire [33:0] i_cmp24_conv_process3_a;
    wire [33:0] i_cmp24_conv_process3_b;
    logic [33:0] i_cmp24_conv_process3_o;
    wire [0:0] i_cmp24_conv_process3_c;
    wire [32:0] i_inc47_conv_process1_a;
    wire [32:0] i_inc47_conv_process1_b;
    logic [32:0] i_inc47_conv_process1_o;
    wire [32:0] i_inc47_conv_process1_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_dest_data_out_52_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_dest_data_out_76_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_intel_reserved_ffwd_78_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_valid_out;
    wire [0:0] i_unnamed_conv_process6_q;
    reg [0:0] redist0_stall_entry_o4_2_0_q;
    reg [0:0] redist0_stall_entry_o4_2_1_q;
    reg [31:0] redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    reg [0:0] SE_redist0_stall_entry_o4_2_0_R_v_0;
    reg [0:0] SE_redist0_stall_entry_o4_2_0_R_v_1;
    reg [0:0] SE_redist0_stall_entry_o4_2_0_R_v_2;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_s_tv_1;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_s_tv_2;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_or0;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_or1;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_V0;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_V1;
    wire [0:0] SE_redist0_stall_entry_o4_2_0_V2;
    reg [0:0] SE_redist0_stall_entry_o4_2_1_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_2_1_V0;
    reg [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_or0;
    wire [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_V0;
    wire [0:0] SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_V1;
    wire [0:0] SR_SE_redist0_stall_entry_o4_2_1_i_valid;
    reg [0:0] SR_SE_redist0_stall_entry_o4_2_1_r_valid;
    reg [0:0] SR_SE_redist0_stall_entry_o4_2_1_r_data0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_2_1_backStall;
    wire [0:0] SR_SE_redist0_stall_entry_o4_2_1_V;
    wire [0:0] SR_SE_redist0_stall_entry_o4_2_1_D0;


    // bubble_join_stall_entry(BITJOIN,54)
    assign bubble_join_stall_entry_q = in_c1_exe711;

    // bubble_select_stall_entry(BITSELECT,55)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // redist0_stall_entry_o4_2_0(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_stall_entry_o4_2_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_2_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0(STALLENABLE,67)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_backStall = SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_wireValid = i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_76_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_ti_0490000phi159_conv_process0 thei_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0 (
        .in_intel_reserved_ffwd_76_0(in_intel_reserved_ffwd_76_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_76_0(i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_dest_data_out_76_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist0_stall_entry_o4_2_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist0_stall_entry_o4_2_0(STALLENABLE,73)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_2_0_V0 = SE_redist0_stall_entry_o4_2_0_R_v_0;
    assign SE_redist0_stall_entry_o4_2_0_V1 = SE_redist0_stall_entry_o4_2_0_R_v_1;
    assign SE_redist0_stall_entry_o4_2_0_V2 = SE_redist0_stall_entry_o4_2_0_R_v_2;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_2_0_s_tv_0 = SR_SE_redist0_stall_entry_o4_2_1_backStall & SE_redist0_stall_entry_o4_2_0_R_v_0;
    assign SE_redist0_stall_entry_o4_2_0_s_tv_1 = i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_stall_out & SE_redist0_stall_entry_o4_2_0_R_v_1;
    assign SE_redist0_stall_entry_o4_2_0_s_tv_2 = i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_stall_out & SE_redist0_stall_entry_o4_2_0_R_v_2;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_2_0_or0 = SE_redist0_stall_entry_o4_2_0_s_tv_0;
    assign SE_redist0_stall_entry_o4_2_0_or1 = SE_redist0_stall_entry_o4_2_0_s_tv_1 | SE_redist0_stall_entry_o4_2_0_or0;
    assign SE_redist0_stall_entry_o4_2_0_backEN = ~ (SE_redist0_stall_entry_o4_2_0_s_tv_2 | SE_redist0_stall_entry_o4_2_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_2_0_v_s_0 = SE_redist0_stall_entry_o4_2_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_2_0_backStall = ~ (SE_redist0_stall_entry_o4_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_2_0_R_v_0 <= 1'b0;
            SE_redist0_stall_entry_o4_2_0_R_v_1 <= 1'b0;
            SE_redist0_stall_entry_o4_2_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_2_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_2_0_R_v_0 <= SE_redist0_stall_entry_o4_2_0_R_v_0 & SE_redist0_stall_entry_o4_2_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_2_0_R_v_0 <= SE_redist0_stall_entry_o4_2_0_v_s_0;
            end

            if (SE_redist0_stall_entry_o4_2_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_2_0_R_v_1 <= SE_redist0_stall_entry_o4_2_0_R_v_1 & SE_redist0_stall_entry_o4_2_0_s_tv_1;
            end
            else
            begin
                SE_redist0_stall_entry_o4_2_0_R_v_1 <= SE_redist0_stall_entry_o4_2_0_v_s_0;
            end

            if (SE_redist0_stall_entry_o4_2_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_2_0_R_v_2 <= SE_redist0_stall_entry_o4_2_0_R_v_2 & SE_redist0_stall_entry_o4_2_0_s_tv_2;
            end
            else
            begin
                SE_redist0_stall_entry_o4_2_0_R_v_2 <= SE_redist0_stall_entry_o4_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist0_stall_entry_o4_2_1(STALLREG,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_stall_entry_o4_2_1_r_valid <= 1'b0;
            SR_SE_redist0_stall_entry_o4_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_stall_entry_o4_2_1_r_valid <= SE_redist0_stall_entry_o4_2_1_backStall & (SR_SE_redist0_stall_entry_o4_2_1_r_valid | SR_SE_redist0_stall_entry_o4_2_1_i_valid);

            if (SR_SE_redist0_stall_entry_o4_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_stall_entry_o4_2_1_r_data0 <= $unsigned(redist0_stall_entry_o4_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_stall_entry_o4_2_1_i_valid = SE_redist0_stall_entry_o4_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist0_stall_entry_o4_2_1_backStall = SR_SE_redist0_stall_entry_o4_2_1_r_valid | ~ (SR_SE_redist0_stall_entry_o4_2_1_i_valid);

    // Valid
    assign SR_SE_redist0_stall_entry_o4_2_1_V = SR_SE_redist0_stall_entry_o4_2_1_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_2_1_r_valid : SR_SE_redist0_stall_entry_o4_2_1_i_valid;

    assign SR_SE_redist0_stall_entry_o4_2_1_D0 = SR_SE_redist0_stall_entry_o4_2_1_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_2_1_r_data0 : redist0_stall_entry_o4_2_0_q;

    // SE_redist0_stall_entry_o4_2_1(STALLENABLE,74)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_2_1_V0 = SE_redist0_stall_entry_o4_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_2_1_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_backStall & SE_redist0_stall_entry_o4_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_2_1_backEN = ~ (SE_redist0_stall_entry_o4_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_2_1_v_s_0 = SE_redist0_stall_entry_o4_2_1_backEN & SR_SE_redist0_stall_entry_o4_2_1_V;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_2_1_backStall = ~ (SE_redist0_stall_entry_o4_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_2_1_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_2_1_R_v_0 <= SE_redist0_stall_entry_o4_2_1_R_v_0 & SE_redist0_stall_entry_o4_2_1_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_2_1_R_v_0 <= SE_redist0_stall_entry_o4_2_1_v_s_0;
            end

        end
    end

    // c_i32_18(CONSTANT,6)
    assign c_i32_18_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0(BITJOIN,50)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_q = i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_out_dest_data_out_76_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0(BITSELECT,51)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_q[31:0]);

    // i_inc47_conv_process1(ADD,10)@1
    assign i_inc47_conv_process1_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_b};
    assign i_inc47_conv_process1_b = {1'b0, c_i32_18_q};
    assign i_inc47_conv_process1_o = $unsigned(i_inc47_conv_process1_a) + $unsigned(i_inc47_conv_process1_b);
    assign i_inc47_conv_process1_q = i_inc47_conv_process1_o[32:0];

    // bgTrunc_i_inc47_conv_process1_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_inc47_conv_process1_sel_x_b = i_inc47_conv_process1_q[31:0];

    // redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_inc47_conv_process1_sel_x_b);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7(BLACKBOX,14)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_78_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ess123_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7 (
        .in_predicate_in(GND_q),
        .in_src_data_in_78_0(redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_backStall),
        .in_valid_in(SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_V1),
        .out_intel_reserved_ffwd_78_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_intel_reserved_ffwd_78_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0(STALLENABLE,75)
    // Valid signal propagation
    assign SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_V0 = SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_0;
    assign SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_V1 = SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_backStall & SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_0;
    assign SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_s_tv_1 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_stall_out & SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_or0 = SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_s_tv_0;
    assign SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backEN = ~ (SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_s_tv_1 | SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_v_s_0 = SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_ti_0490_replace_phi159_conv_process0_V0;
    // Backward Stall generation
    assign SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backStall = ~ (SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_0 <= SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_0 & SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_0 <= SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_1 <= SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_1 & SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_R_v_1 <= SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_52_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5 (
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_backStall),
        .in_valid_in(SE_redist0_stall_entry_o4_2_0_V2),
        .out_dest_data_out_52_0(i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_dest_data_out_52_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process0 thei_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_backStall),
        .in_valid_in(SE_redist0_stall_entry_o4_2_0_V1),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2(STALLENABLE,65)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and0 = i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and1 = i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and2 = SE_redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_wireValid = SE_redist0_stall_entry_o4_2_1_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_and3;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_q = i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_q[31:0]);

    // i_cmp24_conv_process3(COMPARE,9)@2
    assign i_cmp24_conv_process3_a = $unsigned({{2{redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_q[31]}}, redist1_bgTrunc_i_inc47_conv_process1_sel_x_b_1_0_q});
    assign i_cmp24_conv_process3_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_b});
    assign i_cmp24_conv_process3_o = $unsigned($signed(i_cmp24_conv_process3_a) - $signed(i_cmp24_conv_process3_b));
    assign i_cmp24_conv_process3_c[0] = i_cmp24_conv_process3_o[33];

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5(BITJOIN,42)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_q = i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_out_dest_data_out_52_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5(BITSELECT,43)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_q[0:0]);

    // i_unnamed_conv_process6(LOGICAL,15)@2
    assign i_unnamed_conv_process6_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489116_conv_process5_b & i_cmp24_conv_process3_c;

    // redist0_stall_entry_o4_2_1(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_stall_entry_o4_2_1_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_2_1_q <= $unsigned(SR_SE_redist0_stall_entry_o4_2_1_D0);
        end
    end

    // dupName_0_sync_out_x(GPOUT,3)@2
    assign out_c1_exe711 = redist0_stall_entry_o4_2_1_q;
    assign out_unnamed_conv_process122 = i_unnamed_conv_process6_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88251_conv_process2_V0;

    // regfree_osync(GPOUT,28)
    assign out_intel_reserved_ffwd_78_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process123_conv_process7_out_intel_reserved_ffwd_78_0;

    // sync_out(GPOUT,33)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
