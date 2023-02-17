//// (c) 1992-2021 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 


// The HLD compiler uses acl_stream_fifo to connect a write and a read from the
// same HLS stream interface. The user may specify the minimum depth of the
// stream, if using almost full as backpressure the compiler must inflate the
// depth to catch transactions already in flight, and the IP quantizes the depth
// to fully utilize the memory storage of MLAB or M20K.
//
// Unlike acl_channel_fifo for Opencl, HLS streams are used in many places and
// sometimes only have an corresponding iord or only an iowr:
// - to bring data from the outside world into the HLS component (iord only)
// - to send data to the outside world from the HLS component (iowr only)
// - to send data between HLS tasks (with an explicit stream write and stream
//     read, or by using system of tasks)
//
// Looking at iowr->stream->iord as one system, in some cases it is beneficial
// to merge the capacity of the stream fifo into either iord or iowr. In this
// case, acl_stream_fifo acts as wires.

`default_nettype none

module acl_stream_fifo
import hld_memory_depth_quantization_pkg::*;
#(
    //core spec
    parameter int FIFO_DEPTH = 0,               //minimum depth of the fifo, 0 means bypass, note that the fifo depth is inflated to take advantage of all the memory available in mlab or m20k
    parameter int DATA_W = 32,                  //width of the data path excluding side band signals
    parameter int STALL_ON_ALMOSTFULL = 0,      //0 means stream_out_ready comes from fifo full, 1 means stream_out_ready comes from fifo almost full
    parameter int ALMOST_FULL_VALUE = -1,       //-1 means almost full acts as full, otherwise this is the fifo occupancy threshold at which almost_full asserts

    //reset
    parameter bit ASYNC_RESET = 1,              //how do the registers CONSUME reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
    parameter bit SYNCHRONIZE_RESET = 0,        //before consumption, do we SYNCHRONIZE the reset: 1 means use a synchronizer (assume reset arrived asynchronously), 0 means passthrough (assume reset was already synchronized)

    //avalon releated
    parameter int DELAY_READY = 0,              //for avalon streaming ready latency for stream_out
    parameter int USES_PACKETS = 0,             //whether to use the sideband signals startofpacket and endofpacket
    parameter int EMPTY_W = 0,                  //0 means don't use the sideband signal empty, otherwise this indicates the width of the empty signal (Avalon streaming ready, not stall latency empty)

    //consolidation of channel capacity
    parameter bit BYPASS_ALMOST_FULL = 0,       //set to 1 when iord provides the almost full signal for the iowr full detector, this means the stream is bypassed
    parameter int INTER_KERNEL_PIPELINING = 0,  //add pipelining before the fifo to ease placement

    //error correction codes
    parameter     enable_ecc = "FALSE",         //legal values are "FALSE" or "TRUE"

    //derived parameters
    parameter int EMPTY_PORT_WIDTH = (EMPTY_W > 0) ? EMPTY_W : 1

)
(
    input  wire                          clock,
    input  wire                          resetn,

    //all interfaces are stall/valid unless the fifo is depth 0 (but in that case iord and iowr talk to each other directly, so stream doesn't care if handshake is stall latency or not)
    input  wire                          stream_in_valid,
    input  wire             [DATA_W-1:0] stream_in_data,
    output logic                         stream_in_ready,
    input  wire                          stream_in_startofpacket,    // only used if USES_PACKETS == 1
    input  wire                          stream_in_endofpacket,      // only used if USES_PACKETS == 1
    input  wire   [EMPTY_PORT_WIDTH-1:0] stream_in_empty,            // only used if EMPTY_W > 0

    input  wire                          stream_out_almost_full,
    input  wire                          stream_out_ready,
    output logic            [DATA_W-1:0] stream_out_data,
    output logic                         stream_out_valid,
    output logic                         stream_out_startofpacket,  // only used if USES_PACKETS == 1
    output logic                         stream_out_endofpacket,    // only used if USES_PACKETS == 1
    output logic  [EMPTY_PORT_WIDTH-1:0] stream_out_empty,          // only used if EMPTY_W > 0
    output logic                         almost_full,
    output logic  [1:0]                  ecc_err_status  // ecc status signals
);

    ///////////////////////////////////////
    // Parameter checking
    //
    // Generate an error if any illegal parameter settings or combinations are used
    ///////////////////////////////////////
    initial /* synthesis enable_verilog_initial_construct */
    begin
        if (EMPTY_PORT_WIDTH != (EMPTY_W > 0) ? EMPTY_W : 1)
            $fatal(1, "Illegal parameteriazation, EMPTY_PORT_WIDTH must be not be specified when instantiating this module, it must be left at its default value");
    end

    localparam int INTERNAL_DATA_W = DATA_W + (USES_PACKETS ? 2:0) + EMPTY_W;
    localparam int ALMOST_FULL_CUTOFF = (ALMOST_FULL_VALUE == -1) ? 0 : FIFO_DEPTH - ALMOST_FULL_VALUE;

    logic [DATA_W+2+EMPTY_PORT_WIDTH-1:0] fifo_data_in;
    logic [DATA_W+2+EMPTY_PORT_WIDTH-1:0] fifo_data_out;

    assign fifo_data_in = {stream_in_empty, stream_in_startofpacket, stream_in_endofpacket, stream_in_data};
    assign {stream_out_empty, stream_out_startofpacket, stream_out_endofpacket, stream_out_data} = fifo_data_out;


    //reset
    logic aclrn, sclrn, resetn_synchronized;
    acl_reset_handler
    #(
        .ASYNC_RESET            (ASYNC_RESET),
        .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
        .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
        .PIPE_DEPTH             (1),
        .NUM_COPIES             (1)
    )
    acl_reset_handler_inst
    (
        .clk                    (clock),
        .i_resetn               (resetn),
        .o_aclrn                (aclrn),
        .o_resetn_synchronized  (resetn_synchronized),
        .o_sclrn                (sclrn)
    );

    //if ready latency is used on a stream that brings data from the hls component to the testbench,
    //then absorb the latency of the early backpressure
    logic stream_out_ready_delayed;
    generate
    if (DELAY_READY == 0) begin : NO_DELAY_READY
        assign stream_out_ready_delayed = stream_out_ready;
    end
    else begin : GEN_DELAY_READY
        logic [DELAY_READY-1:0] stream_out_ready_pipeline;
        always_ff @(posedge clock or negedge aclrn) begin
            if (~aclrn) begin
                stream_out_ready_pipeline <= '0;
            end
            else begin
                stream_out_ready_pipeline <= (stream_out_ready_pipeline<<1) | stream_out_ready;
                if (~sclrn) stream_out_ready_pipeline <= '0;
            end
        end
        assign stream_out_ready_delayed = stream_out_ready_pipeline[DELAY_READY-1];
    end
    endgenerate


    generate
    if (FIFO_DEPTH == 0) begin : GEN_WIRES
        assign stream_in_ready  = (STALL_ON_ALMOSTFULL) ? ~stream_out_almost_full : stream_out_ready_delayed;
        assign stream_out_valid = stream_in_valid;
        assign fifo_data_out    = fifo_data_in;
        assign almost_full      = (BYPASS_ALMOST_FULL) ? stream_out_almost_full : ~stream_out_ready_delayed;
        assign ecc_err_status   = 2'h0;
    end
    else if (FIFO_DEPTH <= 2) begin : GEN_REG_FIFO
        localparam STYLE = (FIFO_DEPTH == 1) ? "zl" : "ll"; //for high throughput, depth must be strictly larger than latency through the fifo
        logic full;

        hld_fifo
        #(
            .WIDTH                  (INTERNAL_DATA_W),
            .DEPTH                  (FIFO_DEPTH),
            .ALMOST_FULL_CUTOFF     (ALMOST_FULL_CUTOFF),
            .ASYNC_RESET            (ASYNC_RESET),
            .SYNCHRONIZE_RESET      (0),
            .enable_ecc             (enable_ecc),
            .STYLE                  (STYLE)
        )
        fifo
        (
            .clock                  (clock),
            .resetn                 (resetn_synchronized),
            .i_data                 (fifo_data_in[INTERNAL_DATA_W-1:0]),
            .i_valid                (stream_in_valid),
            .o_stall                (full),
            .o_almost_full          (almost_full),
            .o_data                 (fifo_data_out[INTERNAL_DATA_W-1:0]),
            .i_stall                (~stream_out_ready_delayed),
            .o_valid                (stream_out_valid),
            .ecc_err_status         (ecc_err_status)
        );

        assign stream_in_ready = STALL_ON_ALMOSTFULL ? ~almost_full : ~full;
    end
    else begin : GEN_RAM_FIFO   //FIFO_DEPTH >= 3
        localparam int IMPLMENTED_FIFO_DEPTH = quantizeFifoDepthUsingWidth(FIFO_DEPTH, INTERNAL_DATA_W);

        logic incr, decr, full;

        assign incr = stream_in_valid & ((STALL_ON_ALMOSTFULL) ? 1'b1 : stream_in_ready);
        assign decr = stream_out_valid & stream_out_ready_delayed;

        //the inter kernel pipeline stages before hld_fifo as well as hld_fifo itself are treated as one "logical fifo"
        //to generate backpressure for the logical fifo, we must reserve space as soon as data enters the inter kernel pipelining (before it reaches the fifo)
        //as an analogy this is similar to a stall free cluster, space is reserved when an item enters the cluster, not when it arrives at the exit fifo
        acl_tessellated_incr_decr_threshold #(
            .CAPACITY                   (IMPLMENTED_FIFO_DEPTH),
            .THRESHOLD                  (IMPLMENTED_FIFO_DEPTH),
            .THRESHOLD_REACHED_AT_RESET (1),
            .ASYNC_RESET                (ASYNC_RESET),
            .SYNCHRONIZE_RESET          (0)
        )
        full_inst
        (
            .clock                      (clock),
            .resetn                     (resetn_synchronized),
            .incr_no_overflow           (incr),
            .incr_raw                   (incr),
            .decr_no_underflow          (decr),
            .decr_raw                   (decr),
            .threshold_reached          (full)
        );

        if (ALMOST_FULL_CUTOFF == 0) begin
            assign almost_full = full;
        end
        else begin
            acl_tessellated_incr_decr_threshold #(
                .CAPACITY                   (IMPLMENTED_FIFO_DEPTH),
                .THRESHOLD                  (IMPLMENTED_FIFO_DEPTH - ALMOST_FULL_CUTOFF),
                .THRESHOLD_REACHED_AT_RESET (1),
                .ASYNC_RESET                (ASYNC_RESET),
                .SYNCHRONIZE_RESET          (0)
            )
            almost_full_inst
            (
                .clock                      (clock),
                .resetn                     (resetn_synchronized),
                .incr_no_overflow           (incr),
                .incr_raw                   (incr),
                .decr_no_underflow          (decr),
                .decr_raw                   (decr),
                .threshold_reached          (almost_full)
            );
        end

        logic delayed_incr;
        logic [INTERNAL_DATA_W-1:0] delayed_fifo_data_in;
        acl_shift_register_no_reset #(
            .WIDTH      (INTERNAL_DATA_W+1),
            .STAGES     (INTER_KERNEL_PIPELINING)
        )
        delay_write_interface_of_fifo
        (
            .clock      (clock),
            .D          ({fifo_data_in[INTERNAL_DATA_W-1:0], incr}),
            .Q          ({delayed_fifo_data_in, delayed_incr})
        );

        hld_fifo
        #(
            .WIDTH                      (INTERNAL_DATA_W),
            .DEPTH                      (IMPLMENTED_FIFO_DEPTH),
            .ASYNC_RESET                (ASYNC_RESET),
            .SYNCHRONIZE_RESET          (0),
            .USE_STALL_LATENCY_UPSTREAM (1),
            .NEVER_OVERFLOWS            (1),
            .enable_ecc                 (enable_ecc),
            .STYLE                      ("ms")
        )
        fifo
        (
            .clock                      (clock),
            .resetn                     (resetn_synchronized),
            .i_data                     (delayed_fifo_data_in),
            .i_valid                    (delayed_incr),
            .o_data                     (fifo_data_out[INTERNAL_DATA_W-1:0]),
            .i_stall                    (~stream_out_ready_delayed),
            .o_valid                    (stream_out_valid),
            .ecc_err_status             (ecc_err_status)
        );

        assign stream_in_ready = (STALL_ON_ALMOSTFULL) ? ~almost_full : ~full;
    end
    endgenerate

endmodule

`default_nettype wire
