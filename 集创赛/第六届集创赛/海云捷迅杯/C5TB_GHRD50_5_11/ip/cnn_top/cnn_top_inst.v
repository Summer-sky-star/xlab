// Example instance of the top level module for: 
//     cnn_top
// To include this component in your design, include: 
//     cnn_top.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

cnn_top cnn_top_inst (
  // Interface: clock (clock end)
  .clock                  ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn                 ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start                  ( ), // 1-bit valid input
  .busy                   ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                   ( ), // 1-bit valid output
  .stall                  ( ), // 1-bit stall input
  // Interface: ddr_in1 (conduit sink)
  .ddr_in1                ( ), // 64-bit data input
  // Interface: ddr_w1 (conduit sink)
  .ddr_w1                 ( ), // 64-bit data input
  // Interface: ddr_out1 (conduit sink)
  .ddr_out1               ( ), // 64-bit data input
  // Interface: param (conduit sink)
  .param                  ( ), // 64-bit data input
  // Interface: ddr_scale (conduit sink)
  .ddr_scale              ( ), // 64-bit data input
  // Interface: avmm_1_rw (avalon start)
  .avmm_1_rw_address      ( ), // 32-bit address output
  .avmm_1_rw_byteenable   ( ), // 16-bit byteenable output
  .avmm_1_rw_readdatavalid( ), // 1-bit readdatavalid input
  .avmm_1_rw_read         ( ), // 1-bit read output
  .avmm_1_rw_readdata     ( ), // 128-bit readdata input
  .avmm_1_rw_write        ( ), // 1-bit write output
  .avmm_1_rw_writedata    ( ), // 128-bit writedata output
  .avmm_1_rw_waitrequest  ( ), // 1-bit waitrequest input
  .avmm_1_rw_burstcount   ( ), // 1-bit burstcount output
  // Interface: avmm_2_rw (avalon start)
  .avmm_2_rw_address      ( ), // 32-bit address output
  .avmm_2_rw_byteenable   ( ), // 16-bit byteenable output
  .avmm_2_rw_readdatavalid( ), // 1-bit readdatavalid input
  .avmm_2_rw_read         ( ), // 1-bit read output
  .avmm_2_rw_readdata     ( ), // 128-bit readdata input
  .avmm_2_rw_write        ( ), // 1-bit write output
  .avmm_2_rw_writedata    ( ), // 128-bit writedata output
  .avmm_2_rw_waitrequest  ( ), // 1-bit waitrequest input
  .avmm_2_rw_burstcount   ( ), // 1-bit burstcount output
  // Interface: avmm_3_rw (avalon start)
  .avmm_3_rw_address      ( ), // 32-bit address output
  .avmm_3_rw_byteenable   ( ), // 4-bit byteenable output
  .avmm_3_rw_readdatavalid( ), // 1-bit readdatavalid input
  .avmm_3_rw_read         ( ), // 1-bit read output
  .avmm_3_rw_readdata     ( ), // 32-bit readdata input
  .avmm_3_rw_write        ( ), // 1-bit write output
  .avmm_3_rw_writedata    ( ), // 32-bit writedata output
  .avmm_3_rw_waitrequest  ( ), // 1-bit waitrequest input
  .avmm_3_rw_burstcount   ( ), // 1-bit burstcount output
  // Interface: avmm_4_rw (avalon start)
  .avmm_4_rw_address      ( ), // 32-bit address output
  .avmm_4_rw_byteenable   ( ), // 4-bit byteenable output
  .avmm_4_rw_readdatavalid( ), // 1-bit readdatavalid input
  .avmm_4_rw_read         ( ), // 1-bit read output
  .avmm_4_rw_readdata     ( ), // 32-bit readdata input
  .avmm_4_rw_write        ( ), // 1-bit write output
  .avmm_4_rw_writedata    ( ), // 32-bit writedata output
  .avmm_4_rw_waitrequest  ( ), // 1-bit waitrequest input
  .avmm_4_rw_burstcount   ( ), // 1-bit burstcount output
  // Interface: avmm_5_rw (avalon start)
  .avmm_5_rw_address      ( ), // 32-bit address output
  .avmm_5_rw_byteenable   ( ), // 4-bit byteenable output
  .avmm_5_rw_readdatavalid( ), // 1-bit readdatavalid input
  .avmm_5_rw_read         ( ), // 1-bit read output
  .avmm_5_rw_readdata     ( ), // 32-bit readdata input
  .avmm_5_rw_write        ( ), // 1-bit write output
  .avmm_5_rw_writedata    ( ), // 32-bit writedata output
  .avmm_5_rw_waitrequest  ( ), // 1-bit waitrequest input
  .avmm_5_rw_burstcount   ( )  // 1-bit burstcount output
);
