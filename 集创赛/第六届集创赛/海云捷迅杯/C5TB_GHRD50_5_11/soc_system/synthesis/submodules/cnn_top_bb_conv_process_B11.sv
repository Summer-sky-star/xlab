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

// SystemVerilog created from cnn_top_bb_conv_process_B11
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B11 (
    output wire [31:0] out_feedback_out_66,
    input wire [0:0] in_feedback_stall_in_66,
    output wire [0:0] out_feedback_valid_out_66,
    input wire [31:0] in_c0_exe107809_0,
    input wire [31:0] in_c0_exe67762_0,
    input wire [0:0] in_c0_exe77774_0,
    input wire [0:0] in_c0_exe87786_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv_process_B11_stall_region_out_c0_exe87786;
    wire [31:0] bb_conv_process_B11_stall_region_out_feedback_out_66;
    wire [0:0] bb_conv_process_B11_stall_region_out_feedback_valid_out_66;
    wire [0:0] bb_conv_process_B11_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B11_stall_region_out_valid_out;
    wire [0:0] conv_process_B11_branch_out_stall_out;
    wire [0:0] conv_process_B11_branch_out_valid_out_0;
    wire [0:0] conv_process_B11_branch_out_valid_out_1;
    wire [31:0] conv_process_B11_merge_out_c0_exe107809;
    wire [31:0] conv_process_B11_merge_out_c0_exe67762;
    wire [0:0] conv_process_B11_merge_out_c0_exe77774;
    wire [0:0] conv_process_B11_merge_out_c0_exe87786;
    wire [0:0] conv_process_B11_merge_out_stall_out_0;
    wire [0:0] conv_process_B11_merge_out_valid_out;


    // conv_process_B11_branch(BLACKBOX,3)
    cnn_top_conv_process_B11_branch theconv_process_B11_branch (
        .in_c0_exe87786(bb_conv_process_B11_stall_region_out_c0_exe87786),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv_process_B11_stall_region_out_valid_out),
        .out_stall_out(conv_process_B11_branch_out_stall_out),
        .out_valid_out_0(conv_process_B11_branch_out_valid_out_0),
        .out_valid_out_1(conv_process_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B11_merge(BLACKBOX,4)
    cnn_top_conv_process_B11_merge theconv_process_B11_merge (
        .in_c0_exe107809_0(in_c0_exe107809_0),
        .in_c0_exe67762_0(in_c0_exe67762_0),
        .in_c0_exe77774_0(in_c0_exe77774_0),
        .in_c0_exe87786_0(in_c0_exe87786_0),
        .in_stall_in(bb_conv_process_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe107809(conv_process_B11_merge_out_c0_exe107809),
        .out_c0_exe67762(conv_process_B11_merge_out_c0_exe67762),
        .out_c0_exe77774(conv_process_B11_merge_out_c0_exe77774),
        .out_c0_exe87786(conv_process_B11_merge_out_c0_exe87786),
        .out_stall_out_0(conv_process_B11_merge_out_stall_out_0),
        .out_valid_out(conv_process_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B11_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B11_stall_region thebb_conv_process_B11_stall_region (
        .in_c0_exe107809(conv_process_B11_merge_out_c0_exe107809),
        .in_c0_exe67762(conv_process_B11_merge_out_c0_exe67762),
        .in_c0_exe77774(conv_process_B11_merge_out_c0_exe77774),
        .in_c0_exe87786(conv_process_B11_merge_out_c0_exe87786),
        .in_feedback_stall_in_66(in_feedback_stall_in_66),
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_stall_in(conv_process_B11_branch_out_stall_out),
        .in_valid_in(conv_process_B11_merge_out_valid_out),
        .out_c0_exe87786(bb_conv_process_B11_stall_region_out_c0_exe87786),
        .out_feedback_out_66(bb_conv_process_B11_stall_region_out_feedback_out_66),
        .out_feedback_valid_out_66(bb_conv_process_B11_stall_region_out_feedback_valid_out_66),
        .out_stall_out(bb_conv_process_B11_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_66_sync(GPOUT,5)
    assign out_feedback_out_66 = bb_conv_process_B11_stall_region_out_feedback_out_66;

    // feedback_valid_out_66_sync(GPOUT,7)
    assign out_feedback_valid_out_66 = bb_conv_process_B11_stall_region_out_feedback_valid_out_66;

    // out_stall_in_0(GPOUT,16)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = conv_process_B11_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,18)
    assign out_valid_out_0 = conv_process_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,19)
    assign out_valid_out_1 = conv_process_B11_branch_out_valid_out_1;

endmodule
