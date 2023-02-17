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

// SystemVerilog created from cnn_top_i_llvm_fpga_ffwd_source_p1027s_c0000ocess1_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_ffwd_source_p1027s_c0000ocess1_conv_process0 (
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_predicate_in,
    input wire [63:0] in_src_data_in_0_0,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_predicate_in;
    wire i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_predicate_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_valid_in;
    wire i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_valid_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_source_out;


    // dupName_0_sync_out_x(GPOUT,2)@2
    assign out_valid_out = in_valid_in;

    // i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1(EXTIFACE,3)
    assign i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_source_in = in_src_data_in_0_0;
    assign i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_valid_in[0];
    acl_ffwdsrc #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .WIDTH(64)
    ) thei_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1 (
        .predicate_in(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_predicate_in_bitsignaltemp),
        .source_in(in_src_data_in_0_0),
        .valid_in(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_source_out),
        .clock(clock)
    );

    // regfree_osync(GPOUT,5)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process1_source_out;

    // sync_out(GPOUT,7)@20000000
    assign out_stall_out = in_stall_in;

endmodule
