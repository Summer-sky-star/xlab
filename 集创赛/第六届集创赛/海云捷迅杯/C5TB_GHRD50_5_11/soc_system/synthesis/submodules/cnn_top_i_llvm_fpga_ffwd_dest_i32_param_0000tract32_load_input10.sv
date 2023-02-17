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

// SystemVerilog created from cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000tract32_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000tract32_load_input10 (
    output wire [31:0] out_dest_data_out_3_0,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_data_in;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_in;
    wire i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_in;
    wire i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_data_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_out;
    wire i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_out;
    wire i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_out_bitsignaltemp;


    // i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11(EXTIFACE,3)@7
    assign i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_data_in = in_intel_reserved_ffwd_3_0;
    assign i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_in[0];
    assign i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_in[0];
    assign i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_out[0] = i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_out[0] = i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_out_bitsignaltemp;
    acl_ffwddst #(
        .MAX_LATENCY(0),
        .MIN_CAPACITY(0),
        .STALL_FREE(1),
        .WIDTH(32)
    ) thei_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11 (
        .data_in(in_intel_reserved_ffwd_3_0),
        .stall_in(i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_data_out),
        .stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_x(GPOUT,2)@7
    assign out_dest_data_out_3_0 = i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_data_out;
    assign out_valid_out = i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_valid_out;

    // sync_out(GPOUT,7)@7
    assign out_stall_out = i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input11_stall_out;

endmodule
