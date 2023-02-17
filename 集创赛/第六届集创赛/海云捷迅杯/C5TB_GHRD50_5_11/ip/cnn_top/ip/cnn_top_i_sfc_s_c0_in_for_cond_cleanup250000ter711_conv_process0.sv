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

// SystemVerilog created from cnn_top_i_sfc_s_c0_in_for_cond_cleanup250000ter711_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_s_c0_in_for_cond_cleanup250000ter711_conv_process0 (
    output wire [0:0] out_c0_exit712_0_tpl,
    output wire [0:0] out_o_valid,
    output wire [31:0] out_intel_reserved_ffwd_65_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_65_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_65_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_2_tpl,
    output wire [0:0] out_intel_reserved_ffwd_60_0,
    output wire [31:0] out_intel_reserved_ffwd_61_0,
    output wire [0:0] out_intel_reserved_ffwd_62_0,
    output wire [0:0] out_intel_reserved_ffwd_63_0,
    output wire [31:0] out_intel_reserved_ffwd_64_0,
    output wire [0:0] out_intel_reserved_ffwd_73_0,
    output wire [32:0] out_intel_reserved_ffwd_74_0,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_conv_process71_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_38_0,
    input wire [31:0] in_intel_reserved_ffwd_39_0,
    input wire [31:0] in_intel_reserved_ffwd_40_0,
    input wire [31:0] in_intel_reserved_ffwd_41_0,
    input wire [31:0] in_intel_reserved_ffwd_42_0,
    input wire [31:0] in_intel_reserved_ffwd_43_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    input wire [31:0] in_intel_reserved_ffwd_47_0,
    input wire [31:0] in_intel_reserved_ffwd_48_0,
    input wire [31:0] in_intel_reserved_ffwd_49_0,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_59_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_59_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_60_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_61_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_62_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_63_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_64_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_73_0;
    wire [32:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_74_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x(BLACKBOX,19)@0
    // out out_intel_reserved_ffwd_65_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_69_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_69_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_69_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_70_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_70_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_70_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_71_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_71_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_71_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_72_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_72_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_72_0_2_tpl@20000000
    // out out_unnamed_conv_process88_0_tpl@7
    // out out_intel_reserved_ffwd_59_0@20000000
    // out out_intel_reserved_ffwd_60_0@20000000
    // out out_intel_reserved_ffwd_61_0@20000000
    // out out_intel_reserved_ffwd_62_0@20000000
    // out out_intel_reserved_ffwd_63_0@20000000
    // out out_intel_reserved_ffwd_64_0@20000000
    // out out_intel_reserved_ffwd_73_0@20000000
    // out out_intel_reserved_ffwd_74_0@20000000
    // out out_o_valid@7
    // out out_unnamed_conv_process19@7
    cnn_top_i_sfc_logic_s_c0_in_for_cond_cle0000ter711_conv_process0 thei_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .out_intel_reserved_ffwd_65_0_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl),
        .out_intel_reserved_ffwd_65_0_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl),
        .out_intel_reserved_ffwd_65_0_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl),
        .out_intel_reserved_ffwd_66_0_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl),
        .out_intel_reserved_ffwd_66_0_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl),
        .out_intel_reserved_ffwd_66_0_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl),
        .out_intel_reserved_ffwd_67_0_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl),
        .out_intel_reserved_ffwd_67_0_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl),
        .out_intel_reserved_ffwd_67_0_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl),
        .out_intel_reserved_ffwd_68_0_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl),
        .out_intel_reserved_ffwd_68_0_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl),
        .out_intel_reserved_ffwd_68_0_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl),
        .out_intel_reserved_ffwd_69_0_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl),
        .out_intel_reserved_ffwd_69_0_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl),
        .out_intel_reserved_ffwd_69_0_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl),
        .out_intel_reserved_ffwd_70_0_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl),
        .out_intel_reserved_ffwd_70_0_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl),
        .out_intel_reserved_ffwd_70_0_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl),
        .out_intel_reserved_ffwd_71_0_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl),
        .out_intel_reserved_ffwd_71_0_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl),
        .out_intel_reserved_ffwd_71_0_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl),
        .out_intel_reserved_ffwd_72_0_0_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl),
        .out_intel_reserved_ffwd_72_0_1_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl),
        .out_intel_reserved_ffwd_72_0_2_tpl(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl),
        .out_unnamed_conv_process88_0_tpl(),
        .out_intel_reserved_ffwd_59_0(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_60_0(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_73_0(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_74_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_o_valid),
        .out_unnamed_conv_process19(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,23)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,22)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x(BLACKBOX,18)@7
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@10
    // out out_stall_entry@20000000
    // out out_valid_out@10
    cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0000xit712_conv_process0 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x (
        .in_data_in_0_tpl(GND_q),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_data_out_0_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@10
    assign out_c0_exit712_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_valid_out;

    // dupName_5_regfree_osync_aunroll_x(GPOUT,3)
    assign out_intel_reserved_ffwd_65_0_0_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl;
    assign out_intel_reserved_ffwd_65_0_1_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl;
    assign out_intel_reserved_ffwd_65_0_2_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl;

    // dupName_6_regfree_osync_aunroll_x(GPOUT,4)
    assign out_intel_reserved_ffwd_66_0_0_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl;
    assign out_intel_reserved_ffwd_66_0_1_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl;
    assign out_intel_reserved_ffwd_66_0_2_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl;

    // dupName_7_regfree_osync_aunroll_x(GPOUT,5)
    assign out_intel_reserved_ffwd_67_0_0_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl;
    assign out_intel_reserved_ffwd_67_0_1_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl;
    assign out_intel_reserved_ffwd_67_0_2_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl;

    // dupName_8_regfree_osync_aunroll_x(GPOUT,6)
    assign out_intel_reserved_ffwd_68_0_0_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl;
    assign out_intel_reserved_ffwd_68_0_1_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl;
    assign out_intel_reserved_ffwd_68_0_2_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl;

    // dupName_9_regfree_osync_aunroll_x(GPOUT,7)
    assign out_intel_reserved_ffwd_69_0_0_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl;
    assign out_intel_reserved_ffwd_69_0_1_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl;
    assign out_intel_reserved_ffwd_69_0_2_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl;

    // dupName_10_regfree_osync_aunroll_x(GPOUT,8)
    assign out_intel_reserved_ffwd_70_0_0_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl;
    assign out_intel_reserved_ffwd_70_0_1_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl;
    assign out_intel_reserved_ffwd_70_0_2_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl;

    // dupName_11_regfree_osync_aunroll_x(GPOUT,9)
    assign out_intel_reserved_ffwd_71_0_0_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl;
    assign out_intel_reserved_ffwd_71_0_1_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl;
    assign out_intel_reserved_ffwd_71_0_2_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl;

    // dupName_12_regfree_osync_aunroll_x(GPOUT,10)
    assign out_intel_reserved_ffwd_72_0_0_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl;
    assign out_intel_reserved_ffwd_72_0_1_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl;
    assign out_intel_reserved_ffwd_72_0_2_tpl = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl;

    // dupName_0_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_60_0 = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_60_0;

    // dupName_1_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_61_0 = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_61_0;

    // dupName_2_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_62_0 = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_62_0;

    // dupName_3_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_63_0 = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_63_0;

    // dupName_4_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_64_0 = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_64_0;

    // dupName_13_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_73_0 = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_73_0;

    // dupName_14_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_74_0 = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_74_0;

    // regfree_osync(GPOUT,58)
    assign out_intel_reserved_ffwd_59_0 = i_sfc_logic_s_c0_in_for_cond_cleanup25_loopexit_conv_processs_c0_enter711_conv_process0_aunroll_x_out_intel_reserved_ffwd_59_0;

    // sync_out(GPOUT,60)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond_cleanup25_loopexit_conv_processs_c0_exit712_conv_process1_aunroll_x_out_stall_entry;

endmodule
