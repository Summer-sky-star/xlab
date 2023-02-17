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

// SystemVerilog created from cnn_top_iowr_bl_acl_c_storage_pipe_V_Pip0001pe_channel_fifo_inst
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_iowr_bl_acl_c_storage_pipe_V_Pip0001pe_channel_fifo_inst (
    input wire [63:0] in_stream_in_data,
    input wire [0:0] in_stream_in_valid,
    input wire [0:0] in_stream_out_almost_full,
    input wire [0:0] in_stream_out_ready,
    output wire [0:0] out_stream_in_ready,
    output wire [63:0] out_stream_out_data,
    output wire [0:0] out_stream_out_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_data;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_empty;
    wire iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_empty_bitsignaltemp;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_endofpacket;
    wire iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_endofpacket_bitsignaltemp;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_startofpacket;
    wire iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_startofpacket_bitsignaltemp;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_valid;
    wire iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_valid_bitsignaltemp;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_almost_full;
    wire iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_almost_full_bitsignaltemp;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_ready;
    wire iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_ready_bitsignaltemp;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_ready;
    wire iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_ready_bitsignaltemp;
    wire [63:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_data;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_valid;
    wire iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_valid_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal(EXTIFACE,8)
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_data = in_stream_in_data;
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_empty = GND_q;
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_endofpacket = GND_q;
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_startofpacket = GND_q;
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_valid = in_stream_in_valid;
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_almost_full = in_stream_out_almost_full;
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_ready = in_stream_out_ready;
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_empty_bitsignaltemp = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_empty[0];
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_endofpacket_bitsignaltemp = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_endofpacket[0];
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_startofpacket_bitsignaltemp = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_startofpacket[0];
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_valid_bitsignaltemp = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_valid[0];
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_almost_full_bitsignaltemp = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_almost_full[0];
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_ready_bitsignaltemp = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_ready[0];
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_ready[0] = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_ready_bitsignaltemp;
    assign iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_valid[0] = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_valid_bitsignaltemp;
    acl_stream_fifo #(
        .BYPASS_ALMOST_FULL(0),
        .FIFO_DEPTH(100),
        .INTER_KERNEL_PIPELINING(1),
        .ALMOST_FULL_VALUE(-1),
        .ASYNC_RESET(1),
        .DATA_W(64),
        .DELAY_READY(0),
        .EMPTY_W(0),
        .STALL_ON_ALMOSTFULL(0),
        .SYNCHRONIZE_RESET(0),
        .USES_PACKETS(0)
    ) theiowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal (
        .stream_in_data(in_stream_in_data),
        .stream_in_empty(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_empty_bitsignaltemp),
        .stream_in_endofpacket(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_endofpacket_bitsignaltemp),
        .stream_in_startofpacket(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_startofpacket_bitsignaltemp),
        .stream_in_valid(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_valid_bitsignaltemp),
        .stream_out_almost_full(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_almost_full_bitsignaltemp),
        .stream_out_ready(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_ready_bitsignaltemp),
        .stream_in_ready(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_ready_bitsignaltemp),
        .stream_out_data(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_data),
        .stream_out_valid(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stream_in_ready(GPOUT,9)
    assign out_stream_in_ready = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_in_ready;

    // out_stream_out_data(GPOUT,10)
    assign out_stream_out_data = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_data;

    // out_stream_out_valid(GPOUT,11)
    assign out_stream_out_valid = iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_internal_stream_out_valid;

endmodule
