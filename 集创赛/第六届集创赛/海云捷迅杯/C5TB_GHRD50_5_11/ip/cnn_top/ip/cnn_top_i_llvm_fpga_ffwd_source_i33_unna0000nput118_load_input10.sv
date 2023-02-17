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

// SystemVerilog created from cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput118_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput118_load_input10 (
    output wire [0:0] out_valid_out,
    output wire [32:0] out_intel_reserved_ffwd_17_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_predicate_in,
    input wire [32:0] in_src_data_in_17_0,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [32:0] adapt_scalar_trunc4_sel_x_b;
    wire [30:0] c_i31_03_q;
    wire [63:0] element_extension2_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_predicate_in;
    wire i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_predicate_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_valid_in;
    wire i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_valid_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_source_out;


    // dupName_0_sync_out_x(GPOUT,3)@5
    assign out_valid_out = in_valid_in;

    // c_i31_03(CONSTANT,5)
    assign c_i31_03_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension2(BITJOIN,6)@5
    assign element_extension2_q = {c_i31_03_q, in_src_data_in_17_0};

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11(EXTIFACE,7)@5
    assign i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_source_in = element_extension2_q;
    assign i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_valid_in[0];
    acl_ffwdsrc #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .WIDTH(64)
    ) thei_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11 (
        .predicate_in(i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_predicate_in_bitsignaltemp),
        .source_in(element_extension2_q),
        .valid_in(i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_source_out),
        .clock(clock)
    );

    // adapt_scalar_trunc4_sel_x(BITSELECT,2)@20000000
    assign adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input11_source_out[32:0];

    // regfree_osync(GPOUT,8)
    assign out_intel_reserved_ffwd_17_0 = adapt_scalar_trunc4_sel_x_b;

    // sync_out(GPOUT,10)@5
    assign out_stall_out = in_stall_in;

endmodule
