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

// SystemVerilog created from cnn_top_bb_conv_process_B11_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B11_stall_region (
    output wire [0:0] out_c0_exe87786,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_feedback_out_66,
    input wire [0:0] in_feedback_stall_in_66,
    output wire [0:0] out_feedback_valid_out_66,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe107809,
    input wire [31:0] in_c0_exe67762,
    input wire [0:0] in_c0_exe77774,
    input wire [0:0] in_c0_exe87786,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_dest_data_out_73_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_feedback_valid_out_66;
    wire [0:0] i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_valid_out;
    wire [0:0] i_offset_1_i_lcssa_select_conv_process1_s;
    reg [31:0] i_offset_1_i_lcssa_select_conv_process1_q;
    wire [65:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    reg [65:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_b;
    wire [65:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_backStall;
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
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_out_i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2(STALLENABLE,40)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_wireValid = i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0(BITJOIN,30)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_dest_data_out_73_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0(BITSELECT,31)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_offset_1_i_lcssa_select_conv_process1(MUX,10)@1
    assign i_offset_1_i_lcssa_select_conv_process1_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_b;
    always @(i_offset_1_i_lcssa_select_conv_process1_s or sel_for_coalesced_delay_0_c or sel_for_coalesced_delay_0_b)
    begin
        unique case (i_offset_1_i_lcssa_select_conv_process1_s)
            1'b0 : i_offset_1_i_lcssa_select_conv_process1_q = sel_for_coalesced_delay_0_c;
            1'b1 : i_offset_1_i_lcssa_select_conv_process1_q = sel_for_coalesced_delay_0_b;
            default : i_offset_1_i_lcssa_select_conv_process1_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2(BLACKBOX,9)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process0 thei_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2 (
        .in_c0_exe77774(sel_for_coalesced_delay_0_d),
        .in_data_in(i_offset_1_i_lcssa_select_conv_process1_q),
        .in_feedback_stall_in_66(in_feedback_stall_in_66),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_V0),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_feedback_valid_out_66),
        .out_stall_out(i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,42)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_coalesced_delay_0_0(STALLENABLE,46)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V1;
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

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_73_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000cess93_conv_process0 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0 (
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_73_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_dest_data_out_73_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0(STALLENABLE,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_consumed0 = (~ (i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_consumed1 = (~ (in_stall_in) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_and0;

    // bubble_join_stall_entry(BITJOIN,34)
    assign bubble_join_stall_entry_q = {in_c0_exe87786, in_c0_exe77774, in_c0_exe67762, in_c0_exe107809};

    // bubble_select_stall_entry(BITSELECT,35)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);

    // join_for_coalesced_delay_0(BITJOIN,26)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // coalesced_delay_0_0(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(66'b000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,27)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[64:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[65:65]);

    // dupName_0_sync_out_x(GPOUT,2)@1
    assign out_c0_exe87786 = sel_for_coalesced_delay_0_e;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process93_conv_process0_V1;

    // feedback_out_66_sync(GPOUT,5)
    assign out_feedback_out_66 = i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_feedback_out_66;

    // feedback_valid_out_66_sync(GPOUT,7)
    assign out_feedback_valid_out_66 = i_llvm_fpga_push_i32_offset_0_i475_push66_conv_process2_out_feedback_valid_out_66;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
