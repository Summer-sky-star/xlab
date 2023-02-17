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

// SystemVerilog created from cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000j22644ck28744ck2675x
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000j22644ck28744ck2675x (
    input wire [31:0] in_0,
    input wire [31:0] in_1,
    output wire [31:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] cstBiasM1_uid7_block_rsrvd_fix_q;
    wire [7:0] expX_uid10_block_rsrvd_fix_b;
    wire [22:0] fracX_uid11_block_rsrvd_fix_b;
    wire [0:0] signX_uid12_block_rsrvd_fix_b;
    wire [7:0] expY_uid13_block_rsrvd_fix_b;
    wire [22:0] fracY_uid14_block_rsrvd_fix_b;
    wire [0:0] signY_uid15_block_rsrvd_fix_b;
    wire [22:0] paddingY_uid16_block_rsrvd_fix_q;
    wire [23:0] updatedY_uid17_block_rsrvd_fix_q;
    wire [23:0] fracYZero_uid16_block_rsrvd_fix_a;
    wire [0:0] fracYZero_uid16_block_rsrvd_fix_qi;
    reg [0:0] fracYZero_uid16_block_rsrvd_fix_q;
    wire [7:0] cstAllOWE_uid19_block_rsrvd_fix_q;
    wire [7:0] cstAllZWE_uid21_block_rsrvd_fix_q;
    wire [0:0] excZ_x_uid24_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid24_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid25_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid25_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid26_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid26_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid27_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid28_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid29_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid30_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid31_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid32_block_rsrvd_fix_q;
    wire [0:0] excZ_y_uid38_block_rsrvd_fix_qi;
    reg [0:0] excZ_y_uid38_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid39_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid39_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid40_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid40_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid41_block_rsrvd_fix_q;
    wire [0:0] excI_y_uid42_block_rsrvd_fix_q;
    wire [0:0] excN_y_uid43_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid44_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid45_block_rsrvd_fix_q;
    wire [0:0] excR_y_uid46_block_rsrvd_fix_q;
    wire [0:0] signR_uid47_block_rsrvd_fix_qi;
    reg [0:0] signR_uid47_block_rsrvd_fix_q;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_a;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_b;
    logic [8:0] expXmY_uid48_block_rsrvd_fix_o;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_q;
    wire [10:0] expR_uid49_block_rsrvd_fix_a;
    wire [10:0] expR_uid49_block_rsrvd_fix_b;
    logic [10:0] expR_uid49_block_rsrvd_fix_o;
    wire [9:0] expR_uid49_block_rsrvd_fix_q;
    wire [8:0] yAddr_uid52_block_rsrvd_fix_b;
    wire [13:0] yPE_uid53_block_rsrvd_fix_b;
    wire [0:0] fracYPostZ_uid57_block_rsrvd_fix_qi;
    reg [0:0] fracYPostZ_uid57_block_rsrvd_fix_q;
    wire [23:0] lOAdded_uid59_block_rsrvd_fix_q;
    wire [1:0] oFracXSE_bottomExtension_uid62_block_rsrvd_fix_q;
    wire [25:0] oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix_q;
    wire [0:0] divValPreNormTrunc_uid67_block_rsrvd_fix_s;
    reg [25:0] divValPreNormTrunc_uid67_block_rsrvd_fix_q;
    wire [0:0] norm_uid68_block_rsrvd_fix_b;
    wire [24:0] divValPreNormHigh_uid69_block_rsrvd_fix_in;
    wire [23:0] divValPreNormHigh_uid69_block_rsrvd_fix_b;
    wire [23:0] divValPreNormLow_uid70_block_rsrvd_fix_in;
    wire [23:0] divValPreNormLow_uid70_block_rsrvd_fix_b;
    wire [0:0] normFracRnd_uid71_block_rsrvd_fix_s;
    reg [23:0] normFracRnd_uid71_block_rsrvd_fix_q;
    wire [33:0] expFracRnd_uid72_block_rsrvd_fix_q;
    wire [24:0] rndOp_uid76_block_rsrvd_fix_q;
    wire [35:0] expFracPostRnd_uid77_block_rsrvd_fix_a;
    wire [35:0] expFracPostRnd_uid77_block_rsrvd_fix_b;
    logic [35:0] expFracPostRnd_uid77_block_rsrvd_fix_o;
    wire [34:0] expFracPostRnd_uid77_block_rsrvd_fix_q;
    wire [23:0] fracRPreExc_uid79_block_rsrvd_fix_in;
    wire [22:0] fracRPreExc_uid79_block_rsrvd_fix_b;
    wire [31:0] excRPreExc_uid80_block_rsrvd_fix_in;
    wire [7:0] excRPreExc_uid80_block_rsrvd_fix_b;
    wire [10:0] expRExt_uid81_block_rsrvd_fix_b;
    wire [12:0] expUdf_uid82_block_rsrvd_fix_a;
    wire [12:0] expUdf_uid82_block_rsrvd_fix_b;
    logic [12:0] expUdf_uid82_block_rsrvd_fix_o;
    wire [0:0] expUdf_uid82_block_rsrvd_fix_n;
    wire [12:0] expOvf_uid85_block_rsrvd_fix_a;
    wire [12:0] expOvf_uid85_block_rsrvd_fix_b;
    logic [12:0] expOvf_uid85_block_rsrvd_fix_o;
    wire [0:0] expOvf_uid85_block_rsrvd_fix_n;
    wire [0:0] zeroOverReg_uid86_block_rsrvd_fix_qi;
    reg [0:0] zeroOverReg_uid86_block_rsrvd_fix_q;
    wire [0:0] regOverRegWithUf_uid87_block_rsrvd_fix_qi;
    reg [0:0] regOverRegWithUf_uid87_block_rsrvd_fix_q;
    wire [0:0] xRegOrZero_uid88_block_rsrvd_fix_q;
    wire [0:0] regOrZeroOverInf_uid89_block_rsrvd_fix_qi;
    reg [0:0] regOrZeroOverInf_uid89_block_rsrvd_fix_q;
    wire [0:0] excRZero_uid90_block_rsrvd_fix_q;
    wire [0:0] excXRYZ_uid91_block_rsrvd_fix_qi;
    reg [0:0] excXRYZ_uid91_block_rsrvd_fix_q;
    wire [0:0] excXRYROvf_uid92_block_rsrvd_fix_qi;
    reg [0:0] excXRYROvf_uid92_block_rsrvd_fix_q;
    wire [0:0] excXIYZ_uid93_block_rsrvd_fix_qi;
    reg [0:0] excXIYZ_uid93_block_rsrvd_fix_q;
    wire [0:0] excXIYR_uid94_block_rsrvd_fix_qi;
    reg [0:0] excXIYR_uid94_block_rsrvd_fix_q;
    wire [0:0] excRInf_uid95_block_rsrvd_fix_q;
    wire [0:0] excXZYZ_uid96_block_rsrvd_fix_q;
    wire [0:0] excXIYI_uid97_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid98_block_rsrvd_fix_qi;
    reg [0:0] excRNaN_uid98_block_rsrvd_fix_q;
    wire [2:0] concExc_uid99_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid100_block_rsrvd_fix_q;
    wire [22:0] oneFracRPostExc2_uid101_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid104_block_rsrvd_fix_s;
    reg [22:0] fracRPostExc_uid104_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid108_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid108_block_rsrvd_fix_q;
    wire [0:0] invExcRNaN_uid109_block_rsrvd_fix_q;
    wire [0:0] sRPostExc_uid110_block_rsrvd_fix_q;
    wire [31:0] divR_uid111_block_rsrvd_fix_q;
    wire [30:0] os_uid115_invTables_q;
    wire [20:0] os_uid119_invTables_q;
    wire [11:0] yT1_uid127_invPolyEval_b;
    wire [0:0] lowRangeB_uid129_invPolyEval_in;
    wire [0:0] lowRangeB_uid129_invPolyEval_b;
    wire [11:0] highBBits_uid130_invPolyEval_b;
    wire [21:0] s1sumAHighB_uid131_invPolyEval_a;
    wire [21:0] s1sumAHighB_uid131_invPolyEval_b;
    logic [21:0] s1sumAHighB_uid131_invPolyEval_o;
    wire [21:0] s1sumAHighB_uid131_invPolyEval_q;
    wire [22:0] s1_uid132_invPolyEval_q;
    wire [1:0] lowRangeB_uid135_invPolyEval_in;
    wire [1:0] lowRangeB_uid135_invPolyEval_b;
    wire [21:0] highBBits_uid136_invPolyEval_b;
    wire [31:0] s2sumAHighB_uid137_invPolyEval_a;
    wire [31:0] s2sumAHighB_uid137_invPolyEval_b;
    logic [31:0] s2sumAHighB_uid137_invPolyEval_o;
    wire [31:0] s2sumAHighB_uid137_invPolyEval_q;
    wire [33:0] s2_uid138_invPolyEval_q;
    wire [25:0] osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b;
    wire [12:0] osig_uid144_pT1_uid128_invPolyEval_b;
    wire [23:0] osig_uid147_pT2_uid134_invPolyEval_b;
    wire [0:0] memoryC1_uid118_invTables_q_const_q;
    wire memoryC0_uid113_invTables_lutmem_reset0;
    wire [19:0] memoryC0_uid113_invTables_lutmem_ia;
    wire [8:0] memoryC0_uid113_invTables_lutmem_aa;
    wire [8:0] memoryC0_uid113_invTables_lutmem_ab;
    wire [19:0] memoryC0_uid113_invTables_lutmem_ir;
    wire [19:0] memoryC0_uid113_invTables_lutmem_r;
    wire memoryC0_uid114_invTables_lutmem_reset0;
    wire [10:0] memoryC0_uid114_invTables_lutmem_ia;
    wire [8:0] memoryC0_uid114_invTables_lutmem_aa;
    wire [8:0] memoryC0_uid114_invTables_lutmem_ab;
    wire [10:0] memoryC0_uid114_invTables_lutmem_ir;
    wire [10:0] memoryC0_uid114_invTables_lutmem_r;
    wire memoryC1_uid117_invTables_lutmem_reset0;
    wire [19:0] memoryC1_uid117_invTables_lutmem_ia;
    wire [8:0] memoryC1_uid117_invTables_lutmem_aa;
    wire [8:0] memoryC1_uid117_invTables_lutmem_ab;
    wire [19:0] memoryC1_uid117_invTables_lutmem_ir;
    wire [19:0] memoryC1_uid117_invTables_lutmem_r;
    wire memoryC2_uid121_invTables_lutmem_reset0;
    wire [11:0] memoryC2_uid121_invTables_lutmem_ia;
    wire [8:0] memoryC2_uid121_invTables_lutmem_aa;
    wire [8:0] memoryC2_uid121_invTables_lutmem_ab;
    wire [11:0] memoryC2_uid121_invTables_lutmem_ir;
    wire [11:0] memoryC2_uid121_invTables_lutmem_r;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_reset;
    (* preserve *) reg [25:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_a0 [0:0];
    (* preserve *) reg [23:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_c0 [0:0];
    wire [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_p [0:0];
    wire [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_u [0:0];
    wire [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_w [0:0];
    wire [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_x [0:0];
    wire [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_y [0:0];
    reg [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_s [0:0];
    wire [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_qq;
    wire [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_q;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_ena0;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_ena1;
    wire prodXY_uid143_pT1_uid128_invPolyEval_cma_reset;
    (* preserve *) reg [11:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [11:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_c0 [0:0];
    wire signed [12:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_l [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_p [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_u [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_w [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_x [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_y [0:0];
    reg signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_s [0:0];
    wire [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_qq;
    wire [23:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_q;
    wire prodXY_uid143_pT1_uid128_invPolyEval_cma_ena0;
    wire prodXY_uid143_pT1_uid128_invPolyEval_cma_ena1;
    wire prodXY_uid146_pT2_uid134_invPolyEval_cma_reset;
    (* preserve *) reg [13:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [22:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_c0 [0:0];
    wire signed [14:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_l [0:0];
    wire signed [37:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_p [0:0];
    wire signed [37:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_u [0:0];
    wire signed [37:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_w [0:0];
    wire signed [37:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_x [0:0];
    wire signed [37:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_y [0:0];
    reg signed [37:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_s [0:0];
    wire [37:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_qq;
    wire [36:0] prodXY_uid146_pT2_uid134_invPolyEval_cma_q;
    wire prodXY_uid146_pT2_uid134_invPolyEval_cma_ena0;
    wire prodXY_uid146_pT2_uid134_invPolyEval_cma_ena1;
    wire [31:0] invY_uid55_block_rsrvd_fix_merged_bit_select_in;
    wire [25:0] invY_uid55_block_rsrvd_fix_merged_bit_select_b;
    wire [0:0] invY_uid55_block_rsrvd_fix_merged_bit_select_c;
    reg [25:0] redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [0:0] redist1_lowRangeB_uid129_invPolyEval_b_1_q;
    reg [7:0] redist2_excRPreExc_uid80_block_rsrvd_fix_b_1_q;
    reg [22:0] redist3_fracRPreExc_uid79_block_rsrvd_fix_b_1_q;
    reg [0:0] redist4_norm_uid68_block_rsrvd_fix_b_1_q;
    reg [23:0] redist5_lOAdded_uid59_block_rsrvd_fix_q_2_q;
    reg [23:0] redist5_lOAdded_uid59_block_rsrvd_fix_q_2_delay_0;
    reg [0:0] redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3_q;
    reg [0:0] redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3_delay_0;
    reg [13:0] redist7_yPE_uid53_block_rsrvd_fix_b_2_q;
    reg [13:0] redist7_yPE_uid53_block_rsrvd_fix_b_2_delay_0;
    reg [13:0] redist8_yPE_uid53_block_rsrvd_fix_b_5_q;
    reg [13:0] redist8_yPE_uid53_block_rsrvd_fix_b_5_delay_0;
    reg [13:0] redist8_yPE_uid53_block_rsrvd_fix_b_5_delay_1;
    reg [8:0] redist9_yAddr_uid52_block_rsrvd_fix_b_2_q;
    reg [8:0] redist9_yAddr_uid52_block_rsrvd_fix_b_2_delay_0;
    reg [8:0] redist10_yAddr_uid52_block_rsrvd_fix_b_5_q;
    reg [8:0] redist10_yAddr_uid52_block_rsrvd_fix_b_5_delay_0;
    reg [8:0] redist10_yAddr_uid52_block_rsrvd_fix_b_5_delay_1;
    reg [8:0] redist11_expXmY_uid48_block_rsrvd_fix_q_2_q;
    reg [0:0] redist12_signR_uid47_block_rsrvd_fix_q_5_q;
    reg [0:0] redist12_signR_uid47_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist12_signR_uid47_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist12_signR_uid47_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist13_fracXIsZero_uid40_block_rsrvd_fix_q_12_q;
    reg [0:0] redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_q;
    reg [0:0] redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist15_excZ_y_uid38_block_rsrvd_fix_q_4_q;
    reg [0:0] redist15_excZ_y_uid38_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist15_excZ_y_uid38_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_q;
    reg [0:0] redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_q;
    reg [0:0] redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist18_excZ_x_uid24_block_rsrvd_fix_q_4_q;
    reg [0:0] redist18_excZ_x_uid24_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist18_excZ_x_uid24_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist19_fracYZero_uid16_block_rsrvd_fix_q_7_q;
    reg [0:0] redist20_signY_uid15_block_rsrvd_fix_b_8_q;
    reg [7:0] redist21_expY_uid13_block_rsrvd_fix_b_8_outputreg0_q;
    wire redist21_expY_uid13_block_rsrvd_fix_b_8_mem_reset0;
    wire [7:0] redist21_expY_uid13_block_rsrvd_fix_b_8_mem_ia;
    wire [2:0] redist21_expY_uid13_block_rsrvd_fix_b_8_mem_aa;
    wire [2:0] redist21_expY_uid13_block_rsrvd_fix_b_8_mem_ab;
    wire [7:0] redist21_expY_uid13_block_rsrvd_fix_b_8_mem_iq;
    wire [7:0] redist21_expY_uid13_block_rsrvd_fix_b_8_mem_q;
    wire [2:0] redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q;
    (* preserve *) reg [2:0] redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i;
    (* preserve *) reg redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq;
    reg [2:0] redist21_expY_uid13_block_rsrvd_fix_b_8_wraddr_q;
    wire [3:0] redist21_expY_uid13_block_rsrvd_fix_b_8_mem_last_q;
    wire [3:0] redist21_expY_uid13_block_rsrvd_fix_b_8_cmp_b;
    wire [0:0] redist21_expY_uid13_block_rsrvd_fix_b_8_cmp_q;
    (* dont_merge *) reg [0:0] redist21_expY_uid13_block_rsrvd_fix_b_8_cmpReg_q;
    wire [0:0] redist21_expY_uid13_block_rsrvd_fix_b_8_notEnable_q;
    wire [0:0] redist21_expY_uid13_block_rsrvd_fix_b_8_nor_q;
    (* dont_merge *) reg [0:0] redist21_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q;
    wire [0:0] redist21_expY_uid13_block_rsrvd_fix_b_8_enaAnd_q;


    // fracY_uid14_block_rsrvd_fix(BITSELECT,13)@0
    assign fracY_uid14_block_rsrvd_fix_b = in_1[22:0];

    // paddingY_uid16_block_rsrvd_fix(CONSTANT,15)
    assign paddingY_uid16_block_rsrvd_fix_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid40_block_rsrvd_fix(LOGICAL,39)@0 + 1
    assign fracXIsZero_uid40_block_rsrvd_fix_qi = $unsigned(paddingY_uid16_block_rsrvd_fix_q == fracY_uid14_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid40_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid40_block_rsrvd_fix_qi), .xout(fracXIsZero_uid40_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_fracXIsZero_uid40_block_rsrvd_fix_q_12(DELAY,170)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_fracXIsZero_uid40_block_rsrvd_fix_q_12 ( .xin(fracXIsZero_uid40_block_rsrvd_fix_q), .xout(redist13_fracXIsZero_uid40_block_rsrvd_fix_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    assign cstAllOWE_uid19_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // redist21_expY_uid13_block_rsrvd_fix_b_8_notEnable(LOGICAL,186)
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_expY_uid13_block_rsrvd_fix_b_8_nor(LOGICAL,187)
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_nor_q = ~ (redist21_expY_uid13_block_rsrvd_fix_b_8_notEnable_q | redist21_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q);

    // redist21_expY_uid13_block_rsrvd_fix_b_8_mem_last(CONSTANT,183)
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_mem_last_q = $unsigned(4'b0100);

    // redist21_expY_uid13_block_rsrvd_fix_b_8_cmp(LOGICAL,184)
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_cmp_b = {1'b0, redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q};
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_cmp_q = $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_mem_last_q == redist21_expY_uid13_block_rsrvd_fix_b_8_cmp_b ? 1'b1 : 1'b0);

    // redist21_expY_uid13_block_rsrvd_fix_b_8_cmpReg(REG,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_cmpReg_q <= $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_cmp_q);
        end
    end

    // redist21_expY_uid13_block_rsrvd_fix_b_8_sticky_ena(REG,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_expY_uid13_block_rsrvd_fix_b_8_nor_q == 1'b1)
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q <= $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_cmpReg_q);
        end
    end

    // redist21_expY_uid13_block_rsrvd_fix_b_8_enaAnd(LOGICAL,189)
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_enaAnd_q = redist21_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q & VCC_q;

    // redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt(COUNTER,181)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i <= 3'd0;
            redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i == 3'd4)
            begin
                redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq <= 1'b0;
            end
            if (redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq == 1'b1)
            begin
                redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i <= $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i <= $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q = redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i[2:0];

    // expY_uid13_block_rsrvd_fix(BITSELECT,12)@0
    assign expY_uid13_block_rsrvd_fix_b = in_1[30:23];

    // redist21_expY_uid13_block_rsrvd_fix_b_8_wraddr(REG,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_wraddr_q <= $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q);
        end
    end

    // redist21_expY_uid13_block_rsrvd_fix_b_8_mem(DUALMEM,180)
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_mem_ia = $unsigned(expY_uid13_block_rsrvd_fix_b);
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_mem_aa = redist21_expY_uid13_block_rsrvd_fix_b_8_wraddr_q;
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_mem_ab = redist21_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q;
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist21_expY_uid13_block_rsrvd_fix_b_8_mem_dmem (
        .clocken1(redist21_expY_uid13_block_rsrvd_fix_b_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_expY_uid13_block_rsrvd_fix_b_8_mem_reset0),
        .clock1(clock),
        .address_a(redist21_expY_uid13_block_rsrvd_fix_b_8_mem_aa),
        .data_a(redist21_expY_uid13_block_rsrvd_fix_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_expY_uid13_block_rsrvd_fix_b_8_mem_ab),
        .q_b(redist21_expY_uid13_block_rsrvd_fix_b_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist21_expY_uid13_block_rsrvd_fix_b_8_mem_q = redist21_expY_uid13_block_rsrvd_fix_b_8_mem_iq[7:0];

    // redist21_expY_uid13_block_rsrvd_fix_b_8_outputreg0(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_outputreg0_q <= '0;
        end
        else
        begin
            redist21_expY_uid13_block_rsrvd_fix_b_8_outputreg0_q <= $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_mem_q);
        end
    end

    // expXIsMax_uid39_block_rsrvd_fix(LOGICAL,38)@8 + 1
    assign expXIsMax_uid39_block_rsrvd_fix_qi = $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_outputreg0_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid39_block_rsrvd_fix_delay ( .xin(expXIsMax_uid39_block_rsrvd_fix_qi), .xout(expXIsMax_uid39_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_expXIsMax_uid39_block_rsrvd_fix_q_4(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_delay_0 <= $unsigned(expXIsMax_uid39_block_rsrvd_fix_q);
            redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_delay_1 <= redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_delay_0;
            redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_q <= redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // excI_y_uid42_block_rsrvd_fix(LOGICAL,41)@12
    assign excI_y_uid42_block_rsrvd_fix_q = redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_q & redist13_fracXIsZero_uid40_block_rsrvd_fix_q_12_q;

    // fracX_uid11_block_rsrvd_fix(BITSELECT,10)@8
    assign fracX_uid11_block_rsrvd_fix_b = in_0[22:0];

    // fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@8 + 1
    assign fracXIsZero_uid26_block_rsrvd_fix_qi = $unsigned(paddingY_uid16_block_rsrvd_fix_q == fracX_uid11_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid26_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid26_block_rsrvd_fix_qi), .xout(fracXIsZero_uid26_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_delay_0 <= $unsigned(fracXIsZero_uid26_block_rsrvd_fix_q);
            redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_delay_1 <= redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_delay_0;
            redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_q <= redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // expX_uid10_block_rsrvd_fix(BITSELECT,9)@8
    assign expX_uid10_block_rsrvd_fix_b = in_0[30:23];

    // expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@8 + 1
    assign expXIsMax_uid25_block_rsrvd_fix_qi = $unsigned(expX_uid10_block_rsrvd_fix_b == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid25_block_rsrvd_fix_delay ( .xin(expXIsMax_uid25_block_rsrvd_fix_qi), .xout(expXIsMax_uid25_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_expXIsMax_uid25_block_rsrvd_fix_q_4(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_delay_0 <= $unsigned(expXIsMax_uid25_block_rsrvd_fix_q);
            redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_delay_1 <= redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_delay_0;
            redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_q <= redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // excI_x_uid28_block_rsrvd_fix(LOGICAL,27)@12
    assign excI_x_uid28_block_rsrvd_fix_q = redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_q & redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_q;

    // excXIYI_uid97_block_rsrvd_fix(LOGICAL,96)@12
    assign excXIYI_uid97_block_rsrvd_fix_q = excI_x_uid28_block_rsrvd_fix_q & excI_y_uid42_block_rsrvd_fix_q;

    // fracXIsNotZero_uid41_block_rsrvd_fix(LOGICAL,40)@12
    assign fracXIsNotZero_uid41_block_rsrvd_fix_q = ~ (redist13_fracXIsZero_uid40_block_rsrvd_fix_q_12_q);

    // excN_y_uid43_block_rsrvd_fix(LOGICAL,42)@12
    assign excN_y_uid43_block_rsrvd_fix_q = redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_q & fracXIsNotZero_uid41_block_rsrvd_fix_q;

    // fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@12
    assign fracXIsNotZero_uid27_block_rsrvd_fix_q = ~ (redist16_fracXIsZero_uid26_block_rsrvd_fix_q_4_q);

    // excN_x_uid29_block_rsrvd_fix(LOGICAL,28)@12
    assign excN_x_uid29_block_rsrvd_fix_q = redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_q & fracXIsNotZero_uid27_block_rsrvd_fix_q;

    // cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    assign cstAllZWE_uid21_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // excZ_y_uid38_block_rsrvd_fix(LOGICAL,37)@8 + 1
    assign excZ_y_uid38_block_rsrvd_fix_qi = $unsigned(redist21_expY_uid13_block_rsrvd_fix_b_8_outputreg0_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid38_block_rsrvd_fix_delay ( .xin(excZ_y_uid38_block_rsrvd_fix_qi), .xout(excZ_y_uid38_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_excZ_y_uid38_block_rsrvd_fix_q_4(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_excZ_y_uid38_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist15_excZ_y_uid38_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist15_excZ_y_uid38_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist15_excZ_y_uid38_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excZ_y_uid38_block_rsrvd_fix_q);
            redist15_excZ_y_uid38_block_rsrvd_fix_q_4_delay_1 <= redist15_excZ_y_uid38_block_rsrvd_fix_q_4_delay_0;
            redist15_excZ_y_uid38_block_rsrvd_fix_q_4_q <= redist15_excZ_y_uid38_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // excZ_x_uid24_block_rsrvd_fix(LOGICAL,23)@8 + 1
    assign excZ_x_uid24_block_rsrvd_fix_qi = $unsigned(expX_uid10_block_rsrvd_fix_b == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid24_block_rsrvd_fix_delay ( .xin(excZ_x_uid24_block_rsrvd_fix_qi), .xout(excZ_x_uid24_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_excZ_x_uid24_block_rsrvd_fix_q_4(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_excZ_x_uid24_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist18_excZ_x_uid24_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist18_excZ_x_uid24_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist18_excZ_x_uid24_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excZ_x_uid24_block_rsrvd_fix_q);
            redist18_excZ_x_uid24_block_rsrvd_fix_q_4_delay_1 <= redist18_excZ_x_uid24_block_rsrvd_fix_q_4_delay_0;
            redist18_excZ_x_uid24_block_rsrvd_fix_q_4_q <= redist18_excZ_x_uid24_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // excXZYZ_uid96_block_rsrvd_fix(LOGICAL,95)@12
    assign excXZYZ_uid96_block_rsrvd_fix_q = redist18_excZ_x_uid24_block_rsrvd_fix_q_4_q & redist15_excZ_y_uid38_block_rsrvd_fix_q_4_q;

    // excRNaN_uid98_block_rsrvd_fix(LOGICAL,97)@12 + 1
    assign excRNaN_uid98_block_rsrvd_fix_qi = excXZYZ_uid96_block_rsrvd_fix_q | excN_x_uid29_block_rsrvd_fix_q | excN_y_uid43_block_rsrvd_fix_q | excXIYI_uid97_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRNaN_uid98_block_rsrvd_fix_delay ( .xin(excRNaN_uid98_block_rsrvd_fix_qi), .xout(excRNaN_uid98_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcRNaN_uid109_block_rsrvd_fix(LOGICAL,108)@13
    assign invExcRNaN_uid109_block_rsrvd_fix_q = ~ (excRNaN_uid98_block_rsrvd_fix_q);

    // signY_uid15_block_rsrvd_fix(BITSELECT,14)@0
    assign signY_uid15_block_rsrvd_fix_b = $unsigned(in_1[31:31]);

    // redist20_signY_uid15_block_rsrvd_fix_b_8(DELAY,177)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_signY_uid15_block_rsrvd_fix_b_8 ( .xin(signY_uid15_block_rsrvd_fix_b), .xout(redist20_signY_uid15_block_rsrvd_fix_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signX_uid12_block_rsrvd_fix(BITSELECT,11)@8
    assign signX_uid12_block_rsrvd_fix_b = $unsigned(in_0[31:31]);

    // signR_uid47_block_rsrvd_fix(LOGICAL,46)@8 + 1
    assign signR_uid47_block_rsrvd_fix_qi = signX_uid12_block_rsrvd_fix_b ^ redist20_signY_uid15_block_rsrvd_fix_b_8_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signR_uid47_block_rsrvd_fix_delay ( .xin(signR_uid47_block_rsrvd_fix_qi), .xout(signR_uid47_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_signR_uid47_block_rsrvd_fix_q_5(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_signR_uid47_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist12_signR_uid47_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist12_signR_uid47_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist12_signR_uid47_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist12_signR_uid47_block_rsrvd_fix_q_5_delay_0 <= $unsigned(signR_uid47_block_rsrvd_fix_q);
            redist12_signR_uid47_block_rsrvd_fix_q_5_delay_1 <= redist12_signR_uid47_block_rsrvd_fix_q_5_delay_0;
            redist12_signR_uid47_block_rsrvd_fix_q_5_delay_2 <= redist12_signR_uid47_block_rsrvd_fix_q_5_delay_1;
            redist12_signR_uid47_block_rsrvd_fix_q_5_q <= redist12_signR_uid47_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // sRPostExc_uid110_block_rsrvd_fix(LOGICAL,109)@13
    assign sRPostExc_uid110_block_rsrvd_fix_q = redist12_signR_uid47_block_rsrvd_fix_q_5_q & invExcRNaN_uid109_block_rsrvd_fix_q;

    // lOAdded_uid59_block_rsrvd_fix(BITJOIN,58)@8
    assign lOAdded_uid59_block_rsrvd_fix_q = {VCC_q, fracX_uid11_block_rsrvd_fix_b};

    // redist5_lOAdded_uid59_block_rsrvd_fix_q_2(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_lOAdded_uid59_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist5_lOAdded_uid59_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist5_lOAdded_uid59_block_rsrvd_fix_q_2_delay_0 <= $unsigned(lOAdded_uid59_block_rsrvd_fix_q);
            redist5_lOAdded_uid59_block_rsrvd_fix_q_2_q <= redist5_lOAdded_uid59_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // oFracXSE_bottomExtension_uid62_block_rsrvd_fix(CONSTANT,61)
    assign oFracXSE_bottomExtension_uid62_block_rsrvd_fix_q = $unsigned(2'b00);

    // oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix(BITJOIN,63)@10
    assign oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix_q = {redist5_lOAdded_uid59_block_rsrvd_fix_q_2_q, oFracXSE_bottomExtension_uid62_block_rsrvd_fix_q};

    // yAddr_uid52_block_rsrvd_fix(BITSELECT,51)@0
    assign yAddr_uid52_block_rsrvd_fix_b = fracY_uid14_block_rsrvd_fix_b[22:14];

    // memoryC2_uid121_invTables_lutmem(DUALMEM,152)@0 + 2
    // in j@20000000
    assign memoryC2_uid121_invTables_lutmem_aa = yAddr_uid52_block_rsrvd_fix_b;
    assign memoryC2_uid121_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(12),
        .widthad_a(9),
        .numwords_a(512),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000121_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC2_uid121_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid121_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid121_invTables_lutmem_aa),
        .q_a(memoryC2_uid121_invTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC2_uid121_invTables_lutmem_r = memoryC2_uid121_invTables_lutmem_ir[11:0];

    // yPE_uid53_block_rsrvd_fix(BITSELECT,52)@0
    assign yPE_uid53_block_rsrvd_fix_b = in_1[13:0];

    // redist7_yPE_uid53_block_rsrvd_fix_b_2(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yPE_uid53_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist7_yPE_uid53_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist7_yPE_uid53_block_rsrvd_fix_b_2_delay_0 <= $unsigned(yPE_uid53_block_rsrvd_fix_b);
            redist7_yPE_uid53_block_rsrvd_fix_b_2_q <= redist7_yPE_uid53_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // yT1_uid127_invPolyEval(BITSELECT,126)@2
    assign yT1_uid127_invPolyEval_b = redist7_yPE_uid53_block_rsrvd_fix_b_2_q[13:2];

    // prodXY_uid143_pT1_uid128_invPolyEval_cma(CHAINMULTADD,154)@2 + 2
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_ena1 = prodXY_uid143_pT1_uid128_invPolyEval_cma_ena0;
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid143_pT1_uid128_invPolyEval_cma_a0[0][11:0]});
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_p[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_l[0] * prodXY_uid143_pT1_uid128_invPolyEval_cma_c0[0];
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_u[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_p[0][24:0];
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_w[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_u[0];
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_x[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_w[0];
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_y[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid143_pT1_uid128_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid143_pT1_uid128_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid143_pT1_uid128_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid143_pT1_uid128_invPolyEval_cma_a0[0] <= yT1_uid127_invPolyEval_b;
                prodXY_uid143_pT1_uid128_invPolyEval_cma_c0[0] <= memoryC2_uid121_invTables_lutmem_r;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid143_pT1_uid128_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid143_pT1_uid128_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid143_pT1_uid128_invPolyEval_cma_s[0] <= prodXY_uid143_pT1_uid128_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(25), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid143_pT1_uid128_invPolyEval_cma_delay ( .xin(prodXY_uid143_pT1_uid128_invPolyEval_cma_s[0]), .xout(prodXY_uid143_pT1_uid128_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_q = $unsigned(prodXY_uid143_pT1_uid128_invPolyEval_cma_qq[23:0]);

    // osig_uid144_pT1_uid128_invPolyEval(BITSELECT,143)@4
    assign osig_uid144_pT1_uid128_invPolyEval_b = $unsigned(prodXY_uid143_pT1_uid128_invPolyEval_cma_q[23:11]);

    // highBBits_uid130_invPolyEval(BITSELECT,129)@4
    assign highBBits_uid130_invPolyEval_b = $unsigned(osig_uid144_pT1_uid128_invPolyEval_b[12:1]);

    // memoryC1_uid118_invTables_q_const(CONSTANT,148)
    assign memoryC1_uid118_invTables_q_const_q = $unsigned(1'b1);

    // redist9_yAddr_uid52_block_rsrvd_fix_b_2(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_yAddr_uid52_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist9_yAddr_uid52_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist9_yAddr_uid52_block_rsrvd_fix_b_2_delay_0 <= $unsigned(yAddr_uid52_block_rsrvd_fix_b);
            redist9_yAddr_uid52_block_rsrvd_fix_b_2_q <= redist9_yAddr_uid52_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // memoryC1_uid117_invTables_lutmem(DUALMEM,151)@2 + 2
    // in j@20000000
    assign memoryC1_uid117_invTables_lutmem_aa = redist9_yAddr_uid52_block_rsrvd_fix_b_2_q;
    assign memoryC1_uid117_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(9),
        .numwords_a(512),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000117_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC1_uid117_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid117_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid117_invTables_lutmem_aa),
        .q_a(memoryC1_uid117_invTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid117_invTables_lutmem_r = memoryC1_uid117_invTables_lutmem_ir[19:0];

    // os_uid119_invTables(BITJOIN,118)@4
    assign os_uid119_invTables_q = {memoryC1_uid118_invTables_q_const_q, memoryC1_uid117_invTables_lutmem_r};

    // s1sumAHighB_uid131_invPolyEval(ADD,130)@4 + 1
    assign s1sumAHighB_uid131_invPolyEval_a = $unsigned({{1{os_uid119_invTables_q[20]}}, os_uid119_invTables_q});
    assign s1sumAHighB_uid131_invPolyEval_b = $unsigned({{10{highBBits_uid130_invPolyEval_b[11]}}, highBBits_uid130_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid131_invPolyEval_o <= 22'b0;
        end
        else
        begin
            s1sumAHighB_uid131_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid131_invPolyEval_a) + $signed(s1sumAHighB_uid131_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid131_invPolyEval_q = s1sumAHighB_uid131_invPolyEval_o[21:0];

    // lowRangeB_uid129_invPolyEval(BITSELECT,128)@4
    assign lowRangeB_uid129_invPolyEval_in = osig_uid144_pT1_uid128_invPolyEval_b[0:0];
    assign lowRangeB_uid129_invPolyEval_b = lowRangeB_uid129_invPolyEval_in[0:0];

    // redist1_lowRangeB_uid129_invPolyEval_b_1(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_lowRangeB_uid129_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist1_lowRangeB_uid129_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid129_invPolyEval_b);
        end
    end

    // s1_uid132_invPolyEval(BITJOIN,131)@5
    assign s1_uid132_invPolyEval_q = {s1sumAHighB_uid131_invPolyEval_q, redist1_lowRangeB_uid129_invPolyEval_b_1_q};

    // redist8_yPE_uid53_block_rsrvd_fix_b_5(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yPE_uid53_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist8_yPE_uid53_block_rsrvd_fix_b_5_delay_1 <= '0;
            redist8_yPE_uid53_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist8_yPE_uid53_block_rsrvd_fix_b_5_delay_0 <= $unsigned(redist7_yPE_uid53_block_rsrvd_fix_b_2_q);
            redist8_yPE_uid53_block_rsrvd_fix_b_5_delay_1 <= redist8_yPE_uid53_block_rsrvd_fix_b_5_delay_0;
            redist8_yPE_uid53_block_rsrvd_fix_b_5_q <= redist8_yPE_uid53_block_rsrvd_fix_b_5_delay_1;
        end
    end

    // prodXY_uid146_pT2_uid134_invPolyEval_cma(CHAINMULTADD,155)@5 + 2
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_ena1 = prodXY_uid146_pT2_uid134_invPolyEval_cma_ena0;
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid146_pT2_uid134_invPolyEval_cma_a0[0][13:0]});
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_p[0] = prodXY_uid146_pT2_uid134_invPolyEval_cma_l[0] * prodXY_uid146_pT2_uid134_invPolyEval_cma_c0[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_u[0] = prodXY_uid146_pT2_uid134_invPolyEval_cma_p[0][37:0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_w[0] = prodXY_uid146_pT2_uid134_invPolyEval_cma_u[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_x[0] = prodXY_uid146_pT2_uid134_invPolyEval_cma_w[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_y[0] = prodXY_uid146_pT2_uid134_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid146_pT2_uid134_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid146_pT2_uid134_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid146_pT2_uid134_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid146_pT2_uid134_invPolyEval_cma_a0[0] <= redist8_yPE_uid53_block_rsrvd_fix_b_5_q;
                prodXY_uid146_pT2_uid134_invPolyEval_cma_c0[0] <= s1_uid132_invPolyEval_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid146_pT2_uid134_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid146_pT2_uid134_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid146_pT2_uid134_invPolyEval_cma_s[0] <= prodXY_uid146_pT2_uid134_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(38), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid146_pT2_uid134_invPolyEval_cma_delay ( .xin(prodXY_uid146_pT2_uid134_invPolyEval_cma_s[0]), .xout(prodXY_uid146_pT2_uid134_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid146_pT2_uid134_invPolyEval_cma_q = $unsigned(prodXY_uid146_pT2_uid134_invPolyEval_cma_qq[36:0]);

    // osig_uid147_pT2_uid134_invPolyEval(BITSELECT,146)@7
    assign osig_uid147_pT2_uid134_invPolyEval_b = $unsigned(prodXY_uid146_pT2_uid134_invPolyEval_cma_q[36:13]);

    // highBBits_uid136_invPolyEval(BITSELECT,135)@7
    assign highBBits_uid136_invPolyEval_b = $unsigned(osig_uid147_pT2_uid134_invPolyEval_b[23:2]);

    // redist10_yAddr_uid52_block_rsrvd_fix_b_5(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_yAddr_uid52_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist10_yAddr_uid52_block_rsrvd_fix_b_5_delay_1 <= '0;
            redist10_yAddr_uid52_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist10_yAddr_uid52_block_rsrvd_fix_b_5_delay_0 <= $unsigned(redist9_yAddr_uid52_block_rsrvd_fix_b_2_q);
            redist10_yAddr_uid52_block_rsrvd_fix_b_5_delay_1 <= redist10_yAddr_uid52_block_rsrvd_fix_b_5_delay_0;
            redist10_yAddr_uid52_block_rsrvd_fix_b_5_q <= redist10_yAddr_uid52_block_rsrvd_fix_b_5_delay_1;
        end
    end

    // memoryC0_uid114_invTables_lutmem(DUALMEM,150)@5 + 2
    // in j@20000000
    assign memoryC0_uid114_invTables_lutmem_aa = redist10_yAddr_uid52_block_rsrvd_fix_b_5_q;
    assign memoryC0_uid114_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(11),
        .widthad_a(9),
        .numwords_a(512),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000114_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid114_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid114_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid114_invTables_lutmem_aa),
        .q_a(memoryC0_uid114_invTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid114_invTables_lutmem_r = memoryC0_uid114_invTables_lutmem_ir[10:0];

    // memoryC0_uid113_invTables_lutmem(DUALMEM,149)@5 + 2
    // in j@20000000
    assign memoryC0_uid113_invTables_lutmem_aa = redist10_yAddr_uid52_block_rsrvd_fix_b_5_q;
    assign memoryC0_uid113_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(9),
        .numwords_a(512),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000113_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid113_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid113_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid113_invTables_lutmem_aa),
        .q_a(memoryC0_uid113_invTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid113_invTables_lutmem_r = memoryC0_uid113_invTables_lutmem_ir[19:0];

    // os_uid115_invTables(BITJOIN,114)@7
    assign os_uid115_invTables_q = {memoryC0_uid114_invTables_lutmem_r, memoryC0_uid113_invTables_lutmem_r};

    // s2sumAHighB_uid137_invPolyEval(ADD,136)@7
    assign s2sumAHighB_uid137_invPolyEval_a = $unsigned({{1{os_uid115_invTables_q[30]}}, os_uid115_invTables_q});
    assign s2sumAHighB_uid137_invPolyEval_b = $unsigned({{10{highBBits_uid136_invPolyEval_b[21]}}, highBBits_uid136_invPolyEval_b});
    assign s2sumAHighB_uid137_invPolyEval_o = $unsigned($signed(s2sumAHighB_uid137_invPolyEval_a) + $signed(s2sumAHighB_uid137_invPolyEval_b));
    assign s2sumAHighB_uid137_invPolyEval_q = s2sumAHighB_uid137_invPolyEval_o[31:0];

    // lowRangeB_uid135_invPolyEval(BITSELECT,134)@7
    assign lowRangeB_uid135_invPolyEval_in = osig_uid147_pT2_uid134_invPolyEval_b[1:0];
    assign lowRangeB_uid135_invPolyEval_b = lowRangeB_uid135_invPolyEval_in[1:0];

    // s2_uid138_invPolyEval(BITJOIN,137)@7
    assign s2_uid138_invPolyEval_q = {s2sumAHighB_uid137_invPolyEval_q, lowRangeB_uid135_invPolyEval_b};

    // invY_uid55_block_rsrvd_fix_merged_bit_select(BITSELECT,156)@7
    assign invY_uid55_block_rsrvd_fix_merged_bit_select_in = s2_uid138_invPolyEval_q[31:0];
    assign invY_uid55_block_rsrvd_fix_merged_bit_select_b = invY_uid55_block_rsrvd_fix_merged_bit_select_in[30:5];
    assign invY_uid55_block_rsrvd_fix_merged_bit_select_c = invY_uid55_block_rsrvd_fix_merged_bit_select_in[31:31];

    // redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(invY_uid55_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma(CHAINMULTADD,153)@8 + 2
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_reset = ~ (resetn);
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_ena0 = 1'b1;
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_ena1 = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_ena0;
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_p[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_a0[0] * prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_c0[0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_u[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_p[0][49:0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_w[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_u[0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_x[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_w[0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_y[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_a0 <= '{default: '0};
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_ena0 == 1'b1)
            begin
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_a0[0] <= redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q;
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_c0[0] <= lOAdded_uid59_block_rsrvd_fix_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_ena1 == 1'b1)
            begin
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_s[0] <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(50), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_delay ( .xin(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_s[0]), .xout(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_q = $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_qq[49:0]);

    // osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix(BITSELECT,140)@10
    assign osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_cma_q[49:24];

    // updatedY_uid17_block_rsrvd_fix(BITJOIN,16)@0
    assign updatedY_uid17_block_rsrvd_fix_q = {GND_q, paddingY_uid16_block_rsrvd_fix_q};

    // fracYZero_uid16_block_rsrvd_fix(LOGICAL,17)@0 + 1
    assign fracYZero_uid16_block_rsrvd_fix_a = {1'b0, fracY_uid14_block_rsrvd_fix_b};
    assign fracYZero_uid16_block_rsrvd_fix_qi = $unsigned(fracYZero_uid16_block_rsrvd_fix_a == updatedY_uid17_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracYZero_uid16_block_rsrvd_fix_delay ( .xin(fracYZero_uid16_block_rsrvd_fix_qi), .xout(fracYZero_uid16_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_fracYZero_uid16_block_rsrvd_fix_q_7(DELAY,176)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_fracYZero_uid16_block_rsrvd_fix_q_7 ( .xin(fracYZero_uid16_block_rsrvd_fix_q), .xout(redist19_fracYZero_uid16_block_rsrvd_fix_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracYPostZ_uid57_block_rsrvd_fix(LOGICAL,56)@7 + 1
    assign fracYPostZ_uid57_block_rsrvd_fix_qi = redist19_fracYZero_uid16_block_rsrvd_fix_q_7_q | invY_uid55_block_rsrvd_fix_merged_bit_select_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracYPostZ_uid57_block_rsrvd_fix_delay ( .xin(fracYPostZ_uid57_block_rsrvd_fix_qi), .xout(fracYPostZ_uid57_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3_delay_0 <= $unsigned(fracYPostZ_uid57_block_rsrvd_fix_q);
            redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3_q <= redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // divValPreNormTrunc_uid67_block_rsrvd_fix(MUX,66)@10
    assign divValPreNormTrunc_uid67_block_rsrvd_fix_s = redist6_fracYPostZ_uid57_block_rsrvd_fix_q_3_q;
    always @(divValPreNormTrunc_uid67_block_rsrvd_fix_s or osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b or oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix_q)
    begin
        unique case (divValPreNormTrunc_uid67_block_rsrvd_fix_s)
            1'b0 : divValPreNormTrunc_uid67_block_rsrvd_fix_q = osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b;
            1'b1 : divValPreNormTrunc_uid67_block_rsrvd_fix_q = oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix_q;
            default : divValPreNormTrunc_uid67_block_rsrvd_fix_q = 26'b0;
        endcase
    end

    // norm_uid68_block_rsrvd_fix(BITSELECT,67)@10
    assign norm_uid68_block_rsrvd_fix_b = $unsigned(divValPreNormTrunc_uid67_block_rsrvd_fix_q[25:25]);

    // redist4_norm_uid68_block_rsrvd_fix_b_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_norm_uid68_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist4_norm_uid68_block_rsrvd_fix_b_1_q <= $unsigned(norm_uid68_block_rsrvd_fix_b);
        end
    end

    // rndOp_uid76_block_rsrvd_fix(BITJOIN,75)@11
    assign rndOp_uid76_block_rsrvd_fix_q = {redist4_norm_uid68_block_rsrvd_fix_b_1_q, paddingY_uid16_block_rsrvd_fix_q, VCC_q};

    // cstBiasM1_uid7_block_rsrvd_fix(CONSTANT,6)
    assign cstBiasM1_uid7_block_rsrvd_fix_q = $unsigned(8'b01111110);

    // expXmY_uid48_block_rsrvd_fix(SUB,47)@8 + 1
    assign expXmY_uid48_block_rsrvd_fix_a = {1'b0, expX_uid10_block_rsrvd_fix_b};
    assign expXmY_uid48_block_rsrvd_fix_b = {1'b0, redist21_expY_uid13_block_rsrvd_fix_b_8_outputreg0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expXmY_uid48_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expXmY_uid48_block_rsrvd_fix_o <= $unsigned(expXmY_uid48_block_rsrvd_fix_a) - $unsigned(expXmY_uid48_block_rsrvd_fix_b);
        end
    end
    assign expXmY_uid48_block_rsrvd_fix_q = expXmY_uid48_block_rsrvd_fix_o[8:0];

    // redist11_expXmY_uid48_block_rsrvd_fix_q_2(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_expXmY_uid48_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist11_expXmY_uid48_block_rsrvd_fix_q_2_q <= $unsigned(expXmY_uid48_block_rsrvd_fix_q);
        end
    end

    // expR_uid49_block_rsrvd_fix(ADD,48)@10 + 1
    assign expR_uid49_block_rsrvd_fix_a = $unsigned({{2{redist11_expXmY_uid48_block_rsrvd_fix_q_2_q[8]}}, redist11_expXmY_uid48_block_rsrvd_fix_q_2_q});
    assign expR_uid49_block_rsrvd_fix_b = $unsigned({3'b000, cstBiasM1_uid7_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expR_uid49_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            expR_uid49_block_rsrvd_fix_o <= $unsigned($signed(expR_uid49_block_rsrvd_fix_a) + $signed(expR_uid49_block_rsrvd_fix_b));
        end
    end
    assign expR_uid49_block_rsrvd_fix_q = expR_uid49_block_rsrvd_fix_o[9:0];

    // divValPreNormHigh_uid69_block_rsrvd_fix(BITSELECT,68)@10
    assign divValPreNormHigh_uid69_block_rsrvd_fix_in = divValPreNormTrunc_uid67_block_rsrvd_fix_q[24:0];
    assign divValPreNormHigh_uid69_block_rsrvd_fix_b = divValPreNormHigh_uid69_block_rsrvd_fix_in[24:1];

    // divValPreNormLow_uid70_block_rsrvd_fix(BITSELECT,69)@10
    assign divValPreNormLow_uid70_block_rsrvd_fix_in = divValPreNormTrunc_uid67_block_rsrvd_fix_q[23:0];
    assign divValPreNormLow_uid70_block_rsrvd_fix_b = divValPreNormLow_uid70_block_rsrvd_fix_in[23:0];

    // normFracRnd_uid71_block_rsrvd_fix(MUX,70)@10 + 1
    assign normFracRnd_uid71_block_rsrvd_fix_s = norm_uid68_block_rsrvd_fix_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            normFracRnd_uid71_block_rsrvd_fix_q <= 24'b0;
        end
        else
        begin
            unique case (normFracRnd_uid71_block_rsrvd_fix_s)
                1'b0 : normFracRnd_uid71_block_rsrvd_fix_q <= divValPreNormLow_uid70_block_rsrvd_fix_b;
                1'b1 : normFracRnd_uid71_block_rsrvd_fix_q <= divValPreNormHigh_uid69_block_rsrvd_fix_b;
                default : normFracRnd_uid71_block_rsrvd_fix_q <= 24'b0;
            endcase
        end
    end

    // expFracRnd_uid72_block_rsrvd_fix(BITJOIN,71)@11
    assign expFracRnd_uid72_block_rsrvd_fix_q = {expR_uid49_block_rsrvd_fix_q, normFracRnd_uid71_block_rsrvd_fix_q};

    // expFracPostRnd_uid77_block_rsrvd_fix(ADD,76)@11 + 1
    assign expFracPostRnd_uid77_block_rsrvd_fix_a = $unsigned({{2{expFracRnd_uid72_block_rsrvd_fix_q[33]}}, expFracRnd_uid72_block_rsrvd_fix_q});
    assign expFracPostRnd_uid77_block_rsrvd_fix_b = $unsigned({11'b00000000000, rndOp_uid76_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracPostRnd_uid77_block_rsrvd_fix_o <= 36'b0;
        end
        else
        begin
            expFracPostRnd_uid77_block_rsrvd_fix_o <= $unsigned($signed(expFracPostRnd_uid77_block_rsrvd_fix_a) + $signed(expFracPostRnd_uid77_block_rsrvd_fix_b));
        end
    end
    assign expFracPostRnd_uid77_block_rsrvd_fix_q = expFracPostRnd_uid77_block_rsrvd_fix_o[34:0];

    // excRPreExc_uid80_block_rsrvd_fix(BITSELECT,79)@12
    assign excRPreExc_uid80_block_rsrvd_fix_in = expFracPostRnd_uid77_block_rsrvd_fix_q[31:0];
    assign excRPreExc_uid80_block_rsrvd_fix_b = excRPreExc_uid80_block_rsrvd_fix_in[31:24];

    // redist2_excRPreExc_uid80_block_rsrvd_fix_b_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_excRPreExc_uid80_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist2_excRPreExc_uid80_block_rsrvd_fix_b_1_q <= $unsigned(excRPreExc_uid80_block_rsrvd_fix_b);
        end
    end

    // invExpXIsMax_uid44_block_rsrvd_fix(LOGICAL,43)@12
    assign invExpXIsMax_uid44_block_rsrvd_fix_q = ~ (redist14_expXIsMax_uid39_block_rsrvd_fix_q_4_q);

    // InvExpXIsZero_uid45_block_rsrvd_fix(LOGICAL,44)@12
    assign InvExpXIsZero_uid45_block_rsrvd_fix_q = ~ (redist15_excZ_y_uid38_block_rsrvd_fix_q_4_q);

    // excR_y_uid46_block_rsrvd_fix(LOGICAL,45)@12
    assign excR_y_uid46_block_rsrvd_fix_q = InvExpXIsZero_uid45_block_rsrvd_fix_q & invExpXIsMax_uid44_block_rsrvd_fix_q;

    // excXIYR_uid94_block_rsrvd_fix(LOGICAL,93)@12 + 1
    assign excXIYR_uid94_block_rsrvd_fix_qi = excI_x_uid28_block_rsrvd_fix_q & excR_y_uid46_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excXIYR_uid94_block_rsrvd_fix_delay ( .xin(excXIYR_uid94_block_rsrvd_fix_qi), .xout(excXIYR_uid94_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXIYZ_uid93_block_rsrvd_fix(LOGICAL,92)@12 + 1
    assign excXIYZ_uid93_block_rsrvd_fix_qi = excI_x_uid28_block_rsrvd_fix_q & redist15_excZ_y_uid38_block_rsrvd_fix_q_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excXIYZ_uid93_block_rsrvd_fix_delay ( .xin(excXIYZ_uid93_block_rsrvd_fix_qi), .xout(excXIYZ_uid93_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expRExt_uid81_block_rsrvd_fix(BITSELECT,80)@12
    assign expRExt_uid81_block_rsrvd_fix_b = $unsigned(expFracPostRnd_uid77_block_rsrvd_fix_q[34:24]);

    // expOvf_uid85_block_rsrvd_fix(COMPARE,84)@12
    assign expOvf_uid85_block_rsrvd_fix_a = $unsigned({{2{expRExt_uid81_block_rsrvd_fix_b[10]}}, expRExt_uid81_block_rsrvd_fix_b});
    assign expOvf_uid85_block_rsrvd_fix_b = $unsigned({5'b00000, cstAllOWE_uid19_block_rsrvd_fix_q});
    assign expOvf_uid85_block_rsrvd_fix_o = $unsigned($signed(expOvf_uid85_block_rsrvd_fix_a) - $signed(expOvf_uid85_block_rsrvd_fix_b));
    assign expOvf_uid85_block_rsrvd_fix_n[0] = ~ (expOvf_uid85_block_rsrvd_fix_o[12]);

    // invExpXIsMax_uid30_block_rsrvd_fix(LOGICAL,29)@12
    assign invExpXIsMax_uid30_block_rsrvd_fix_q = ~ (redist17_expXIsMax_uid25_block_rsrvd_fix_q_4_q);

    // InvExpXIsZero_uid31_block_rsrvd_fix(LOGICAL,30)@12
    assign InvExpXIsZero_uid31_block_rsrvd_fix_q = ~ (redist18_excZ_x_uid24_block_rsrvd_fix_q_4_q);

    // excR_x_uid32_block_rsrvd_fix(LOGICAL,31)@12
    assign excR_x_uid32_block_rsrvd_fix_q = InvExpXIsZero_uid31_block_rsrvd_fix_q & invExpXIsMax_uid30_block_rsrvd_fix_q;

    // excXRYROvf_uid92_block_rsrvd_fix(LOGICAL,91)@12 + 1
    assign excXRYROvf_uid92_block_rsrvd_fix_qi = excR_x_uid32_block_rsrvd_fix_q & excR_y_uid46_block_rsrvd_fix_q & expOvf_uid85_block_rsrvd_fix_n;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excXRYROvf_uid92_block_rsrvd_fix_delay ( .xin(excXRYROvf_uid92_block_rsrvd_fix_qi), .xout(excXRYROvf_uid92_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXRYZ_uid91_block_rsrvd_fix(LOGICAL,90)@12 + 1
    assign excXRYZ_uid91_block_rsrvd_fix_qi = excR_x_uid32_block_rsrvd_fix_q & redist15_excZ_y_uid38_block_rsrvd_fix_q_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excXRYZ_uid91_block_rsrvd_fix_delay ( .xin(excXRYZ_uid91_block_rsrvd_fix_qi), .xout(excXRYZ_uid91_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excRInf_uid95_block_rsrvd_fix(LOGICAL,94)@13
    assign excRInf_uid95_block_rsrvd_fix_q = excXRYZ_uid91_block_rsrvd_fix_q | excXRYROvf_uid92_block_rsrvd_fix_q | excXIYZ_uid93_block_rsrvd_fix_q | excXIYR_uid94_block_rsrvd_fix_q;

    // xRegOrZero_uid88_block_rsrvd_fix(LOGICAL,87)@12
    assign xRegOrZero_uid88_block_rsrvd_fix_q = excR_x_uid32_block_rsrvd_fix_q | redist18_excZ_x_uid24_block_rsrvd_fix_q_4_q;

    // regOrZeroOverInf_uid89_block_rsrvd_fix(LOGICAL,88)@12 + 1
    assign regOrZeroOverInf_uid89_block_rsrvd_fix_qi = xRegOrZero_uid88_block_rsrvd_fix_q & excI_y_uid42_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    regOrZeroOverInf_uid89_block_rsrvd_fix_delay ( .xin(regOrZeroOverInf_uid89_block_rsrvd_fix_qi), .xout(regOrZeroOverInf_uid89_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expUdf_uid82_block_rsrvd_fix(COMPARE,81)@12
    assign expUdf_uid82_block_rsrvd_fix_a = $unsigned({12'b000000000000, GND_q});
    assign expUdf_uid82_block_rsrvd_fix_b = $unsigned({{2{expRExt_uid81_block_rsrvd_fix_b[10]}}, expRExt_uid81_block_rsrvd_fix_b});
    assign expUdf_uid82_block_rsrvd_fix_o = $unsigned($signed(expUdf_uid82_block_rsrvd_fix_a) - $signed(expUdf_uid82_block_rsrvd_fix_b));
    assign expUdf_uid82_block_rsrvd_fix_n[0] = ~ (expUdf_uid82_block_rsrvd_fix_o[12]);

    // regOverRegWithUf_uid87_block_rsrvd_fix(LOGICAL,86)@12 + 1
    assign regOverRegWithUf_uid87_block_rsrvd_fix_qi = expUdf_uid82_block_rsrvd_fix_n & excR_x_uid32_block_rsrvd_fix_q & excR_y_uid46_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    regOverRegWithUf_uid87_block_rsrvd_fix_delay ( .xin(regOverRegWithUf_uid87_block_rsrvd_fix_qi), .xout(regOverRegWithUf_uid87_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zeroOverReg_uid86_block_rsrvd_fix(LOGICAL,85)@12 + 1
    assign zeroOverReg_uid86_block_rsrvd_fix_qi = redist18_excZ_x_uid24_block_rsrvd_fix_q_4_q & excR_y_uid46_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    zeroOverReg_uid86_block_rsrvd_fix_delay ( .xin(zeroOverReg_uid86_block_rsrvd_fix_qi), .xout(zeroOverReg_uid86_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excRZero_uid90_block_rsrvd_fix(LOGICAL,89)@13
    assign excRZero_uid90_block_rsrvd_fix_q = zeroOverReg_uid86_block_rsrvd_fix_q | regOverRegWithUf_uid87_block_rsrvd_fix_q | regOrZeroOverInf_uid89_block_rsrvd_fix_q;

    // concExc_uid99_block_rsrvd_fix(BITJOIN,98)@13
    assign concExc_uid99_block_rsrvd_fix_q = {excRNaN_uid98_block_rsrvd_fix_q, excRInf_uid95_block_rsrvd_fix_q, excRZero_uid90_block_rsrvd_fix_q};

    // excREnc_uid100_block_rsrvd_fix(LOOKUP,99)@13
    always @(concExc_uid99_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (concExc_uid99_block_rsrvd_fix_q)
            3'b000 : excREnc_uid100_block_rsrvd_fix_q = 2'b01;
            3'b001 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            3'b010 : excREnc_uid100_block_rsrvd_fix_q = 2'b10;
            3'b011 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            3'b100 : excREnc_uid100_block_rsrvd_fix_q = 2'b11;
            3'b101 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            3'b110 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            3'b111 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            default : begin
                          // unreachable
                          excREnc_uid100_block_rsrvd_fix_q = 2'bxx;
                      end
        endcase
        // End reserved scope level
    end

    // expRPostExc_uid108_block_rsrvd_fix(MUX,107)@13
    assign expRPostExc_uid108_block_rsrvd_fix_s = excREnc_uid100_block_rsrvd_fix_q;
    always @(expRPostExc_uid108_block_rsrvd_fix_s or cstAllZWE_uid21_block_rsrvd_fix_q or redist2_excRPreExc_uid80_block_rsrvd_fix_b_1_q or cstAllOWE_uid19_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid108_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid108_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid108_block_rsrvd_fix_q = redist2_excRPreExc_uid80_block_rsrvd_fix_b_1_q;
            2'b10 : expRPostExc_uid108_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid108_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            default : expRPostExc_uid108_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // oneFracRPostExc2_uid101_block_rsrvd_fix(CONSTANT,100)
    assign oneFracRPostExc2_uid101_block_rsrvd_fix_q = $unsigned(23'b00000000000000000000001);

    // fracRPreExc_uid79_block_rsrvd_fix(BITSELECT,78)@12
    assign fracRPreExc_uid79_block_rsrvd_fix_in = expFracPostRnd_uid77_block_rsrvd_fix_q[23:0];
    assign fracRPreExc_uid79_block_rsrvd_fix_b = fracRPreExc_uid79_block_rsrvd_fix_in[23:1];

    // redist3_fracRPreExc_uid79_block_rsrvd_fix_b_1(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_fracRPreExc_uid79_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist3_fracRPreExc_uid79_block_rsrvd_fix_b_1_q <= $unsigned(fracRPreExc_uid79_block_rsrvd_fix_b);
        end
    end

    // fracRPostExc_uid104_block_rsrvd_fix(MUX,103)@13
    assign fracRPostExc_uid104_block_rsrvd_fix_s = excREnc_uid100_block_rsrvd_fix_q;
    always @(fracRPostExc_uid104_block_rsrvd_fix_s or paddingY_uid16_block_rsrvd_fix_q or redist3_fracRPreExc_uid79_block_rsrvd_fix_b_1_q or oneFracRPostExc2_uid101_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid104_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid104_block_rsrvd_fix_q = paddingY_uid16_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid104_block_rsrvd_fix_q = redist3_fracRPreExc_uid79_block_rsrvd_fix_b_1_q;
            2'b10 : fracRPostExc_uid104_block_rsrvd_fix_q = paddingY_uid16_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid104_block_rsrvd_fix_q = oneFracRPostExc2_uid101_block_rsrvd_fix_q;
            default : fracRPostExc_uid104_block_rsrvd_fix_q = 23'b0;
        endcase
    end

    // divR_uid111_block_rsrvd_fix(BITJOIN,110)@13
    assign divR_uid111_block_rsrvd_fix_q = {sRPostExc_uid110_block_rsrvd_fix_q, expRPostExc_uid108_block_rsrvd_fix_q, fracRPostExc_uid104_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@13
    assign out_primWireOut = divR_uid111_block_rsrvd_fix_q;

endmodule
