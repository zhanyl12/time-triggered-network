////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ethernet_test_synthesis.v
// /___/   /\     Timestamp: Mon Jan 08 09:30:57 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ethernet_test.ngc ethernet_test_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: ethernet_test.ngc
// Output file	: D:\FPGA\project\ethernet_test\netgen\synthesis\ethernet_test_synthesis.v
// # of Modules	: 1
// Design Name	: ethernet_test
// Xilinx        : E:\ISE\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ethernet_test (
  reset_n, fpga_gclk, e_rxc, e_rxdv, e_rxer, e_txc, e_reset, e_mdc, e_mdio, e_gtxc, e_txen, e_txer, e_rxd, e_txd
)/* synthesis syn_black_box syn_noprune=1 */;
  input reset_n;
  input fpga_gclk;
  input e_rxc;
  input e_rxdv;
  input e_rxer;
  input e_txc;
  output e_reset;
  output e_mdc;
  inout e_mdio;
  output e_gtxc;
  output e_txen;
  output e_txer;
  input [7 : 0] e_rxd;
  output [7 : 0] e_txd;
  
  // synthesis translate_off
  
  wire e_rxd_7_IBUF_0;
  wire e_rxd_6_IBUF_1;
  wire e_rxd_5_IBUF_2;
  wire e_rxd_4_IBUF_3;
  wire e_rxd_3_IBUF_4;
  wire e_rxd_2_IBUF_5;
  wire e_rxd_1_IBUF_6;
  wire e_rxd_0_IBUF_7;
  wire reset_n_IBUF_8;
  wire e_gtxc_OBUF_BUFG_9;
  wire e_rxdv_IBUF_10;
  wire \u1/ipsend_inst/txen_101 ;
  wire e_txer_OBUF_102;
  wire \u1/iprecieve_inst/data_o_valid_103 ;
  wire \u1/iprecieve_inst/data_receive_104 ;
  wire ram_wr_finish_105;
  wire ram_wren_i_106;
  wire \ram_data_i[28] ;
  wire \ram_data_i[26] ;
  wire \ram_data_i[25] ;
  wire \ram_data_i[8] ;
  wire \ram_data_i[9] ;
  wire \ram_data_i[1] ;
  wire \ram_data_i[0] ;
  wire wea;
  wire reset_n_inv;
  wire GND_1_o_GND_1_o_equal_6_o_inv;
  wire \u1/ipsend_inst/crcre_257 ;
  wire \u1/ipsend_inst/crcen_258 ;
  wire \Mram_i[2]_X_1_o_wide_mux_7_OUT ;
  wire \Mram_i[2]_X_1_o_wide_mux_7_OUT1_263 ;
  wire \Mram_i[2]_X_1_o_wide_mux_7_OUT10 ;
  wire \Mram_i[2]_X_1_o_wide_mux_7_OUT20 ;
  wire \Mram_i[2]_X_1_o_wide_mux_7_OUT25 ;
  wire \Mram_i[2]_X_1_o_wide_mux_7_OUT26 ;
  wire \Mram_i[2]_X_1_o_wide_mux_7_OUT28 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd3-In332 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In19 ;
  wire \u1/iprecieve_inst/Mmux__n0605112 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In211_275 ;
  wire \u1/iprecieve_inst/_n0469_inv1 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ;
  wire \u1/iprecieve_inst/_n0691_inv3 ;
  wire \u1/iprecieve_inst/Mmux__n060522_279 ;
  wire \u1/iprecieve_inst/_n0691_inv2 ;
  wire \u1/iprecieve_inst/Mmux__n0551101 ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[15] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[14] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[13] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[12] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[11] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[10] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[9] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[8] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[7] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[6] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[5] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[4] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[2] ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[1] ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>_330 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_331 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_332 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_333 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_334 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_335 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_336 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_337 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_338 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_339 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_340 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_341 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_342 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>_343 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<0>_344 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_lut<0> ;
  wire \u1/iprecieve_inst/e_rxdv_0 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr8 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr7 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr6 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr5 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr4 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr3 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr2 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr1 ;
  wire \u1/iprecieve_inst/Mcount_ram_wr_addr ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2_373 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd1-In ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In1 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In2 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd3-In3 ;
  wire \u1/iprecieve_inst/_n0442_inv ;
  wire \u1/iprecieve_inst/_n0580_inv ;
  wire \u1/iprecieve_inst/_n0645_inv_380 ;
  wire \u1/iprecieve_inst/_n0469_inv ;
  wire \u1/iprecieve_inst/_n0583_inv ;
  wire \u1/iprecieve_inst/_n0709_inv ;
  wire \u1/iprecieve_inst/_n0654_inv ;
  wire \u1/iprecieve_inst/_n0736_inv ;
  wire \u1/iprecieve_inst/_n0700_inv ;
  wire \u1/iprecieve_inst/_n0598_inv ;
  wire \u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<2> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<3> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<4> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<5> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<6> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<7> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<8> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<9> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<10> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<11> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<12> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<13> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<14> ;
  wire \u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<15> ;
  wire \u1/iprecieve_inst/_n0551[0] ;
  wire \u1/iprecieve_inst/_n0551[2] ;
  wire \u1/iprecieve_inst/_n0551[4] ;
  wire \u1/iprecieve_inst/_n0551[6] ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<8> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<9> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<10> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<11> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<12> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<13> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<14> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<15> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<16> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<17> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<18> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<19> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<20> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<21> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<22> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<23> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<24> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<25> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<26> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<27> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<28> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<29> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<30> ;
  wire \u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<31> ;
  wire \u1/iprecieve_inst/mymac[0] ;
  wire \u1/iprecieve_inst/mymac[1] ;
  wire \u1/iprecieve_inst/mymac[2] ;
  wire \u1/iprecieve_inst/mymac[3] ;
  wire \u1/iprecieve_inst/mymac[4] ;
  wire \u1/iprecieve_inst/mymac[5] ;
  wire \u1/iprecieve_inst/mymac[6] ;
  wire \u1/iprecieve_inst/mymac[7] ;
  wire \u1/iprecieve_inst/mymac[40] ;
  wire \u1/iprecieve_inst/mymac[41] ;
  wire \u1/iprecieve_inst/mymac[42] ;
  wire \u1/iprecieve_inst/mymac[43] ;
  wire \u1/iprecieve_inst/mymac[44] ;
  wire \u1/iprecieve_inst/mymac[45] ;
  wire \u1/iprecieve_inst/mymac[46] ;
  wire \u1/iprecieve_inst/mymac[47] ;
  wire \u1/iprecieve_inst/mymac[48] ;
  wire \u1/iprecieve_inst/mymac[49] ;
  wire \u1/iprecieve_inst/mymac[50] ;
  wire \u1/iprecieve_inst/mymac[51] ;
  wire \u1/iprecieve_inst/mymac[52] ;
  wire \u1/iprecieve_inst/mymac[53] ;
  wire \u1/iprecieve_inst/mymac[54] ;
  wire \u1/iprecieve_inst/mymac[55] ;
  wire \u1/iprecieve_inst/mymac[56] ;
  wire \u1/iprecieve_inst/mymac[57] ;
  wire \u1/iprecieve_inst/mymac[58] ;
  wire \u1/iprecieve_inst/mymac[59] ;
  wire \u1/iprecieve_inst/mymac[60] ;
  wire \u1/iprecieve_inst/mymac[61] ;
  wire \u1/iprecieve_inst/mymac[62] ;
  wire \u1/iprecieve_inst/mymac[63] ;
  wire \u1/iprecieve_inst/mymac[64] ;
  wire \u1/iprecieve_inst/mymac[65] ;
  wire \u1/iprecieve_inst/mymac[66] ;
  wire \u1/iprecieve_inst/mymac[67] ;
  wire \u1/iprecieve_inst/mymac[68] ;
  wire \u1/iprecieve_inst/mymac[69] ;
  wire \u1/iprecieve_inst/mymac[70] ;
  wire \u1/iprecieve_inst/mymac[71] ;
  wire \u1/iprecieve_inst/mymac[72] ;
  wire \u1/iprecieve_inst/mymac[73] ;
  wire \u1/iprecieve_inst/mymac[74] ;
  wire \u1/iprecieve_inst/mymac[75] ;
  wire \u1/iprecieve_inst/mymac[76] ;
  wire \u1/iprecieve_inst/mymac[77] ;
  wire \u1/iprecieve_inst/mymac[78] ;
  wire \u1/iprecieve_inst/mymac[79] ;
  wire \u1/iprecieve_inst/mymac[80] ;
  wire \u1/iprecieve_inst/mymac[81] ;
  wire \u1/iprecieve_inst/mymac[82] ;
  wire \u1/iprecieve_inst/mymac[83] ;
  wire \u1/iprecieve_inst/mymac[84] ;
  wire \u1/iprecieve_inst/mymac[85] ;
  wire \u1/iprecieve_inst/mymac[86] ;
  wire \u1/iprecieve_inst/mymac[87] ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4_611 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd3_612 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd1_613 ;
  wire \u1/ipsend_inst/Mmux__n05714815 ;
  wire \u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o<4>1 ;
  wire \u1/ipsend_inst/Mmux__n0571107 ;
  wire \u1/ipsend_inst/Mmux__n0571106 ;
  wire \u1/ipsend_inst/Mmux__n0571105 ;
  wire \u1/ipsend_inst/Mmux__n0571104 ;
  wire \u1/ipsend_inst/Mmux__n0571261 ;
  wire \u1/ipsend_inst/Mmux__n0571103 ;
  wire \u1/ipsend_inst/Mmux__n0571311 ;
  wire \u1/ipsend_inst/Mmux__n0571412 ;
  wire \u1/ipsend_inst/Mmux__n0571102 ;
  wire \u1/ipsend_inst/Mmux__n0571391 ;
  wire \u1/ipsend_inst/Mmux__n0571310 ;
  wire \u1/ipsend_inst/Mmux__n0571411 ;
  wire \u1/ipsend_inst/Mmux__n0571101 ;
  wire \u1/ipsend_inst/Mmux__n057137 ;
  wire \u1/ipsend_inst/Mram_mac_addr41 ;
  wire \u1/ipsend_inst/tx_state[3]_GND_3_o_Select_171_o1 ;
  wire \u1/ipsend_inst/Mmux__n0519101 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[17] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[16] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[15] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[14] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[9] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[8] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[7] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[6] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[5] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[4] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[3] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[2] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[1] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[0] ;
  wire \u1/ipsend_inst/check_buffer_15_708 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>_709 ;
  wire \u1/ipsend_inst/check_buffer_14_710 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_711 ;
  wire \u1/ipsend_inst/check_buffer_13_712 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_713 ;
  wire \u1/ipsend_inst/check_buffer_12_714 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_715 ;
  wire \u1/ipsend_inst/check_buffer_11_716 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_717 ;
  wire \u1/ipsend_inst/check_buffer_10_718 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_719 ;
  wire \u1/ipsend_inst/check_buffer_9_720 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_721 ;
  wire \u1/ipsend_inst/check_buffer_8_722 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_723 ;
  wire \u1/ipsend_inst/check_buffer_7_724 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_725 ;
  wire \u1/ipsend_inst/check_buffer_6_726 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_727 ;
  wire \u1/ipsend_inst/check_buffer_5_728 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_729 ;
  wire \u1/ipsend_inst/check_buffer_4_730 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_731 ;
  wire \u1/ipsend_inst/check_buffer_3_732 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<2>_733 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<2>_734 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<1>_735 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<1>_736 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<0>_737 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<0>_738 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>_739 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_740 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_741 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_742 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_743 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_744 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_745 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_746 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_747 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_748 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_749 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_750 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_751 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_752 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<0>_753 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_lut<0> ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[15] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[14] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[13] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[12] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[11] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[10] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[9] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[8] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[7] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[6] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[5] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[4] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[2] ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[1] ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr8 ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr7 ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr6 ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr5 ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr4 ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr3 ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr2 ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr1 ;
  wire \u1/ipsend_inst/Mcount_ram_rd_addr ;
  wire \u1/ipsend_inst/tx_state_FSM_FFd1_851 ;
  wire \u1/ipsend_inst/tx_state_FSM_FFd2_852 ;
  wire \u1/ipsend_inst/tx_state_FSM_FFd3_853 ;
  wire \u1/ipsend_inst/tx_state_FSM_FFd1-In ;
  wire \u1/ipsend_inst/tx_state_FSM_FFd2-In_855 ;
  wire \u1/ipsend_inst/tx_state_FSM_FFd3-In ;
  wire \u1/ipsend_inst/tx_state_FSM_FFd1-In11 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter15 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter14 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter13 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter12 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter11 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter10 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter9 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter8 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter7 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter6 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter5 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter4 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter3 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter2 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter1 ;
  wire \u1/ipsend_inst/Mcount_tx_data_counter ;
  wire \u1/ipsend_inst/clk_inv ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>16 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>16 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd76_908 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>15 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>15_910 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>2 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd71_912 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>1 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>1_914 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>15 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>15 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>14 ;
  wire \u1/ipsend_inst/ip_header_0[14] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>13 ;
  wire \u1/ipsend_inst/ip_header_0[13] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>12 ;
  wire \u1/ipsend_inst/ip_header_0[12] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>11 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>11_925 ;
  wire \u1/ipsend_inst/ip_header_0[10] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>10 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>10 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>9 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>9_930 ;
  wire \u1/ipsend_inst/ip_header_0[8] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>8 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>8 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>7 ;
  wire \u1/ipsend_inst/ip_header_0[7] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>6 ;
  wire \u1/ipsend_inst/ip_header_0[6] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>5 ;
  wire \u1/ipsend_inst/ip_header_0[5] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>4 ;
  wire \u1/ipsend_inst/ip_header_0[4] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>3 ;
  wire \u1/ipsend_inst/ip_header_0[3] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>2 ;
  wire \u1/ipsend_inst/ip_header_0[2] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>1 ;
  wire \u1/ipsend_inst/ip_header_0[1] ;
  wire \u1/ipsend_inst/ip_header_0[0] ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>16 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>16_951 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd315_952 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>15 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>15_954 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd314_955 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>14 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>14_957 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd313_958 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>13 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>13_960 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd312_961 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>12 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>12_963 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd311_964 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>11 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>11_966 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd310_967 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>10 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>10_969 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd39_970 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>9 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>9_972 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd38_973 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>8 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>8_975 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd37_976 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>7 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>7_978 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd36_979 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>6 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>6_981 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd35_982 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>5 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>5_984 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd34_985 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>4 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>4_987 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd33_988 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>3 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>3_990 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd32_991 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>2 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>2_993 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd31_994 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>1 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>1_996 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_997 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_178 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_168 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_158 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_148 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_138 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_1210 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_1112 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_108 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_98 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_88 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_78 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_68 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_58 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_48 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_38 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_219 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_129 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_08 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_177 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_167 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_157 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_37 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_217 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_127 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_173 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_163 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_153 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_133 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_123 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_115 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_103 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_83 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_63 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_53 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_33 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_27 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_114 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_161 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_151 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_141 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_131 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_121 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_111 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_101 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_91 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_81 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_71 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_61 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_51 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_41 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_31 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_25 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_110 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_01 ;
  wire \u1/ipsend_inst/_n0804_inv ;
  wire \u1/ipsend_inst/_n0771_inv ;
  wire \u1/ipsend_inst/_n0921_inv ;
  wire \u1/ipsend_inst/_n0869_inv ;
  wire \u1/ipsend_inst/_n0948_inv ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<0> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<1> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<2> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<3> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<4> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<5> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<6> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<7> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<8> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<9> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<10> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<11> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<12> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<13> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<14> ;
  wire \u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<15> ;
  wire \u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<0> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<1> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<2> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<3> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<4> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<5> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<6> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<7> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<8> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<9> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<10> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<11> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<12> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<13> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<14> ;
  wire \u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<15> ;
  wire \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o ;
  wire \u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ;
  wire \u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o ;
  wire \u1/ipsend_inst/GND_3_o_GND_3_o_equal_34_o ;
  wire \u1/ipsend_inst/_n0626 ;
  wire \u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ;
  wire \u1/ipsend_inst/_n0856[0] ;
  wire \u1/ipsend_inst/_n0856[1] ;
  wire \u1/ipsend_inst/_n0856[2] ;
  wire \u1/ipsend_inst/_n0856[3] ;
  wire \u1/ipsend_inst/_n0856[4] ;
  wire \u1/ipsend_inst/_n0856[5] ;
  wire \u1/ipsend_inst/_n0856[6] ;
  wire \u1/ipsend_inst/_n0856[7] ;
  wire \u1/ipsend_inst/_n0856[8] ;
  wire \u1/ipsend_inst/_n0856[9] ;
  wire \u1/ipsend_inst/_n0856[10] ;
  wire \u1/ipsend_inst/_n0856[11] ;
  wire \u1/ipsend_inst/_n0856[12] ;
  wire \u1/ipsend_inst/_n0856[13] ;
  wire \u1/ipsend_inst/_n0856[14] ;
  wire \u1/ipsend_inst/_n0856[15] ;
  wire \u1/ipsend_inst/_n0856[48] ;
  wire \u1/ipsend_inst/_n0856[49] ;
  wire \u1/ipsend_inst/_n0856[50] ;
  wire \u1/ipsend_inst/_n0856[51] ;
  wire \u1/ipsend_inst/_n0856[52] ;
  wire \u1/ipsend_inst/_n0856[53] ;
  wire \u1/ipsend_inst/_n0856[54] ;
  wire \u1/ipsend_inst/_n0856[55] ;
  wire \u1/ipsend_inst/_n0856[56] ;
  wire \u1/ipsend_inst/_n0856[57] ;
  wire \u1/ipsend_inst/_n0856[58] ;
  wire \u1/ipsend_inst/_n0856[59] ;
  wire \u1/ipsend_inst/_n0856[60] ;
  wire \u1/ipsend_inst/_n0856[61] ;
  wire \u1/ipsend_inst/_n0856[62] ;
  wire \u1/ipsend_inst/_n0856[63] ;
  wire \u1/ipsend_inst/_n0856[64] ;
  wire \u1/ipsend_inst/_n0856[65] ;
  wire \u1/ipsend_inst/_n0856[66] ;
  wire \u1/ipsend_inst/_n0856[67] ;
  wire \u1/ipsend_inst/_n0856[68] ;
  wire \u1/ipsend_inst/_n0856[69] ;
  wire \u1/ipsend_inst/_n0856[70] ;
  wire \u1/ipsend_inst/_n0856[71] ;
  wire \u1/ipsend_inst/_n0856[72] ;
  wire \u1/ipsend_inst/_n0856[73] ;
  wire \u1/ipsend_inst/_n0856[74] ;
  wire \u1/ipsend_inst/_n0856[75] ;
  wire \u1/ipsend_inst/_n0856[76] ;
  wire \u1/ipsend_inst/_n0856[77] ;
  wire \u1/ipsend_inst/_n0856[78] ;
  wire \u1/ipsend_inst/_n0856[79] ;
  wire \u1/ipsend_inst/_n0856[208] ;
  wire \u1/ipsend_inst/_n0856[209] ;
  wire \u1/ipsend_inst/_n0856[210] ;
  wire \u1/ipsend_inst/_n0856[211] ;
  wire \u1/ipsend_inst/_n0856[212] ;
  wire \u1/ipsend_inst/_n0856[213] ;
  wire \u1/ipsend_inst/_n0856[214] ;
  wire \u1/ipsend_inst/_n0856[215] ;
  wire \u1/ipsend_inst/_n0856[216] ;
  wire \u1/ipsend_inst/_n0856[217] ;
  wire \u1/ipsend_inst/_n0856[218] ;
  wire \u1/ipsend_inst/_n0856[219] ;
  wire \u1/ipsend_inst/_n0856[220] ;
  wire \u1/ipsend_inst/_n0856[221] ;
  wire \u1/ipsend_inst/_n0856[222] ;
  wire \u1/ipsend_inst/_n0856[223] ;
  wire \u1/ipsend_inst/tx_state[3]_GND_3_o_Select_175_o ;
  wire \u1/ipsend_inst/tx_state[3]_GND_3_o_Select_173_o ;
  wire \u1/ipsend_inst/tx_state[3]_PWR_3_o_Select_177_o ;
  wire \u1/ipsend_inst/_n0723 ;
  wire \u1/ipsend_inst/check_buffer_0_1218 ;
  wire \u1/ipsend_inst/check_buffer_1_1219 ;
  wire \u1/ipsend_inst/check_buffer_2_1220 ;
  wire \u1/ipsend_inst/check_buffer_16_1221 ;
  wire \u1/ipsend_inst/check_buffer_17_1222 ;
  wire \u1/ipsend_inst/check_buffer_18_1223 ;
  wire \u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ;
  wire \u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ;
  wire \u1/ipsend_inst/ip_header_0[208] ;
  wire \u1/ipsend_inst/ip_header_0[209] ;
  wire \u1/ipsend_inst/ip_header_0[210] ;
  wire \u1/ipsend_inst/ip_header_0[211] ;
  wire \u1/ipsend_inst/ip_header_0[212] ;
  wire \u1/ipsend_inst/ip_header_0[213] ;
  wire \u1/ipsend_inst/ip_header_0[214] ;
  wire \u1/ipsend_inst/ip_header_0[215] ;
  wire \u1/ipsend_inst/ip_header_0[216] ;
  wire \u1/ipsend_inst/ip_header_0[217] ;
  wire \u1/ipsend_inst/ip_header_0[218] ;
  wire \u1/ipsend_inst/ip_header_0[219] ;
  wire \u1/ipsend_inst/ip_header_0[220] ;
  wire \u1/ipsend_inst/ip_header_0[221] ;
  wire \u1/ipsend_inst/ip_header_0[222] ;
  wire \u1/ipsend_inst/ip_header_0[223] ;
  wire \u1/ipsend_inst/ip_header_0[64] ;
  wire \u1/ipsend_inst/ip_header_0[65] ;
  wire \u1/ipsend_inst/ip_header_0[66] ;
  wire \u1/ipsend_inst/ip_header_0[67] ;
  wire \u1/ipsend_inst/ip_header_0[68] ;
  wire \u1/ipsend_inst/ip_header_0[69] ;
  wire \u1/ipsend_inst/ip_header_0[70] ;
  wire \u1/ipsend_inst/ip_header_0[71] ;
  wire \u1/ipsend_inst/ip_header_0[72] ;
  wire \u1/ipsend_inst/ip_header_0[73] ;
  wire \u1/ipsend_inst/ip_header_0[74] ;
  wire \u1/ipsend_inst/ip_header_0[75] ;
  wire \u1/ipsend_inst/ip_header_0[76] ;
  wire \u1/ipsend_inst/ip_header_0[77] ;
  wire \u1/ipsend_inst/ip_header_0[78] ;
  wire \u1/ipsend_inst/ip_header_0[79] ;
  wire \u1/ipsend_inst/ip_header_0[9] ;
  wire \u1/ipsend_inst/ip_header_0[11] ;
  wire \u1/ipsend_inst/ip_header_0[15] ;
  wire \u1/ipsend_inst/ip_header_0[48] ;
  wire \u1/ipsend_inst/ip_header_0[49] ;
  wire \u1/ipsend_inst/ip_header_0[50] ;
  wire \u1/ipsend_inst/ip_header_0[51] ;
  wire \u1/ipsend_inst/ip_header_0[52] ;
  wire \u1/ipsend_inst/ip_header_0[53] ;
  wire \u1/ipsend_inst/ip_header_0[54] ;
  wire \u1/ipsend_inst/ip_header_0[55] ;
  wire \u1/ipsend_inst/ip_header_0[56] ;
  wire \u1/ipsend_inst/ip_header_0[57] ;
  wire \u1/ipsend_inst/ip_header_0[58] ;
  wire \u1/ipsend_inst/ip_header_0[59] ;
  wire \u1/ipsend_inst/ip_header_0[60] ;
  wire \u1/ipsend_inst/ip_header_0[61] ;
  wire \u1/ipsend_inst/ip_header_0[62] ;
  wire \u1/ipsend_inst/ip_header_0[63] ;
  wire \u1/crc_inst/CrcNext<3>_bdd0 ;
  wire \u1/crc_inst/CrcNext<4>_bdd2 ;
  wire \u1/crc_inst/_n0229 ;
  wire \u1/iprecieve_inst/Mmux__n06053 ;
  wire \u1/iprecieve_inst/Mmux__n060531_1394 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In11_1395 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In14_1396 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In18_1397 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In110 ;
  wire \u1/iprecieve_inst/Mmux__n06054 ;
  wire \u1/iprecieve_inst/Mmux__n060541_1400 ;
  wire N0;
  wire N2;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In21_1403 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In22_1404 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In23_1405 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In24_1406 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In26_1407 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In27_1408 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In28_1409 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In29_1410 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In210_1411 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2-In212_1412 ;
  wire \u1/iprecieve_inst/Mmux__n06055 ;
  wire \u1/iprecieve_inst/Mmux__n060551_1414 ;
  wire \u1/iprecieve_inst/Mmux__n06052 ;
  wire \u1/iprecieve_inst/Mmux__n060521_1416 ;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd3-In33_1425 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd3-In34_1426 ;
  wire N20;
  wire N22;
  wire \u1/ipsend_inst/Mmux__n05192 ;
  wire \u1/ipsend_inst/Mmux__n051921_1430 ;
  wire \u1/ipsend_inst/Mmux__n051922_1431 ;
  wire \u1/ipsend_inst/Mmux__n05194 ;
  wire N24;
  wire \u1/ipsend_inst/Mmux__n057136 ;
  wire \u1/ipsend_inst/Mmux__n0571362 ;
  wire \u1/ipsend_inst/Mmux__n0571366 ;
  wire \u1/ipsend_inst/Mmux__n0571367_1437 ;
  wire \u1/ipsend_inst/Mmux__n0571368_1438 ;
  wire \u1/ipsend_inst/Mmux__n0571181 ;
  wire \u1/ipsend_inst/Mmux__n0571182_1440 ;
  wire \u1/ipsend_inst/Mmux__n0571184 ;
  wire \u1/ipsend_inst/Mmux__n0571185_1442 ;
  wire \u1/ipsend_inst/Mmux__n0571186_1443 ;
  wire \u1/ipsend_inst/Mmux__n0571187_1444 ;
  wire \u1/ipsend_inst/Mmux__n0571188_1445 ;
  wire \u1/ipsend_inst/Mmux__n0571189_1446 ;
  wire \u1/ipsend_inst/Mmux__n057161 ;
  wire \u1/ipsend_inst/Mmux__n057164 ;
  wire \u1/ipsend_inst/Mmux__n057167 ;
  wire \u1/ipsend_inst/Mmux__n057168_1450 ;
  wire \u1/ipsend_inst/Mmux__n057169_1451 ;
  wire \u1/ipsend_inst/Mmux__n0571610_1452 ;
  wire \u1/ipsend_inst/Mmux__n0571611_1453 ;
  wire \u1/ipsend_inst/Mmux__n057148 ;
  wire \u1/ipsend_inst/Mmux__n0571481_1455 ;
  wire \u1/ipsend_inst/Mmux__n0571482_1456 ;
  wire \u1/ipsend_inst/Mmux__n0571483_1457 ;
  wire \u1/ipsend_inst/Mmux__n0571484_1458 ;
  wire \u1/ipsend_inst/Mmux__n0571485_1459 ;
  wire \u1/ipsend_inst/Mmux__n0571486_1460 ;
  wire \u1/ipsend_inst/Mmux__n0571487_1461 ;
  wire \u1/ipsend_inst/Mmux__n0571488_1462 ;
  wire \u1/ipsend_inst/Mmux__n057142 ;
  wire \u1/ipsend_inst/Mmux__n0571422 ;
  wire \u1/ipsend_inst/Mmux__n0571423_1465 ;
  wire \u1/ipsend_inst/Mmux__n0571425 ;
  wire \u1/ipsend_inst/Mmux__n0571426_1467 ;
  wire \u1/ipsend_inst/Mmux__n0571427_1468 ;
  wire \u1/ipsend_inst/Mmux__n0571428_1469 ;
  wire \u1/ipsend_inst/Mmux__n0571429_1470 ;
  wire \u1/ipsend_inst/Mmux__n0571301 ;
  wire \u1/ipsend_inst/Mmux__n0571303 ;
  wire \u1/ipsend_inst/Mmux__n0571306 ;
  wire \u1/ipsend_inst/Mmux__n0571307_1474 ;
  wire \u1/ipsend_inst/Mmux__n0571308_1475 ;
  wire \u1/ipsend_inst/Mmux__n0571309_1476 ;
  wire \u1/ipsend_inst/Mmux__n05713010_1477 ;
  wire \u1/ipsend_inst/tx_state_FSM_FFd3-In1_1478 ;
  wire \u1/ipsend_inst/Mmux__n057112 ;
  wire \u1/ipsend_inst/Mmux__n0571123 ;
  wire \u1/ipsend_inst/Mmux__n0571126 ;
  wire \u1/ipsend_inst/Mmux__n0571127_1482 ;
  wire \u1/ipsend_inst/Mmux__n0571128_1483 ;
  wire \u1/ipsend_inst/Mmux__n0571129_1484 ;
  wire \u1/ipsend_inst/Mmux__n05711210_1485 ;
  wire \u1/ipsend_inst/Mmux__n0571241 ;
  wire \u1/ipsend_inst/Mmux__n0571242_1487 ;
  wire \u1/ipsend_inst/Mmux__n0571244 ;
  wire \u1/ipsend_inst/Mmux__n0571245_1489 ;
  wire \u1/ipsend_inst/Mmux__n0571246_1490 ;
  wire \u1/ipsend_inst/Mmux__n0571247_1491 ;
  wire \u1/ipsend_inst/Mmux__n0571248_1492 ;
  wire \u1/ipsend_inst/Mmux__n05712410 ;
  wire \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31> ;
  wire \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>1_1495 ;
  wire \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>2_1496 ;
  wire \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>3_1497 ;
  wire \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>4_1498 ;
  wire \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>5_1499 ;
  wire N26;
  wire \u1/crc_inst/CrcNext<12>1_1501 ;
  wire \u1/crc_inst/CrcNext<12>2_1502 ;
  wire \u1/crc_inst/CrcNext<13>1_1503 ;
  wire \u1/crc_inst/CrcNext<13>2_1504 ;
  wire N28;
  wire \u1/crc_inst/CrcNext<6>1_1506 ;
  wire \u1/crc_inst/CrcNext<6>2_1507 ;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire N50;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire ram_wr_finish_glue_set_1546;
  wire \u1/iprecieve_inst/data_receive_glue_set_1547 ;
  wire \Mcount_ram_addr_i_cy<1>_rt_1548 ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<3>_rt_1549 ;
  wire \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<0>_rt_1550 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>_rt_1551 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_rt_1552 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_rt_1553 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_rt_1554 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_rt_1555 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_rt_1556 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_rt_1557 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_rt_1558 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_rt_1559 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_rt_1560 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_rt_1561 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_rt_1562 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_rt_1563 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>_rt_1564 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<30>_rt_1565 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<29>_rt_1566 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<28>_rt_1567 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<27>_rt_1568 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<26>_rt_1569 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<25>_rt_1570 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<24>_rt_1571 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<23>_rt_1572 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<22>_rt_1573 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<21>_rt_1574 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<20>_rt_1575 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<19>_rt_1576 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<18>_rt_1577 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<17>_rt_1578 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<16>_rt_1579 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<15>_rt_1580 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<14>_rt_1581 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<13>_rt_1582 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<12>_rt_1583 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<11>_rt_1584 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<10>_rt_1585 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<9>_rt_1586 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<8>_rt_1587 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<7>_rt_1588 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<6>_rt_1589 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<5>_rt_1590 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<4>_rt_1591 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<3>_rt_1592 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<2>_rt_1593 ;
  wire \u1/ipsend_inst/Mcount_time_counter_cy<1>_rt_1594 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<14>_rt_1595 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<13>_rt_1596 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<12>_rt_1597 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<11>_rt_1598 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<10>_rt_1599 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<9>_rt_1600 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<7>_rt_1601 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<4>_rt_1602 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<0>_rt_1603 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>_rt_1604 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_rt_1605 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_rt_1606 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_rt_1607 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_rt_1608 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_rt_1609 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_rt_1610 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_rt_1611 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_rt_1612 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_rt_1613 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_rt_1614 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_rt_1615 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>_rt_1616 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_rt_1617 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_rt_1618 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_rt_1619 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_rt_1620 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_rt_1621 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_rt_1622 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_rt_1623 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_rt_1624 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_rt_1625 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_rt_1626 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_rt_1627 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_rt_1628 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_rt_1629 ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<3>_rt_1630 ;
  wire \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<0>_rt_1631 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_13_rt_1632 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_12_rt_1633 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_11_rt_1634 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_6_rt_1635 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_5_rt_1636 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_4_rt_1637 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_3_rt_1638 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_2_rt_1639 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_1_rt_1640 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_0_rt_1641 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_rt_1642 ;
  wire \Mcount_ram_addr_i_xor<2>_rt_1643 ;
  wire \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<15>_rt_1644 ;
  wire \u1/ipsend_inst/Mcount_time_counter_xor<31>_rt_1645 ;
  wire \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<15>_rt_1646 ;
  wire \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<15>_rt_1647 ;
  wire ram_wren_i_rstpot_1648;
  wire \u1/iprecieve_inst/data_o_valid_rstpot_1649 ;
  wire N62;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In19_lut_1651 ;
  wire \u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o_l1 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In19_lut1_1653 ;
  wire \u1/ipsend_inst/Mmux__n051941_lut_1654 ;
  wire \u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o_l1 ;
  wire \u1/ipsend_inst/Mmux__n051941_lut1_1656 ;
  wire \u1/ipsend_inst/Mmux__n060751_lut_1657 ;
  wire \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<17>_l1 ;
  wire \u1/ipsend_inst/Mmux__n060751_lut1_1659 ;
  wire \u1/ipsend_inst/tx_data_counter_0_dpot_1660 ;
  wire \u1/ipsend_inst/tx_data_counter_1_dpot_1661 ;
  wire \u1/ipsend_inst/tx_data_counter_2_dpot_1662 ;
  wire \u1/ipsend_inst/tx_data_counter_3_dpot_1663 ;
  wire \u1/ipsend_inst/tx_data_counter_4_dpot_1664 ;
  wire \u1/ipsend_inst/tx_data_counter_5_dpot_1665 ;
  wire \u1/ipsend_inst/tx_data_counter_6_dpot_1666 ;
  wire \u1/ipsend_inst/tx_data_counter_7_dpot_1667 ;
  wire \u1/ipsend_inst/tx_data_counter_8_dpot_1668 ;
  wire \u1/ipsend_inst/tx_data_counter_9_dpot_1669 ;
  wire \u1/ipsend_inst/tx_data_counter_10_dpot_1670 ;
  wire \u1/ipsend_inst/tx_data_counter_11_dpot_1671 ;
  wire \u1/ipsend_inst/tx_data_counter_12_dpot_1672 ;
  wire \u1/ipsend_inst/tx_data_counter_13_dpot_1673 ;
  wire \u1/ipsend_inst/tx_data_counter_14_dpot_1674 ;
  wire \u1/ipsend_inst/tx_data_counter_15_dpot_1675 ;
  wire \u1/ipsend_inst/_n0830_inv1_cepot ;
  wire \u1/ipsend_inst/ram_rd_addr_0_dpot_1677 ;
  wire \u1/ipsend_inst/ram_rd_addr_1_dpot_1678 ;
  wire \u1/ipsend_inst/ram_rd_addr_2_dpot_1679 ;
  wire \u1/ipsend_inst/ram_rd_addr_3_dpot_1680 ;
  wire \u1/ipsend_inst/ram_rd_addr_4_dpot_1681 ;
  wire \u1/ipsend_inst/ram_rd_addr_5_dpot_1682 ;
  wire \u1/ipsend_inst/ram_rd_addr_6_dpot_1683 ;
  wire \u1/ipsend_inst/ram_rd_addr_7_dpot_1684 ;
  wire \u1/ipsend_inst/ram_rd_addr_8_dpot_1685 ;
  wire N64;
  wire \u1/iprecieve_inst/mydata_23_rstpot_1687 ;
  wire \u1/iprecieve_inst/mydata_22_rstpot_1688 ;
  wire \u1/iprecieve_inst/mydata_21_rstpot_1689 ;
  wire \u1/iprecieve_inst/mydata_20_rstpot_1690 ;
  wire \u1/iprecieve_inst/mydata_19_rstpot_1691 ;
  wire \u1/iprecieve_inst/mydata_18_rstpot_1692 ;
  wire \u1/iprecieve_inst/mydata_17_rstpot_1693 ;
  wire \u1/iprecieve_inst/mydata_16_rstpot_1694 ;
  wire \u1/iprecieve_inst/mydata_15_rstpot_1695 ;
  wire \u1/iprecieve_inst/mydata_14_rstpot_1696 ;
  wire \u1/iprecieve_inst/mydata_13_rstpot_1697 ;
  wire \u1/iprecieve_inst/mydata_12_rstpot_1698 ;
  wire \u1/iprecieve_inst/mydata_11_rstpot_1699 ;
  wire \u1/iprecieve_inst/mydata_10_rstpot_1700 ;
  wire \u1/iprecieve_inst/mydata_9_rstpot_1701 ;
  wire \u1/iprecieve_inst/mydata_8_rstpot_1702 ;
  wire \u1/iprecieve_inst/mydata_7_rstpot_1703 ;
  wire \u1/iprecieve_inst/mydata_5_rstpot_1704 ;
  wire \u1/iprecieve_inst/mydata_3_rstpot_1705 ;
  wire \u1/iprecieve_inst/mydata_1_rstpot_1706 ;
  wire \u1/iprecieve_inst/ram_wr_addr_8_rstpot_1707 ;
  wire \u1/iprecieve_inst/ram_wr_addr_7_rstpot_1708 ;
  wire \u1/iprecieve_inst/ram_wr_addr_6_rstpot_1709 ;
  wire \u1/iprecieve_inst/ram_wr_addr_5_rstpot_1710 ;
  wire \u1/iprecieve_inst/ram_wr_addr_4_rstpot_1711 ;
  wire \u1/iprecieve_inst/ram_wr_addr_3_rstpot_1712 ;
  wire \u1/iprecieve_inst/ram_wr_addr_2_rstpot_1713 ;
  wire \u1/iprecieve_inst/ram_wr_addr_1_rstpot_1714 ;
  wire \u1/iprecieve_inst/ram_wr_addr_0_rstpot_1715 ;
  wire \u1/iprecieve_inst/mydata_6_rstpot_1716 ;
  wire \u1/iprecieve_inst/mydata_4_rstpot_1717 ;
  wire \u1/iprecieve_inst/mydata_2_rstpot_1718 ;
  wire \u1/iprecieve_inst/mydata_0_rstpot_1719 ;
  wire N68;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In110_l1 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In110_lut_1722 ;
  wire \u1/ipsend_inst/Mmux__n05194_l1 ;
  wire \u1/ipsend_inst/Mmux__n051943_lut_1724 ;
  wire N86;
  wire N88;
  wire N90;
  wire N92;
  wire N94;
  wire N96;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd4-In110_cy_rt_1731 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2_1_1732 ;
  wire \u1/iprecieve_inst/_n0736_inv1_1733 ;
  wire \u1/iprecieve_inst/_n0736_inv11 ;
  wire \u1/iprecieve_inst/_n0580_inv1_1735 ;
  wire \u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ;
  wire \u1/iprecieve_inst/data_o_0_dpot_1737 ;
  wire \u1/iprecieve_inst/data_o_1_dpot_1738 ;
  wire \u1/iprecieve_inst/data_o_2_dpot_1739 ;
  wire \u1/iprecieve_inst/data_o_3_dpot_1740 ;
  wire \u1/iprecieve_inst/data_o_4_dpot_1741 ;
  wire \u1/iprecieve_inst/data_o_5_dpot_1742 ;
  wire \u1/iprecieve_inst/data_o_6_dpot_1743 ;
  wire \u1/iprecieve_inst/data_o_7_dpot_1744 ;
  wire \u1/iprecieve_inst/data_o_8_dpot_1745 ;
  wire \u1/iprecieve_inst/data_o_9_dpot_1746 ;
  wire \u1/iprecieve_inst/data_o_10_dpot_1747 ;
  wire \u1/iprecieve_inst/data_o_11_dpot_1748 ;
  wire \u1/iprecieve_inst/data_o_12_dpot_1749 ;
  wire \u1/iprecieve_inst/data_o_13_dpot_1750 ;
  wire \u1/iprecieve_inst/data_o_14_dpot_1751 ;
  wire \u1/iprecieve_inst/data_o_15_dpot_1752 ;
  wire \u1/iprecieve_inst/data_o_16_dpot_1753 ;
  wire \u1/iprecieve_inst/data_o_17_dpot_1754 ;
  wire \u1/iprecieve_inst/data_o_18_dpot_1755 ;
  wire \u1/iprecieve_inst/data_o_19_dpot_1756 ;
  wire \u1/iprecieve_inst/data_o_20_dpot_1757 ;
  wire \u1/iprecieve_inst/data_o_21_dpot_1758 ;
  wire \u1/iprecieve_inst/data_o_22_dpot_1759 ;
  wire \u1/iprecieve_inst/data_o_23_dpot_1760 ;
  wire \u1/iprecieve_inst/data_o_24_dpot_1761 ;
  wire \u1/iprecieve_inst/data_o_25_dpot_1762 ;
  wire \u1/iprecieve_inst/data_o_26_dpot_1763 ;
  wire \u1/iprecieve_inst/data_o_27_dpot_1764 ;
  wire \u1/iprecieve_inst/data_o_28_dpot_1765 ;
  wire \u1/iprecieve_inst/data_o_29_dpot_1766 ;
  wire \u1/iprecieve_inst/data_o_30_dpot_1767 ;
  wire \u1/iprecieve_inst/data_o_31_dpot_1768 ;
  wire \u1/iprecieve_inst/byte_counter_0_1_1769 ;
  wire \u1/iprecieve_inst/byte_counter_1_1_1770 ;
  wire \u1/iprecieve_inst/_n0514_inv1_rstpot1 ;
  wire \u1/iprecieve_inst/rx_state_FSM_FFd2_2_1772 ;
  wire \u1/iprecieve_inst/_n0700_inv13 ;
  wire e_gtxc_OBUF_1774;
  wire N100;
  wire N101;
  wire N102;
  wire N103;
  wire N104;
  wire N105;
  wire N107;
  wire N109;
  wire N110;
  wire N111;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N118;
  wire N119;
  wire N120;
  wire N122;
  wire N123;
  wire \u1/iprecieve_inst/Mshreg_mymac_45_1795 ;
  wire \u1/iprecieve_inst/Mshreg_mymac_47_1796 ;
  wire \u1/iprecieve_inst/Mshreg_mymac_46_1797 ;
  wire \u1/iprecieve_inst/Mshreg_mymac_42_1798 ;
  wire \u1/iprecieve_inst/Mshreg_mymac_44_1799 ;
  wire \u1/iprecieve_inst/Mshreg_mymac_43_1800 ;
  wire \u1/iprecieve_inst/Mshreg_myIP_layer_127_1801 ;
  wire \u1/iprecieve_inst/Mshreg_mymac_41_1802 ;
  wire \u1/iprecieve_inst/Mshreg_mymac_40_1803 ;
  wire \u1/iprecieve_inst/Mshreg_myIP_layer_124_1804 ;
  wire \u1/iprecieve_inst/Mshreg_myIP_layer_126_1805 ;
  wire \u1/iprecieve_inst/Mshreg_myIP_layer_125_1806 ;
  wire \u1/iprecieve_inst/Mshreg_myIP_layer_121_1807 ;
  wire \u1/iprecieve_inst/Mshreg_myIP_layer_123_1808 ;
  wire \u1/iprecieve_inst/Mshreg_myIP_layer_122_1809 ;
  wire \u1/iprecieve_inst/Mshreg_myUDP_layer_14_1810 ;
  wire \u1/iprecieve_inst/Mshreg_myIP_layer_120_1811 ;
  wire \u1/iprecieve_inst/Mshreg_myUDP_layer_15_1812 ;
  wire \u1/iprecieve_inst/Mshreg_myUDP_layer_11_1813 ;
  wire \u1/iprecieve_inst/Mshreg_myUDP_layer_13_1814 ;
  wire \u1/iprecieve_inst/Mshreg_myUDP_layer_12_1815 ;
  wire \u1/iprecieve_inst/Mshreg_myUDP_layer_8_1816 ;
  wire \u1/iprecieve_inst/Mshreg_myUDP_layer_10_1817 ;
  wire \u1/iprecieve_inst/Mshreg_myUDP_layer_9_1818 ;
  wire \NLW_u1/iprecieve_inst/Mshreg_mymac_45_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_mymac_47_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_mymac_46_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_mymac_42_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_mymac_44_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_mymac_43_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myIP_layer_127_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_mymac_41_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_mymac_40_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myIP_layer_124_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myIP_layer_126_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myIP_layer_125_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myIP_layer_121_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myIP_layer_123_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myIP_layer_122_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_14_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myIP_layer_120_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_15_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_11_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_13_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_12_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_8_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_10_Q15_UNCONNECTED ;
  wire \NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_9_Q15_UNCONNECTED ;
  wire \NLW_ram_inst_out_wea<0>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<8>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<7>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<6>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<5>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<4>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<3>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<2>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<1>_UNCONNECTED ;
  wire \NLW_ram_inst_out_addra<0>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<31>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<30>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<29>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<28>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<27>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<26>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<25>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<24>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<23>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<22>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<21>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<20>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<19>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<18>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<17>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<16>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<15>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<14>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<13>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<12>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<11>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<10>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<9>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<8>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<7>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<6>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<5>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<4>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<3>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<2>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<1>_UNCONNECTED ;
  wire \NLW_ram_inst_out_dina<0>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<8>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<7>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<6>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<5>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<4>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<3>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<2>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<1>_UNCONNECTED ;
  wire \NLW_ram_inst_in_addrb<0>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<31>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<30>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<29>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<28>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<27>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<26>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<25>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<24>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<23>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<22>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<21>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<20>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<19>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<18>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<17>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<16>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<15>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<14>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<13>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<12>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<11>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<10>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<9>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<8>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<7>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<6>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<5>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<4>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<3>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<2>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<1>_UNCONNECTED ;
  wire \NLW_ram_inst_in_doutb<0>_UNCONNECTED ;
  wire [7 : 0] \u1/ipsend_inst/dataout ;
  wire [31 : 0] \u1/iprecieve_inst/data_o ;
  wire [15 : 0] \u1/iprecieve_inst/rx_total_length ;
  wire [15 : 0] \u1/iprecieve_inst/rx_data_length ;
  wire [8 : 0] \u1/iprecieve_inst/ram_wr_addr ;
  wire [8 : 0] \u1/ipsend_inst/ram_rd_addr ;
  wire [2 : 0] ram_addr_i;
  wire [15 : 0] tx_total_length;
  wire [15 : 0] tx_data_length;
  wire [31 : 0] ram_rd_data;
  wire [31 : 0] dina;
  wire [8 : 0] addra;
  wire [31 : 0] \u1/crc_inst/Crc ;
  wire [2 : 0] Result;
  wire [0 : 0] Mcount_ram_addr_i_lut;
  wire [1 : 0] Mcount_ram_addr_i_cy;
  wire [5 : 0] \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut ;
  wire [4 : 0] \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy ;
  wire [15 : 0] \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy ;
  wire [4 : 0] \u1/iprecieve_inst/state_counter ;
  wire [1 : 0] \u1/iprecieve_inst/byte_counter ;
  wire [8 : 0] \u1/iprecieve_inst/Mcount_ram_wr_addr_lut ;
  wire [7 : 0] \u1/iprecieve_inst/Mcount_ram_wr_addr_cy ;
  wire [16 : 0] \u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT ;
  wire [5 : 1] \u1/iprecieve_inst/_n0605 ;
  wire [3 : 2] \u1/iprecieve_inst/_n0519 ;
  wire [14 : 1] \u1/iprecieve_inst/_n0447 ;
  wire [143 : 128] \u1/iprecieve_inst/IP_layer ;
  wire [135 : 120] \u1/iprecieve_inst/myIP_layer ;
  wire [23 : 8] \u1/iprecieve_inst/myUDP_layer ;
  wire [23 : 0] \u1/iprecieve_inst/mydata ;
  wire [15 : 2] \u1/iprecieve_inst/data_counter ;
  wire [5 : 0] \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut ;
  wire [4 : 0] \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy ;
  wire [30 : 0] \u1/ipsend_inst/Mcount_time_counter_cy ;
  wire [0 : 0] \u1/ipsend_inst/Mcount_time_counter_lut ;
  wire [17 : 0] \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy ;
  wire [4 : 0] \u1/ipsend_inst/i ;
  wire [15 : 0] \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy ;
  wire [2 : 0] \u1/ipsend_inst/j ;
  wire [31 : 0] \u1/ipsend_inst/Result ;
  wire [8 : 0] \u1/ipsend_inst/Mcount_ram_rd_addr_lut ;
  wire [7 : 0] \u1/ipsend_inst/Mcount_ram_rd_addr_cy ;
  wire [15 : 0] \u1/ipsend_inst/Mcount_tx_data_counter_lut ;
  wire [14 : 0] \u1/ipsend_inst/Mcount_tx_data_counter_cy ;
  wire [0 : 0] \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy ;
  wire [0 : 0] \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy ;
  wire [0 : 0] \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy ;
  wire [0 : 0] \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut ;
  wire [4 : 0] \u1/ipsend_inst/_n0519 ;
  wire [7 : 0] \u1/ipsend_inst/_n0571 ;
  wire [2 : 0] \u1/ipsend_inst/_n0554 ;
  wire [31 : 13] \u1/ipsend_inst/_n0607 ;
  wire [16 : 0] \u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT ;
  wire [1 : 0] \u1/ipsend_inst/tx_state ;
  wire [31 : 0] \u1/ipsend_inst/time_counter ;
  wire [15 : 0] \u1/ipsend_inst/tx_data_counter ;
  wire [31 : 0] \u1/ipsend_inst/datain_reg ;
  wire [31 : 1] \u1/crc_inst/CrcNext ;
  VCC   XST_VCC (
    .P(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 )
  );
  GND   XST_GND (
    .G(e_txer_OBUF_102)
  );
  FDRE_1   tx_total_length_0 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [0]),
    .R(reset_n_inv),
    .Q(tx_total_length[0])
  );
  FDRE_1   tx_total_length_1 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [1]),
    .R(reset_n_inv),
    .Q(tx_total_length[1])
  );
  FDSE_1   tx_total_length_2 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [2]),
    .S(reset_n_inv),
    .Q(tx_total_length[2])
  );
  FDRE_1   tx_total_length_3 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [3]),
    .R(reset_n_inv),
    .Q(tx_total_length[3])
  );
  FDSE_1   tx_total_length_4 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [4]),
    .S(reset_n_inv),
    .Q(tx_total_length[4])
  );
  FDSE_1   tx_total_length_5 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [5]),
    .S(reset_n_inv),
    .Q(tx_total_length[5])
  );
  FDRE_1   tx_total_length_6 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [6]),
    .R(reset_n_inv),
    .Q(tx_total_length[6])
  );
  FDRE_1   tx_total_length_7 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [7]),
    .R(reset_n_inv),
    .Q(tx_total_length[7])
  );
  FDRE_1   tx_total_length_8 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [8]),
    .R(reset_n_inv),
    .Q(tx_total_length[8])
  );
  FDRE_1   tx_total_length_9 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [9]),
    .R(reset_n_inv),
    .Q(tx_total_length[9])
  );
  FDRE_1   tx_total_length_10 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [10]),
    .R(reset_n_inv),
    .Q(tx_total_length[10])
  );
  FDRE_1   tx_total_length_11 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [11]),
    .R(reset_n_inv),
    .Q(tx_total_length[11])
  );
  FDRE_1   tx_total_length_12 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [12]),
    .R(reset_n_inv),
    .Q(tx_total_length[12])
  );
  FDRE_1   tx_total_length_13 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [13]),
    .R(reset_n_inv),
    .Q(tx_total_length[13])
  );
  FDRE_1   tx_total_length_14 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [14]),
    .R(reset_n_inv),
    .Q(tx_total_length[14])
  );
  FDRE_1   tx_total_length_15 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_total_length [15]),
    .R(reset_n_inv),
    .Q(tx_total_length[15])
  );
  FDRE_1   tx_data_length_0 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [0]),
    .R(reset_n_inv),
    .Q(tx_data_length[0])
  );
  FDRE_1   tx_data_length_1 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [1]),
    .R(reset_n_inv),
    .Q(tx_data_length[1])
  );
  FDRE_1   tx_data_length_2 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [2]),
    .R(reset_n_inv),
    .Q(tx_data_length[2])
  );
  FDRE_1   tx_data_length_3 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [3]),
    .R(reset_n_inv),
    .Q(tx_data_length[3])
  );
  FDRE_1   tx_data_length_4 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [4]),
    .R(reset_n_inv),
    .Q(tx_data_length[4])
  );
  FDSE_1   tx_data_length_5 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [5]),
    .S(reset_n_inv),
    .Q(tx_data_length[5])
  );
  FDRE_1   tx_data_length_6 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [6]),
    .R(reset_n_inv),
    .Q(tx_data_length[6])
  );
  FDRE_1   tx_data_length_7 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [7]),
    .R(reset_n_inv),
    .Q(tx_data_length[7])
  );
  FDRE_1   tx_data_length_8 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [8]),
    .R(reset_n_inv),
    .Q(tx_data_length[8])
  );
  FDRE_1   tx_data_length_9 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [9]),
    .R(reset_n_inv),
    .Q(tx_data_length[9])
  );
  FDRE_1   tx_data_length_10 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [10]),
    .R(reset_n_inv),
    .Q(tx_data_length[10])
  );
  FDRE_1   tx_data_length_11 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [11]),
    .R(reset_n_inv),
    .Q(tx_data_length[11])
  );
  FDRE_1   tx_data_length_12 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [12]),
    .R(reset_n_inv),
    .Q(tx_data_length[12])
  );
  FDRE_1   tx_data_length_13 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [13]),
    .R(reset_n_inv),
    .Q(tx_data_length[13])
  );
  FDRE_1   tx_data_length_14 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [14]),
    .R(reset_n_inv),
    .Q(tx_data_length[14])
  );
  FDRE_1   tx_data_length_15 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/data_receive_104 ),
    .D(\u1/iprecieve_inst/rx_data_length [15]),
    .R(reset_n_inv),
    .Q(tx_data_length[15])
  );
  FDRE   ram_data_i_0 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(\Mram_i[2]_X_1_o_wide_mux_7_OUT ),
    .R(reset_n_inv),
    .Q(\ram_data_i[0] )
  );
  FDRE   ram_data_i_1 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(\Mram_i[2]_X_1_o_wide_mux_7_OUT1_263 ),
    .R(reset_n_inv),
    .Q(\ram_data_i[1] )
  );
  FDRE   ram_data_i_8 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .R(reset_n_inv),
    .Q(\ram_data_i[8] )
  );
  FDRE   ram_data_i_9 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(\Mram_i[2]_X_1_o_wide_mux_7_OUT10 ),
    .R(reset_n_inv),
    .Q(\ram_data_i[9] )
  );
  FDRE   ram_data_i_25 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(\Mram_i[2]_X_1_o_wide_mux_7_OUT25 ),
    .R(reset_n_inv),
    .Q(\ram_data_i[25] )
  );
  FDRE   ram_data_i_26 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(\Mram_i[2]_X_1_o_wide_mux_7_OUT26 ),
    .R(reset_n_inv),
    .Q(\ram_data_i[26] )
  );
  FDRE   ram_data_i_28 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(\Mram_i[2]_X_1_o_wide_mux_7_OUT28 ),
    .R(reset_n_inv),
    .Q(\ram_data_i[28] )
  );
  FDRE   ram_addr_i_0 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(Result[0]),
    .R(reset_n_inv),
    .Q(ram_addr_i[0])
  );
  FDRE   ram_addr_i_1 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(Result[1]),
    .R(reset_n_inv),
    .Q(ram_addr_i[1])
  );
  FDRE   ram_addr_i_2 (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(GND_1_o_GND_1_o_equal_6_o_inv),
    .D(Result[2]),
    .R(reset_n_inv),
    .Q(ram_addr_i[2])
  );
  MUXCY   \Mcount_ram_addr_i_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(Mcount_ram_addr_i_lut[0]),
    .O(Mcount_ram_addr_i_cy[0])
  );
  XORCY   \Mcount_ram_addr_i_xor<0>  (
    .CI(e_txer_OBUF_102),
    .LI(Mcount_ram_addr_i_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_ram_addr_i_cy<1>  (
    .CI(Mcount_ram_addr_i_cy[0]),
    .DI(e_txer_OBUF_102),
    .S(\Mcount_ram_addr_i_cy<1>_rt_1548 ),
    .O(Mcount_ram_addr_i_cy[1])
  );
  XORCY   \Mcount_ram_addr_i_xor<1>  (
    .CI(Mcount_ram_addr_i_cy[0]),
    .LI(\Mcount_ram_addr_i_cy<1>_rt_1548 ),
    .O(Result[1])
  );
  XORCY   \Mcount_ram_addr_i_xor<2>  (
    .CI(Mcount_ram_addr_i_cy[1]),
    .LI(\Mcount_ram_addr_i_xor<2>_rt_1643 ),
    .O(Result[2])
  );
  MUXCY   \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy<5>  (
    .CI(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [4]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [5]),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o )
  );
  LUT3 #(
    .INIT ( 8'h09 ))
  \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut<5>  (
    .I0(\u1/iprecieve_inst/data_counter [15]),
    .I1(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [15]),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [16]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [5])
  );
  MUXCY   \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy<4>  (
    .CI(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [3]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [4]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [4])
  );
  LUT6 #(
    .INIT ( 64'h8008200240041001 ))
  \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut<4>  (
    .I0(\u1/iprecieve_inst/data_counter [14]),
    .I1(\u1/iprecieve_inst/data_counter [13]),
    .I2(\u1/iprecieve_inst/data_counter [12]),
    .I3(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [12]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [13]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [14]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [4])
  );
  MUXCY   \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy<3>  (
    .CI(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [2]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [3]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h8008200240041001 ))
  \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut<3>  (
    .I0(\u1/iprecieve_inst/data_counter [11]),
    .I1(\u1/iprecieve_inst/data_counter [10]),
    .I2(\u1/iprecieve_inst/data_counter [9]),
    .I3(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [9]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [10]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [11]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [3])
  );
  MUXCY   \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy<2>  (
    .CI(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [1]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [2]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [2])
  );
  LUT6 #(
    .INIT ( 64'h8008200240041001 ))
  \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut<2>  (
    .I0(\u1/iprecieve_inst/data_counter [8]),
    .I1(\u1/iprecieve_inst/data_counter [7]),
    .I2(\u1/iprecieve_inst/data_counter [6]),
    .I3(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [6]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [7]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [8]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [2])
  );
  MUXCY   \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy<1>  (
    .CI(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [0]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [1]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [1])
  );
  LUT6 #(
    .INIT ( 64'h8008200240041001 ))
  \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut<1>  (
    .I0(\u1/iprecieve_inst/data_counter [5]),
    .I1(\u1/iprecieve_inst/data_counter [4]),
    .I2(\u1/iprecieve_inst/data_counter [3]),
    .I3(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [3]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [4]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [5]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [1])
  );
  MUXCY   \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [0]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h8008200240041001 ))
  \u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut<0>  (
    .I0(\u1/iprecieve_inst/data_counter [2]),
    .I1(\u1/iprecieve_inst/byte_counter_1_1_1770 ),
    .I2(\u1/iprecieve_inst/byte_counter_0_1_1769 ),
    .I3(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [1]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [2]),
    .O(\u1/iprecieve_inst/Mcompar_GND_6_o_GND_6_o_equal_73_o_lut [0])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<16>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [15]),
    .LI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [16])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<15>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [14]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[15] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [15])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<15>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [14]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[15] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [15])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<14>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [13]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[14] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [14])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<14>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [13]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[14] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [14])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<13>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [12]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[13] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [13])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<13>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [12]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[13] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [13])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<12>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [11]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[12] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [12])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<12>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [11]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[12] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [12])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<11>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [10]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[11] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [11])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<11>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [10]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[11] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [11])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<10>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [9]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[10] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [10])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<10>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [9]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[10] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [10])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<9>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [8]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[9] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [9])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<9>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [8]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[9] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [9])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<8>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [7]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[8] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [8])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<8>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [7]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[8] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [8])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<7>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [6]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[7] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [7])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<7>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [6]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[7] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [7])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<6>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [5]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[6] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [6])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<6>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [5]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[6] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [6])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<5>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [4]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[5] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [5])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<5>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [4]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[5] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [5])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<4>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [3]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[4] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [4])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<4>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [3]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[4] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [4])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<3>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [2]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<3>_rt_1549 ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [3])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<3>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [2]),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<3>_rt_1549 ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [3])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<2>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [1]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[2] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [2])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<2>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [1]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[2] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [2])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<1>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [0]),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[1] ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [1])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<1>  (
    .CI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [0]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[1] ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [1])
  );
  XORCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_xor<0>  (
    .CI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .LI(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<0>_rt_1550 ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_sub_72_OUT [0])
  );
  MUXCY   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<0>  (
    .CI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<0>_rt_1550 ),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy [0])
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<15>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>_330 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<15>_rt_1644 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<15> )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<14>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_331 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>_rt_1551 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<14> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_331 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>_rt_1551 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>_330 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<13>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_332 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_rt_1552 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<13> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_332 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_rt_1552 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_331 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<12>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_333 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_rt_1553 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<12> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_333 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_rt_1553 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_332 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<11>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_334 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_rt_1554 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<11> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_334 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_rt_1554 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_333 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<10>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_335 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_rt_1555 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<10> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_335 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_rt_1555 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_334 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<9>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_336 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_rt_1556 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<9> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_336 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_rt_1556 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_335 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<8>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_337 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_rt_1557 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<8> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_337 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_rt_1557 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_336 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<7>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_338 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_rt_1558 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<7> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_338 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_rt_1558 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_337 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<6>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_339 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_rt_1559 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<6> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_339 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_rt_1559 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_338 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<5>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_340 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_rt_1560 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<5> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_340 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_rt_1560 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_339 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<4>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_341 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_rt_1561 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<4> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_341 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_rt_1561 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_340 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<3>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_342 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_rt_1562 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<3> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_342 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_rt_1562 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_341 )
  );
  XORCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<2>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>_343 ),
    .LI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_rt_1563 ),
    .O(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<2> )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>_343 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_rt_1563 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_342 )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>  (
    .CI(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<0>_344 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>_rt_1564 ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>_343 )
  );
  MUXCY   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_lut<0> ),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<0>_344 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/rx_state_FSM_FFd1-In ),
    .R(reset_n_inv),
    .Q(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/rx_state_FSM_FFd2-In2 ),
    .R(\u1/iprecieve_inst/e_rxdv_0 ),
    .Q(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/rx_state_FSM_FFd3-In3 ),
    .R(\u1/iprecieve_inst/e_rxdv_0 ),
    .Q(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/rx_state_FSM_FFd4-In1 ),
    .R(\u1/iprecieve_inst/e_rxdv_0 ),
    .Q(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 )
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<8>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [7]),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [8]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr8 )
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<7>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [6]),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [7]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr7 )
  );
  MUXCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_cy<7>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [6]),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [7]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [7])
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<6>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [5]),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [6]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr6 )
  );
  MUXCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_cy<6>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [5]),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [6]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [6])
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<5>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [4]),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [5]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr5 )
  );
  MUXCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_cy<5>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [4]),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [5]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [5])
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<4>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [3]),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [4]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr4 )
  );
  MUXCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_cy<4>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [3]),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [4]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [4])
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<3>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [2]),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [3]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr3 )
  );
  MUXCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_cy<3>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [2]),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [3]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [3])
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<2>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [1]),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [2]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr2 )
  );
  MUXCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_cy<2>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [1]),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [2]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [2])
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<1>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [0]),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [1]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr1 )
  );
  MUXCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_cy<1>  (
    .CI(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [0]),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [1]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [1])
  );
  XORCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_xor<0>  (
    .CI(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .LI(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [0]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr )
  );
  MUXCY   \u1/iprecieve_inst/Mcount_ram_wr_addr_cy<0>  (
    .CI(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [0]),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_cy [0])
  );
  FDE   \u1/iprecieve_inst/data_o_31  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_31_dpot_1768 ),
    .Q(\u1/iprecieve_inst/data_o [31])
  );
  FDE   \u1/iprecieve_inst/data_o_30  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_30_dpot_1767 ),
    .Q(\u1/iprecieve_inst/data_o [30])
  );
  FDE   \u1/iprecieve_inst/data_o_29  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_29_dpot_1766 ),
    .Q(\u1/iprecieve_inst/data_o [29])
  );
  FDE   \u1/iprecieve_inst/data_o_28  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_28_dpot_1765 ),
    .Q(\u1/iprecieve_inst/data_o [28])
  );
  FDE   \u1/iprecieve_inst/data_o_27  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_27_dpot_1764 ),
    .Q(\u1/iprecieve_inst/data_o [27])
  );
  FDE   \u1/iprecieve_inst/data_o_26  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_26_dpot_1763 ),
    .Q(\u1/iprecieve_inst/data_o [26])
  );
  FDE   \u1/iprecieve_inst/data_o_25  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_25_dpot_1762 ),
    .Q(\u1/iprecieve_inst/data_o [25])
  );
  FDE   \u1/iprecieve_inst/data_o_24  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_24_dpot_1761 ),
    .Q(\u1/iprecieve_inst/data_o [24])
  );
  FDE   \u1/iprecieve_inst/data_o_23  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_23_dpot_1760 ),
    .Q(\u1/iprecieve_inst/data_o [23])
  );
  FDE   \u1/iprecieve_inst/data_o_22  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_22_dpot_1759 ),
    .Q(\u1/iprecieve_inst/data_o [22])
  );
  FDE   \u1/iprecieve_inst/data_o_21  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_21_dpot_1758 ),
    .Q(\u1/iprecieve_inst/data_o [21])
  );
  FDE   \u1/iprecieve_inst/data_o_20  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_20_dpot_1757 ),
    .Q(\u1/iprecieve_inst/data_o [20])
  );
  FDE   \u1/iprecieve_inst/data_o_19  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_19_dpot_1756 ),
    .Q(\u1/iprecieve_inst/data_o [19])
  );
  FDE   \u1/iprecieve_inst/data_o_18  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_18_dpot_1755 ),
    .Q(\u1/iprecieve_inst/data_o [18])
  );
  FDE   \u1/iprecieve_inst/data_o_17  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_17_dpot_1754 ),
    .Q(\u1/iprecieve_inst/data_o [17])
  );
  FDE   \u1/iprecieve_inst/data_o_16  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_16_dpot_1753 ),
    .Q(\u1/iprecieve_inst/data_o [16])
  );
  FDE   \u1/iprecieve_inst/data_o_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_15_dpot_1752 ),
    .Q(\u1/iprecieve_inst/data_o [15])
  );
  FDE   \u1/iprecieve_inst/data_o_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_14_dpot_1751 ),
    .Q(\u1/iprecieve_inst/data_o [14])
  );
  FDE   \u1/iprecieve_inst/data_o_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_13_dpot_1750 ),
    .Q(\u1/iprecieve_inst/data_o [13])
  );
  FDE   \u1/iprecieve_inst/data_o_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_12_dpot_1749 ),
    .Q(\u1/iprecieve_inst/data_o [12])
  );
  FDE   \u1/iprecieve_inst/data_o_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_11_dpot_1748 ),
    .Q(\u1/iprecieve_inst/data_o [11])
  );
  FDE   \u1/iprecieve_inst/data_o_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_10_dpot_1747 ),
    .Q(\u1/iprecieve_inst/data_o [10])
  );
  FDE   \u1/iprecieve_inst/data_o_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_9_dpot_1746 ),
    .Q(\u1/iprecieve_inst/data_o [9])
  );
  FDE   \u1/iprecieve_inst/data_o_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_8_dpot_1745 ),
    .Q(\u1/iprecieve_inst/data_o [8])
  );
  FDE   \u1/iprecieve_inst/data_o_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_7_dpot_1744 ),
    .Q(\u1/iprecieve_inst/data_o [7])
  );
  FDE   \u1/iprecieve_inst/data_o_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_6_dpot_1743 ),
    .Q(\u1/iprecieve_inst/data_o [6])
  );
  FDE   \u1/iprecieve_inst/data_o_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_5_dpot_1742 ),
    .Q(\u1/iprecieve_inst/data_o [5])
  );
  FDE   \u1/iprecieve_inst/data_o_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_4_dpot_1741 ),
    .Q(\u1/iprecieve_inst/data_o [4])
  );
  FDE   \u1/iprecieve_inst/data_o_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_3_dpot_1740 ),
    .Q(\u1/iprecieve_inst/data_o [3])
  );
  FDE   \u1/iprecieve_inst/data_o_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_2_dpot_1739 ),
    .Q(\u1/iprecieve_inst/data_o [2])
  );
  FDE   \u1/iprecieve_inst/data_o_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_1_dpot_1738 ),
    .Q(\u1/iprecieve_inst/data_o [1])
  );
  FDE   \u1/iprecieve_inst/data_o_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0691_inv3 ),
    .D(\u1/iprecieve_inst/data_o_0_dpot_1737 ),
    .Q(\u1/iprecieve_inst/data_o [0])
  );
  FDE   \u1/iprecieve_inst/byte_counter_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0519 [2]),
    .Q(\u1/iprecieve_inst/byte_counter [1])
  );
  FDE   \u1/iprecieve_inst/byte_counter_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0519 [3]),
    .Q(\u1/iprecieve_inst/byte_counter [0])
  );
  FDE   \u1/iprecieve_inst/state_counter_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0645_inv_380 ),
    .D(\u1/iprecieve_inst/_n0605 [1]),
    .Q(\u1/iprecieve_inst/state_counter [4])
  );
  FDE   \u1/iprecieve_inst/state_counter_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0645_inv_380 ),
    .D(\u1/iprecieve_inst/_n0605 [2]),
    .Q(\u1/iprecieve_inst/state_counter [3])
  );
  FDE   \u1/iprecieve_inst/state_counter_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0645_inv_380 ),
    .D(\u1/iprecieve_inst/_n0605 [3]),
    .Q(\u1/iprecieve_inst/state_counter [2])
  );
  FDE   \u1/iprecieve_inst/state_counter_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0645_inv_380 ),
    .D(\u1/iprecieve_inst/_n0605 [4]),
    .Q(\u1/iprecieve_inst/state_counter [1])
  );
  FDE   \u1/iprecieve_inst/state_counter_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0645_inv_380 ),
    .D(\u1/iprecieve_inst/_n0605 [5]),
    .Q(\u1/iprecieve_inst/state_counter [0])
  );
  FDE   \u1/iprecieve_inst/data_counter_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [1]),
    .Q(\u1/iprecieve_inst/data_counter [15])
  );
  FDE   \u1/iprecieve_inst/data_counter_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [2]),
    .Q(\u1/iprecieve_inst/data_counter [14])
  );
  FDE   \u1/iprecieve_inst/data_counter_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [3]),
    .Q(\u1/iprecieve_inst/data_counter [13])
  );
  FDE   \u1/iprecieve_inst/data_counter_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [4]),
    .Q(\u1/iprecieve_inst/data_counter [12])
  );
  FDE   \u1/iprecieve_inst/data_counter_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [5]),
    .Q(\u1/iprecieve_inst/data_counter [11])
  );
  FDE   \u1/iprecieve_inst/data_counter_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [6]),
    .Q(\u1/iprecieve_inst/data_counter [10])
  );
  FDE   \u1/iprecieve_inst/data_counter_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [7]),
    .Q(\u1/iprecieve_inst/data_counter [9])
  );
  FDE   \u1/iprecieve_inst/data_counter_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [8]),
    .Q(\u1/iprecieve_inst/data_counter [8])
  );
  FDE   \u1/iprecieve_inst/data_counter_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [9]),
    .Q(\u1/iprecieve_inst/data_counter [7])
  );
  FDE   \u1/iprecieve_inst/data_counter_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [10]),
    .Q(\u1/iprecieve_inst/data_counter [6])
  );
  FDE   \u1/iprecieve_inst/data_counter_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [11]),
    .Q(\u1/iprecieve_inst/data_counter [5])
  );
  FDE   \u1/iprecieve_inst/data_counter_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [12]),
    .Q(\u1/iprecieve_inst/data_counter [4])
  );
  FDE   \u1/iprecieve_inst/data_counter_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [13]),
    .Q(\u1/iprecieve_inst/data_counter [3])
  );
  FDE   \u1/iprecieve_inst/data_counter_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0447 [14]),
    .Q(\u1/iprecieve_inst/data_counter [2])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [143]),
    .Q(\u1/iprecieve_inst/rx_total_length [15])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [142]),
    .Q(\u1/iprecieve_inst/rx_total_length [14])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [141]),
    .Q(\u1/iprecieve_inst/rx_total_length [13])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [140]),
    .Q(\u1/iprecieve_inst/rx_total_length [12])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [139]),
    .Q(\u1/iprecieve_inst/rx_total_length [11])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [138]),
    .Q(\u1/iprecieve_inst/rx_total_length [10])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [137]),
    .Q(\u1/iprecieve_inst/rx_total_length [9])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [136]),
    .Q(\u1/iprecieve_inst/rx_total_length [8])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [135]),
    .Q(\u1/iprecieve_inst/rx_total_length [7])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [134]),
    .Q(\u1/iprecieve_inst/rx_total_length [6])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [133]),
    .Q(\u1/iprecieve_inst/rx_total_length [5])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [132]),
    .Q(\u1/iprecieve_inst/rx_total_length [4])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [131]),
    .Q(\u1/iprecieve_inst/rx_total_length [3])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [130]),
    .Q(\u1/iprecieve_inst/rx_total_length [2])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [129]),
    .Q(\u1/iprecieve_inst/rx_total_length [1])
  );
  FDE   \u1/iprecieve_inst/rx_total_length_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0583_inv ),
    .D(\u1/iprecieve_inst/IP_layer [128]),
    .Q(\u1/iprecieve_inst/rx_total_length [0])
  );
  FDE   \u1/iprecieve_inst/IP_layer_143  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [135]),
    .Q(\u1/iprecieve_inst/IP_layer [143])
  );
  FDE   \u1/iprecieve_inst/IP_layer_142  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [134]),
    .Q(\u1/iprecieve_inst/IP_layer [142])
  );
  FDE   \u1/iprecieve_inst/IP_layer_141  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [133]),
    .Q(\u1/iprecieve_inst/IP_layer [141])
  );
  FDE   \u1/iprecieve_inst/IP_layer_140  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [132]),
    .Q(\u1/iprecieve_inst/IP_layer [140])
  );
  FDE   \u1/iprecieve_inst/IP_layer_139  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [131]),
    .Q(\u1/iprecieve_inst/IP_layer [139])
  );
  FDE   \u1/iprecieve_inst/IP_layer_138  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [130]),
    .Q(\u1/iprecieve_inst/IP_layer [138])
  );
  FDE   \u1/iprecieve_inst/IP_layer_137  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [129]),
    .Q(\u1/iprecieve_inst/IP_layer [137])
  );
  FDE   \u1/iprecieve_inst/IP_layer_136  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [128]),
    .Q(\u1/iprecieve_inst/IP_layer [136])
  );
  FDE   \u1/iprecieve_inst/IP_layer_135  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [127]),
    .Q(\u1/iprecieve_inst/IP_layer [135])
  );
  FDE   \u1/iprecieve_inst/IP_layer_134  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [126]),
    .Q(\u1/iprecieve_inst/IP_layer [134])
  );
  FDE   \u1/iprecieve_inst/IP_layer_133  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [125]),
    .Q(\u1/iprecieve_inst/IP_layer [133])
  );
  FDE   \u1/iprecieve_inst/IP_layer_132  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [124]),
    .Q(\u1/iprecieve_inst/IP_layer [132])
  );
  FDE   \u1/iprecieve_inst/IP_layer_131  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [123]),
    .Q(\u1/iprecieve_inst/IP_layer [131])
  );
  FDE   \u1/iprecieve_inst/IP_layer_130  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [122]),
    .Q(\u1/iprecieve_inst/IP_layer [130])
  );
  FDE   \u1/iprecieve_inst/IP_layer_129  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [121]),
    .Q(\u1/iprecieve_inst/IP_layer [129])
  );
  FDE   \u1/iprecieve_inst/IP_layer_128  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0709_inv ),
    .D(\u1/iprecieve_inst/myIP_layer [120]),
    .Q(\u1/iprecieve_inst/IP_layer [128])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [23]),
    .Q(\u1/iprecieve_inst/rx_data_length [15])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [22]),
    .Q(\u1/iprecieve_inst/rx_data_length [14])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [21]),
    .Q(\u1/iprecieve_inst/rx_data_length [13])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [20]),
    .Q(\u1/iprecieve_inst/rx_data_length [12])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [19]),
    .Q(\u1/iprecieve_inst/rx_data_length [11])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [18]),
    .Q(\u1/iprecieve_inst/rx_data_length [10])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [17]),
    .Q(\u1/iprecieve_inst/rx_data_length [9])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [16]),
    .Q(\u1/iprecieve_inst/rx_data_length [8])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [15]),
    .Q(\u1/iprecieve_inst/rx_data_length [7])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [14]),
    .Q(\u1/iprecieve_inst/rx_data_length [6])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [13]),
    .Q(\u1/iprecieve_inst/rx_data_length [5])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [12]),
    .Q(\u1/iprecieve_inst/rx_data_length [4])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [11]),
    .Q(\u1/iprecieve_inst/rx_data_length [3])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [10]),
    .Q(\u1/iprecieve_inst/rx_data_length [2])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [9]),
    .Q(\u1/iprecieve_inst/rx_data_length [1])
  );
  FDE   \u1/iprecieve_inst/rx_data_length_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0654_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [8]),
    .Q(\u1/iprecieve_inst/rx_data_length [0])
  );
  FDE   \u1/iprecieve_inst/mymac_87  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[79] ),
    .Q(\u1/iprecieve_inst/mymac[87] )
  );
  FDE   \u1/iprecieve_inst/mymac_86  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[78] ),
    .Q(\u1/iprecieve_inst/mymac[86] )
  );
  FDE   \u1/iprecieve_inst/mymac_85  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[77] ),
    .Q(\u1/iprecieve_inst/mymac[85] )
  );
  FDE   \u1/iprecieve_inst/mymac_84  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[76] ),
    .Q(\u1/iprecieve_inst/mymac[84] )
  );
  FDE   \u1/iprecieve_inst/mymac_83  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[75] ),
    .Q(\u1/iprecieve_inst/mymac[83] )
  );
  FDE   \u1/iprecieve_inst/mymac_82  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[74] ),
    .Q(\u1/iprecieve_inst/mymac[82] )
  );
  FDE   \u1/iprecieve_inst/mymac_81  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[73] ),
    .Q(\u1/iprecieve_inst/mymac[81] )
  );
  FDE   \u1/iprecieve_inst/mymac_80  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[72] ),
    .Q(\u1/iprecieve_inst/mymac[80] )
  );
  FDE   \u1/iprecieve_inst/mymac_79  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[71] ),
    .Q(\u1/iprecieve_inst/mymac[79] )
  );
  FDE   \u1/iprecieve_inst/mymac_78  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[70] ),
    .Q(\u1/iprecieve_inst/mymac[78] )
  );
  FDE   \u1/iprecieve_inst/mymac_77  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[69] ),
    .Q(\u1/iprecieve_inst/mymac[77] )
  );
  FDE   \u1/iprecieve_inst/mymac_76  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[68] ),
    .Q(\u1/iprecieve_inst/mymac[76] )
  );
  FDE   \u1/iprecieve_inst/mymac_75  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[67] ),
    .Q(\u1/iprecieve_inst/mymac[75] )
  );
  FDE   \u1/iprecieve_inst/mymac_74  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[66] ),
    .Q(\u1/iprecieve_inst/mymac[74] )
  );
  FDE   \u1/iprecieve_inst/mymac_73  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[65] ),
    .Q(\u1/iprecieve_inst/mymac[73] )
  );
  FDE   \u1/iprecieve_inst/mymac_72  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[64] ),
    .Q(\u1/iprecieve_inst/mymac[72] )
  );
  FDE   \u1/iprecieve_inst/mymac_71  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[63] ),
    .Q(\u1/iprecieve_inst/mymac[71] )
  );
  FDE   \u1/iprecieve_inst/mymac_70  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[62] ),
    .Q(\u1/iprecieve_inst/mymac[70] )
  );
  FDE   \u1/iprecieve_inst/mymac_69  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[61] ),
    .Q(\u1/iprecieve_inst/mymac[69] )
  );
  FDE   \u1/iprecieve_inst/mymac_68  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[60] ),
    .Q(\u1/iprecieve_inst/mymac[68] )
  );
  FDE   \u1/iprecieve_inst/mymac_67  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[59] ),
    .Q(\u1/iprecieve_inst/mymac[67] )
  );
  FDE   \u1/iprecieve_inst/mymac_66  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[58] ),
    .Q(\u1/iprecieve_inst/mymac[66] )
  );
  FDE   \u1/iprecieve_inst/mymac_65  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[57] ),
    .Q(\u1/iprecieve_inst/mymac[65] )
  );
  FDE   \u1/iprecieve_inst/mymac_64  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv11 ),
    .D(\u1/iprecieve_inst/mymac[56] ),
    .Q(\u1/iprecieve_inst/mymac[64] )
  );
  FDE   \u1/iprecieve_inst/mymac_63  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[55] ),
    .Q(\u1/iprecieve_inst/mymac[63] )
  );
  FDE   \u1/iprecieve_inst/mymac_62  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[54] ),
    .Q(\u1/iprecieve_inst/mymac[62] )
  );
  FDE   \u1/iprecieve_inst/mymac_61  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[53] ),
    .Q(\u1/iprecieve_inst/mymac[61] )
  );
  FDE   \u1/iprecieve_inst/mymac_60  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[52] ),
    .Q(\u1/iprecieve_inst/mymac[60] )
  );
  FDE   \u1/iprecieve_inst/mymac_59  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[51] ),
    .Q(\u1/iprecieve_inst/mymac[59] )
  );
  FDE   \u1/iprecieve_inst/mymac_58  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[50] ),
    .Q(\u1/iprecieve_inst/mymac[58] )
  );
  FDE   \u1/iprecieve_inst/mymac_57  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[49] ),
    .Q(\u1/iprecieve_inst/mymac[57] )
  );
  FDE   \u1/iprecieve_inst/mymac_56  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[48] ),
    .Q(\u1/iprecieve_inst/mymac[56] )
  );
  FDE   \u1/iprecieve_inst/mymac_55  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[47] ),
    .Q(\u1/iprecieve_inst/mymac[55] )
  );
  FDE   \u1/iprecieve_inst/mymac_54  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[46] ),
    .Q(\u1/iprecieve_inst/mymac[54] )
  );
  FDE   \u1/iprecieve_inst/mymac_53  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[45] ),
    .Q(\u1/iprecieve_inst/mymac[53] )
  );
  FDE   \u1/iprecieve_inst/mymac_52  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[44] ),
    .Q(\u1/iprecieve_inst/mymac[52] )
  );
  FDE   \u1/iprecieve_inst/mymac_51  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[43] ),
    .Q(\u1/iprecieve_inst/mymac[51] )
  );
  FDE   \u1/iprecieve_inst/mymac_50  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[42] ),
    .Q(\u1/iprecieve_inst/mymac[50] )
  );
  FDE   \u1/iprecieve_inst/mymac_49  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[41] ),
    .Q(\u1/iprecieve_inst/mymac[49] )
  );
  FDE   \u1/iprecieve_inst/mymac_48  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv1_1733 ),
    .D(\u1/iprecieve_inst/mymac[40] ),
    .Q(\u1/iprecieve_inst/mymac[48] )
  );
  FDE   \u1/iprecieve_inst/mymac_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(e_rxd_7_IBUF_0),
    .Q(\u1/iprecieve_inst/mymac[7] )
  );
  FDE   \u1/iprecieve_inst/mymac_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(e_rxd_6_IBUF_1),
    .Q(\u1/iprecieve_inst/mymac[6] )
  );
  FDE   \u1/iprecieve_inst/mymac_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(e_rxd_5_IBUF_2),
    .Q(\u1/iprecieve_inst/mymac[5] )
  );
  FDE   \u1/iprecieve_inst/mymac_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(e_rxd_4_IBUF_3),
    .Q(\u1/iprecieve_inst/mymac[4] )
  );
  FDE   \u1/iprecieve_inst/mymac_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(e_rxd_3_IBUF_4),
    .Q(\u1/iprecieve_inst/mymac[3] )
  );
  FDE   \u1/iprecieve_inst/mymac_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(e_rxd_2_IBUF_5),
    .Q(\u1/iprecieve_inst/mymac[2] )
  );
  FDE   \u1/iprecieve_inst/mymac_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(e_rxd_1_IBUF_6),
    .Q(\u1/iprecieve_inst/mymac[1] )
  );
  FDE   \u1/iprecieve_inst/mymac_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(e_rxd_0_IBUF_7),
    .Q(\u1/iprecieve_inst/mymac[0] )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_135  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv13 ),
    .D(\u1/iprecieve_inst/myIP_layer [127]),
    .Q(\u1/iprecieve_inst/myIP_layer [135])
  );
  FDE   \u1/iprecieve_inst/myIP_layer_134  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv13 ),
    .D(\u1/iprecieve_inst/myIP_layer [126]),
    .Q(\u1/iprecieve_inst/myIP_layer [134])
  );
  FDE   \u1/iprecieve_inst/myIP_layer_133  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv13 ),
    .D(\u1/iprecieve_inst/myIP_layer [125]),
    .Q(\u1/iprecieve_inst/myIP_layer [133])
  );
  FDE   \u1/iprecieve_inst/myIP_layer_132  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv13 ),
    .D(\u1/iprecieve_inst/myIP_layer [124]),
    .Q(\u1/iprecieve_inst/myIP_layer [132])
  );
  FDE   \u1/iprecieve_inst/myIP_layer_131  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv13 ),
    .D(\u1/iprecieve_inst/myIP_layer [123]),
    .Q(\u1/iprecieve_inst/myIP_layer [131])
  );
  FDE   \u1/iprecieve_inst/myIP_layer_130  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv13 ),
    .D(\u1/iprecieve_inst/myIP_layer [122]),
    .Q(\u1/iprecieve_inst/myIP_layer [130])
  );
  FDE   \u1/iprecieve_inst/myIP_layer_129  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv13 ),
    .D(\u1/iprecieve_inst/myIP_layer [121]),
    .Q(\u1/iprecieve_inst/myIP_layer [129])
  );
  FDE   \u1/iprecieve_inst/myIP_layer_128  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv13 ),
    .D(\u1/iprecieve_inst/myIP_layer [120]),
    .Q(\u1/iprecieve_inst/myIP_layer [128])
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_23  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [15]),
    .Q(\u1/iprecieve_inst/myUDP_layer [23])
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_22  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [14]),
    .Q(\u1/iprecieve_inst/myUDP_layer [22])
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_21  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [13]),
    .Q(\u1/iprecieve_inst/myUDP_layer [21])
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_20  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [12]),
    .Q(\u1/iprecieve_inst/myUDP_layer [20])
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_19  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [11]),
    .Q(\u1/iprecieve_inst/myUDP_layer [19])
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_18  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [10]),
    .Q(\u1/iprecieve_inst/myUDP_layer [18])
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_17  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [9]),
    .Q(\u1/iprecieve_inst/myUDP_layer [17])
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_16  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/myUDP_layer [8]),
    .Q(\u1/iprecieve_inst/myUDP_layer [16])
  );
  MUXCY   \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy<5>  (
    .CI(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [4]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [5]),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o )
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut<5>  (
    .I0(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [16]),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [15]),
    .I2(\u1/ipsend_inst/tx_data_counter [15]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [5])
  );
  MUXCY   \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy<4>  (
    .CI(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [3]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [4]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [4])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut<4>  (
    .I0(\u1/ipsend_inst/tx_data_counter [12]),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [12]),
    .I2(\u1/ipsend_inst/tx_data_counter [13]),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [13]),
    .I4(\u1/ipsend_inst/tx_data_counter [14]),
    .I5(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [14]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [4])
  );
  MUXCY   \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy<3>  (
    .CI(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [2]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [3]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut<3>  (
    .I0(\u1/ipsend_inst/tx_data_counter [9]),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [9]),
    .I2(\u1/ipsend_inst/tx_data_counter [10]),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [10]),
    .I4(\u1/ipsend_inst/tx_data_counter [11]),
    .I5(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [11]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [3])
  );
  MUXCY   \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy<2>  (
    .CI(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [1]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [2]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [2])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut<2>  (
    .I0(\u1/ipsend_inst/tx_data_counter [6]),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [6]),
    .I2(\u1/ipsend_inst/tx_data_counter [7]),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [7]),
    .I4(\u1/ipsend_inst/tx_data_counter [8]),
    .I5(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [8]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [2])
  );
  MUXCY   \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy<1>  (
    .CI(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [0]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [1]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [1])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut<1>  (
    .I0(\u1/ipsend_inst/tx_data_counter [3]),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [3]),
    .I2(\u1/ipsend_inst/tx_data_counter [4]),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [4]),
    .I4(\u1/ipsend_inst/tx_data_counter [5]),
    .I5(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [5]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [1])
  );
  MUXCY   \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [0]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut<0>  (
    .I0(\u1/ipsend_inst/tx_data_counter [0]),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [0]),
    .I2(\u1/ipsend_inst/tx_data_counter [1]),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [1]),
    .I4(\u1/ipsend_inst/tx_data_counter [2]),
    .I5(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [2]),
    .O(\u1/ipsend_inst/Mcompar_GND_3_o_GND_3_o_equal_98_o_lut [0])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<31>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [30]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_xor<31>_rt_1645 ),
    .O(\u1/ipsend_inst/Result [31])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<30>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [29]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<30>_rt_1565 ),
    .O(\u1/ipsend_inst/Result [30])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<30>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [29]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<30>_rt_1565 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [30])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<29>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [28]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<29>_rt_1566 ),
    .O(\u1/ipsend_inst/Result [29])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<29>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [28]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<29>_rt_1566 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [29])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<28>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [27]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<28>_rt_1567 ),
    .O(\u1/ipsend_inst/Result [28])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<28>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [27]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<28>_rt_1567 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [28])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<27>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [26]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<27>_rt_1568 ),
    .O(\u1/ipsend_inst/Result [27])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<27>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [26]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<27>_rt_1568 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [27])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<26>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [25]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<26>_rt_1569 ),
    .O(\u1/ipsend_inst/Result [26])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<26>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [25]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<26>_rt_1569 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [26])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<25>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [24]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<25>_rt_1570 ),
    .O(\u1/ipsend_inst/Result [25])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<25>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [24]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<25>_rt_1570 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [25])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<24>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [23]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<24>_rt_1571 ),
    .O(\u1/ipsend_inst/Result [24])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<24>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [23]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<24>_rt_1571 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [24])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<23>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [22]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<23>_rt_1572 ),
    .O(\u1/ipsend_inst/Result [23])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<23>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [22]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<23>_rt_1572 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [23])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<22>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [21]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<22>_rt_1573 ),
    .O(\u1/ipsend_inst/Result [22])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<22>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [21]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<22>_rt_1573 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [22])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<21>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [20]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<21>_rt_1574 ),
    .O(\u1/ipsend_inst/Result [21])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<21>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [20]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<21>_rt_1574 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [21])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<20>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [19]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<20>_rt_1575 ),
    .O(\u1/ipsend_inst/Result [20])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<20>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [19]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<20>_rt_1575 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [20])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<19>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [18]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<19>_rt_1576 ),
    .O(\u1/ipsend_inst/Result [19])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<19>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [18]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<19>_rt_1576 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [19])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<18>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [17]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<18>_rt_1577 ),
    .O(\u1/ipsend_inst/Result [18])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<18>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [17]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<18>_rt_1577 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [18])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<17>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [16]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<17>_rt_1578 ),
    .O(\u1/ipsend_inst/Result [17])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<17>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [16]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<17>_rt_1578 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [17])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<16>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [15]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<16>_rt_1579 ),
    .O(\u1/ipsend_inst/Result [16])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<16>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [15]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<16>_rt_1579 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [16])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<15>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [14]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<15>_rt_1580 ),
    .O(\u1/ipsend_inst/Result [15])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<15>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [14]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<15>_rt_1580 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [15])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<14>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [13]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<14>_rt_1581 ),
    .O(\u1/ipsend_inst/Result [14])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<14>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [13]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<14>_rt_1581 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [14])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<13>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [12]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<13>_rt_1582 ),
    .O(\u1/ipsend_inst/Result [13])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<13>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [12]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<13>_rt_1582 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [13])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<12>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [11]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<12>_rt_1583 ),
    .O(\u1/ipsend_inst/Result [12])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<12>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [11]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<12>_rt_1583 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [12])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<11>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [10]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<11>_rt_1584 ),
    .O(\u1/ipsend_inst/Result [11])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<11>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [10]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<11>_rt_1584 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [11])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<10>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [9]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<10>_rt_1585 ),
    .O(\u1/ipsend_inst/Result [10])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<10>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [9]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<10>_rt_1585 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [10])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<9>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [8]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<9>_rt_1586 ),
    .O(\u1/ipsend_inst/Result [9])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<9>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [8]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<9>_rt_1586 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [9])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<8>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [7]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<8>_rt_1587 ),
    .O(\u1/ipsend_inst/Result [8])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<8>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [7]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<8>_rt_1587 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [8])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<7>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [6]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<7>_rt_1588 ),
    .O(\u1/ipsend_inst/Result [7])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<7>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [6]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<7>_rt_1588 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [7])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<6>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [5]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<6>_rt_1589 ),
    .O(\u1/ipsend_inst/Result [6])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<6>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [5]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<6>_rt_1589 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [6])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<5>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [4]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<5>_rt_1590 ),
    .O(\u1/ipsend_inst/Result [5])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<5>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [4]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<5>_rt_1590 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [5])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<4>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [3]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<4>_rt_1591 ),
    .O(\u1/ipsend_inst/Result [4])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<4>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [3]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<4>_rt_1591 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [4])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<3>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [2]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<3>_rt_1592 ),
    .O(\u1/ipsend_inst/Result [3])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<3>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [2]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<3>_rt_1592 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [3])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<2>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [1]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<2>_rt_1593 ),
    .O(\u1/ipsend_inst/Result [2])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<2>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [1]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<2>_rt_1593 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [2])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<1>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [0]),
    .LI(\u1/ipsend_inst/Mcount_time_counter_cy<1>_rt_1594 ),
    .O(\u1/ipsend_inst/Result [1])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<1>  (
    .CI(\u1/ipsend_inst/Mcount_time_counter_cy [0]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_time_counter_cy<1>_rt_1594 ),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [1])
  );
  XORCY   \u1/ipsend_inst/Mcount_time_counter_xor<0>  (
    .CI(e_txer_OBUF_102),
    .LI(\u1/ipsend_inst/Mcount_time_counter_lut [0]),
    .O(\u1/ipsend_inst/Result [0])
  );
  MUXCY   \u1/ipsend_inst/Mcount_time_counter_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mcount_time_counter_lut [0]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy [0])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<17>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [16]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[17] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_178 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<17>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [16]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_173 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[17] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<17>  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_177 ),
    .I1(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_173 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[17] )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<16>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [15]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[16] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_168 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<16>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [15]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_163 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[16] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<16>  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_167 ),
    .I1(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_163 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[16] )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<15>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [14]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[15] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_158 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<15>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [14]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_153 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[15] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<15>  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_157 ),
    .I1(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_153 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[15] )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<14>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [13]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<14>_rt_1595 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_148 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<14>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [13]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[14] ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<14>_rt_1595 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [14])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<13>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [12]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<13>_rt_1596 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_138 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<13>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [12]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<13>_rt_1596 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [13])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<12>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [11]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<12>_rt_1597 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_1210 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<12>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [11]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<12>_rt_1597 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [12])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<11>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [10]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<11>_rt_1598 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_1112 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<11>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [10]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<11>_rt_1598 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [11])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<10>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [9]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<10>_rt_1599 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_108 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<10>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [9]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<10>_rt_1599 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [10])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<9>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [8]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<9>_rt_1600 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_98 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<9>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [8]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[9] ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<9>_rt_1600 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [9])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<8>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [7]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[8] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_88 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<8>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [7]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_83 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[8] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [8])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<7>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [6]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<7>_rt_1601 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_78 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<7>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [6]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[7] ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<7>_rt_1601 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [7])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<6>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [5]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[6] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_68 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<6>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [5]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_63 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[6] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [6])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<5>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [4]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[5] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_58 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<5>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [4]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_53 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[5] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [5])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<4>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [3]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<4>_rt_1602 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_48 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<4>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [3]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[4] ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<4>_rt_1602 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [4])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<3>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [2]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[3] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_38 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<3>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [2]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_33 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[3] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<3>  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_37 ),
    .I1(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_33 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[3] )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<2>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [1]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[2] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_219 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<2>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [1]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_27 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[2] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<2>  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_217 ),
    .I1(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_27 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[2] )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<1>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [0]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[1] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_129 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<1>  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [0]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_114 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[1] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<1>  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_127 ),
    .I1(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_114 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[1] )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_xor<0>  (
    .CI(e_txer_OBUF_102),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<0>_rt_1603 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_08 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[0] ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<0>_rt_1603 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [0])
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<15>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>_709 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<15>_rt_1646 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<15> )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<14>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_711 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>_rt_1604 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<14> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_711 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>_rt_1604 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>_709 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<13>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_713 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_rt_1605 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<13> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_713 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_rt_1605 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_711 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<12>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_715 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_rt_1606 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<12> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_715 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_rt_1606 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_713 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<11>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_717 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_rt_1607 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<11> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_717 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_rt_1607 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_715 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<10>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_719 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_rt_1608 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<10> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_719 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_rt_1608 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_717 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<9>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_721 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_rt_1609 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<9> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_721 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_rt_1609 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_719 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<8>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_723 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_rt_1610 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<8> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_723 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_rt_1610 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_721 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<7>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_725 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_rt_1611 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<7> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_725 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_rt_1611 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_723 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<6>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_727 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_rt_1612 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<6> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_727 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_rt_1612 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_725 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<5>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_729 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_rt_1613 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<5> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_729 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_rt_1613 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_727 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<4>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_731 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_rt_1614 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<4> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_731 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_rt_1614 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_729 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<3>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<2>_733 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_rt_1615 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<3> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<2>_733 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_rt_1615 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_731 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<2>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<1>_735 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<2>_734 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<2> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<2>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<1>_735 ),
    .DI(\u1/ipsend_inst/check_buffer_18_1223 ),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<2>_734 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<2>_733 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<2>  (
    .I0(\u1/ipsend_inst/check_buffer_18_1223 ),
    .I1(\u1/ipsend_inst/check_buffer_2_1220 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<2>_734 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<1>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<0>_737 ),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<1>_736 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<1> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<1>  (
    .CI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<0>_737 ),
    .DI(\u1/ipsend_inst/check_buffer_17_1222 ),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<1>_736 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<1>_735 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<1>  (
    .I0(\u1/ipsend_inst/check_buffer_17_1222 ),
    .I1(\u1/ipsend_inst/check_buffer_1_1219 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<1>_736 )
  );
  XORCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<0>  (
    .CI(e_txer_OBUF_102),
    .LI(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<0>_738 ),
    .O(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<0> )
  );
  MUXCY   \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(\u1/ipsend_inst/check_buffer_16_1221 ),
    .S(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<0>_738 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<0>_737 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<0>  (
    .I0(\u1/ipsend_inst/check_buffer_16_1221 ),
    .I1(\u1/ipsend_inst/check_buffer_0_1218 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_lut<0>_738 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<15>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>_739 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<15>_rt_1647 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<15> )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<14>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_740 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>_rt_1616 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<14> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_740 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>_rt_1616 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>_739 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<13>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_741 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_rt_1617 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<13> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_741 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_rt_1617 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_740 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<12>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_742 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_rt_1618 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<12> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_742 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_rt_1618 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_741 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<11>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_743 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_rt_1619 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<11> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_743 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_rt_1619 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_742 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<10>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_744 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_rt_1620 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<10> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_744 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_rt_1620 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_743 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<9>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_745 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_rt_1621 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<9> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_745 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_rt_1621 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_744 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<8>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_746 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_rt_1622 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<8> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_746 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_rt_1622 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_745 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<7>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_747 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_rt_1623 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<7> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_747 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_rt_1623 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_746 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<6>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_748 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_rt_1624 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<6> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_748 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_rt_1624 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_747 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<5>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_749 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_rt_1625 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<5> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_749 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_rt_1625 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_748 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<4>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_750 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_rt_1626 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<4> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_750 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_rt_1626 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_749 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<3>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_751 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_rt_1627 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<3> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_751 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_rt_1627 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_750 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<2>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_752 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_rt_1628 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<2> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_752 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_rt_1628 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_751 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<1>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<0>_753 ),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_rt_1629 ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<1> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>  (
    .CI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<0>_753 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_rt_1629 ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_752 )
  );
  XORCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<0>  (
    .CI(e_txer_OBUF_102),
    .LI(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_lut<0> ),
    .O(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<0> )
  );
  MUXCY   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_lut<0> ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<0>_753 )
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<16>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [15]),
    .LI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [16])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<15>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [14]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[15] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [15])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<15>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [14]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[15] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [15])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<14>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [13]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[14] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [14])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<14>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [13]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[14] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [14])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<13>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [12]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[13] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [13])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<13>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [12]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[13] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [13])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<12>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [11]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[12] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [12])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<12>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [11]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[12] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [12])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<11>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [10]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[11] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [11])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<11>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [10]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[11] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [11])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<10>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [9]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[10] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [10])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<10>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [9]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[10] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [10])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<9>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [8]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[9] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [9])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<9>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [8]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[9] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [9])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<8>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [7]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[8] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [8])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<8>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [7]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[8] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [8])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<7>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [6]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[7] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [7])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<7>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [6]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[7] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [7])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<6>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [5]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[6] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [6])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<6>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [5]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[6] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [6])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<5>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [4]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[5] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [5])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<5>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [4]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[5] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [5])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<4>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [3]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[4] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [4])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<4>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [3]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[4] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [4])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<3>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [2]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<3>_rt_1630 ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [3])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<3>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [2]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<3>_rt_1630 ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [3])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<2>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [1]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[2] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [2])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<2>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [1]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[2] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [2])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<1>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [0]),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[1] ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [1])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<1>  (
    .CI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [0]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[1] ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [1])
  );
  XORCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_xor<0>  (
    .CI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .LI(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<0>_rt_1631 ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_sub_97_OUT [0])
  );
  MUXCY   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<0>  (
    .CI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<0>_rt_1631 ),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy [0])
  );
  FDRE   \u1/ipsend_inst/time_counter_31  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [31]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [31])
  );
  FDRE   \u1/ipsend_inst/time_counter_30  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [30]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [30])
  );
  FDRE   \u1/ipsend_inst/time_counter_29  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [29]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [29])
  );
  FDRE   \u1/ipsend_inst/time_counter_28  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [28]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [28])
  );
  FDRE   \u1/ipsend_inst/time_counter_27  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [27]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [27])
  );
  FDRE   \u1/ipsend_inst/time_counter_26  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [26]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [26])
  );
  FDRE   \u1/ipsend_inst/time_counter_25  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [25]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [25])
  );
  FDRE   \u1/ipsend_inst/time_counter_24  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [24]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [24])
  );
  FDRE   \u1/ipsend_inst/time_counter_23  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [23]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [23])
  );
  FDRE   \u1/ipsend_inst/time_counter_22  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [22]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [22])
  );
  FDRE   \u1/ipsend_inst/time_counter_21  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [21]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [21])
  );
  FDRE   \u1/ipsend_inst/time_counter_20  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [20]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [20])
  );
  FDRE   \u1/ipsend_inst/time_counter_19  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [19]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [19])
  );
  FDRE   \u1/ipsend_inst/time_counter_18  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [18]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [18])
  );
  FDRE   \u1/ipsend_inst/time_counter_17  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [17]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [17])
  );
  FDRE   \u1/ipsend_inst/time_counter_16  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [16]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [16])
  );
  FDRE   \u1/ipsend_inst/time_counter_15  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [15]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [15])
  );
  FDRE   \u1/ipsend_inst/time_counter_14  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [14]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [14])
  );
  FDRE   \u1/ipsend_inst/time_counter_13  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [13]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [13])
  );
  FDRE   \u1/ipsend_inst/time_counter_12  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [12]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [12])
  );
  FDRE   \u1/ipsend_inst/time_counter_11  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [11]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [11])
  );
  FDRE   \u1/ipsend_inst/time_counter_10  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [10]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [10])
  );
  FDRE   \u1/ipsend_inst/time_counter_9  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [9]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [9])
  );
  FDRE   \u1/ipsend_inst/time_counter_8  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [8]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [8])
  );
  FDRE   \u1/ipsend_inst/time_counter_7  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [7]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [7])
  );
  FDRE   \u1/ipsend_inst/time_counter_6  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [6]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [6])
  );
  FDRE   \u1/ipsend_inst/time_counter_5  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [5]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [5])
  );
  FDRE   \u1/ipsend_inst/time_counter_4  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [4]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [4])
  );
  FDRE   \u1/ipsend_inst/time_counter_3  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [3]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [3])
  );
  FDRE   \u1/ipsend_inst/time_counter_2  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [2]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [2])
  );
  FDRE   \u1/ipsend_inst/time_counter_1  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [1]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [1])
  );
  FDRE   \u1/ipsend_inst/time_counter_0  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o ),
    .D(\u1/ipsend_inst/Result [0]),
    .R(\u1/ipsend_inst/_n0723 ),
    .Q(\u1/ipsend_inst/time_counter [0])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \u1/ipsend_inst/tx_state_FSM_FFd1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/tx_state_FSM_FFd1-In ),
    .Q(\u1/ipsend_inst/tx_state_FSM_FFd1_851 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \u1/ipsend_inst/tx_state_FSM_FFd2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/tx_state_FSM_FFd2-In_855 ),
    .Q(\u1/ipsend_inst/tx_state_FSM_FFd2_852 )
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_8  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_8_dpot_1685 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [8])
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_7  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_7_dpot_1684 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [7])
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_6  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_6_dpot_1683 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [6])
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_5  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_5_dpot_1682 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [5])
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_4  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_4_dpot_1681 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [4])
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_3  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_3_dpot_1680 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [3])
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_2  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_2_dpot_1679 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [2])
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_1  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_1_dpot_1678 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [1])
  );
  FDE   \u1/ipsend_inst/ram_rd_addr_0  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/ram_rd_addr_0_dpot_1677 ),
    .Q(\u1/ipsend_inst/ram_rd_addr [0])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_15  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_15_dpot_1675 ),
    .Q(\u1/ipsend_inst/tx_data_counter [15])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_14  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_14_dpot_1674 ),
    .Q(\u1/ipsend_inst/tx_data_counter [14])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_13  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_13_dpot_1673 ),
    .Q(\u1/ipsend_inst/tx_data_counter [13])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_12  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_12_dpot_1672 ),
    .Q(\u1/ipsend_inst/tx_data_counter [12])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_11  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_11_dpot_1671 ),
    .Q(\u1/ipsend_inst/tx_data_counter [11])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_10  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_10_dpot_1670 ),
    .Q(\u1/ipsend_inst/tx_data_counter [10])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_9  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_9_dpot_1669 ),
    .Q(\u1/ipsend_inst/tx_data_counter [9])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_8  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_8_dpot_1668 ),
    .Q(\u1/ipsend_inst/tx_data_counter [8])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_7  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_7_dpot_1667 ),
    .Q(\u1/ipsend_inst/tx_data_counter [7])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_6  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_6_dpot_1666 ),
    .Q(\u1/ipsend_inst/tx_data_counter [6])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_5  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_5_dpot_1665 ),
    .Q(\u1/ipsend_inst/tx_data_counter [5])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_4  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_4_dpot_1664 ),
    .Q(\u1/ipsend_inst/tx_data_counter [4])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_3  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_3_dpot_1663 ),
    .Q(\u1/ipsend_inst/tx_data_counter [3])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_2  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_2_dpot_1662 ),
    .Q(\u1/ipsend_inst/tx_data_counter [2])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_1  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_1_dpot_1661 ),
    .Q(\u1/ipsend_inst/tx_data_counter [1])
  );
  FDE   \u1/ipsend_inst/tx_data_counter_0  (
    .C(\u1/ipsend_inst/clk_inv ),
    .CE(\u1/ipsend_inst/_n0830_inv1_cepot ),
    .D(\u1/ipsend_inst/tx_data_counter_0_dpot_1660 ),
    .Q(\u1/ipsend_inst/tx_data_counter [0])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \u1/ipsend_inst/tx_state_FSM_FFd3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/tx_state_FSM_FFd3-In ),
    .Q(\u1/ipsend_inst/tx_state_FSM_FFd3_853 )
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<8>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [7]),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [8]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr8 )
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<7>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [6]),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [7]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr7 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_ram_rd_addr_cy<7>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [6]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [7]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [7])
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<6>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [5]),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [6]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr6 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_ram_rd_addr_cy<6>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [5]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [6]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [6])
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<5>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [4]),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [5]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr5 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_ram_rd_addr_cy<5>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [4]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [5]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [5])
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<4>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [3]),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [4]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr4 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_ram_rd_addr_cy<4>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [3]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [4]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [4])
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<3>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [2]),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [3]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr3 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_ram_rd_addr_cy<3>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [2]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [3]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [3])
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<2>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [1]),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [2]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr2 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_ram_rd_addr_cy<2>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [1]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [2]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [2])
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<1>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [0]),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [1]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr1 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_ram_rd_addr_cy<1>  (
    .CI(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [0]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [1]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [1])
  );
  XORCY   \u1/ipsend_inst/Mcount_ram_rd_addr_xor<0>  (
    .CI(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .LI(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [0]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr )
  );
  MUXCY   \u1/ipsend_inst/Mcount_ram_rd_addr_cy<0>  (
    .CI(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [0]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_cy [0])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<15>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [14]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [15]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter15 )
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<14>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [13]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [14]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter14 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<14>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [13]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [14]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [14])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<13>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [12]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [13]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter13 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<13>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [12]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [13]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [13])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<12>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [11]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [12]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter12 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<12>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [11]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [12]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [12])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<11>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [10]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [11]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter11 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<11>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [10]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [11]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [11])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<10>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [9]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [10]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter10 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<10>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [9]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [10]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [10])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<9>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [8]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [9]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter9 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<9>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [8]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [9]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [9])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<8>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [7]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [8]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter8 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<8>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [7]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [8]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [8])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<7>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [6]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [7]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter7 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<7>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [6]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [7]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [7])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<6>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [5]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [6]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter6 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<6>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [5]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [6]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [6])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<5>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [4]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [5]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter5 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<5>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [4]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [5]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [5])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<4>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [3]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [4]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter4 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<4>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [3]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [4]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [4])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<3>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [2]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [3]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter3 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<3>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [2]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [3]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [3])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<2>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [1]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [2]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter2 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<2>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [1]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [2]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [2])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<1>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [0]),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [1]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter1 )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<1>  (
    .CI(\u1/ipsend_inst/Mcount_tx_data_counter_cy [0]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [1]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [1])
  );
  XORCY   \u1/ipsend_inst/Mcount_tx_data_counter_xor<0>  (
    .CI(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .LI(\u1/ipsend_inst/Mcount_tx_data_counter_lut [0]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter )
  );
  MUXCY   \u1/ipsend_inst/Mcount_tx_data_counter_cy<0>  (
    .CI(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mcount_tx_data_counter_lut [0]),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_cy [0])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_xor<0>_16  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>16 ),
    .LI(e_txer_OBUF_102),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_177 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_xor<0>_15  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>15 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>16 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_167 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>_15  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>15 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd76_908 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>16 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>16 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd76  (
    .I0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .I1(e_txer_OBUF_102),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd76_908 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_xor<0>_14  (
    .CI(e_txer_OBUF_102),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>15_910 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_157 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>_14  (
    .CI(e_txer_OBUF_102),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>15_910 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>15 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>15  (
    .I0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .I1(e_txer_OBUF_102),
    .I2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>15_910 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_xor<0>_2  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>2 ),
    .LI(e_txer_OBUF_102),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_37 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_xor<0>_1  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>1 ),
    .LI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_217 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>_1  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>1 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd71_912 ),
    .S(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd71  (
    .I0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .I1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd71_912 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_xor<0>_0  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy [0]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>1_914 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_127 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>_0  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy [0]),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>1_914 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>1 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>1  (
    .I0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .I1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .I2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>1_914 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(e_txer_OBUF_102),
    .S(e_txer_OBUF_102),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_cy [0])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_15  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>15 ),
    .LI(e_txer_OBUF_102),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_161 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_14  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>14 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>15 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_151 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_14  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>14 ),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>15 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>15 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_13  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>13 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_13_rt_1632 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_141 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_13  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>13 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_13_rt_1632 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>14 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_12  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>12 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_12_rt_1633 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_131 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_12  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>12 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_12_rt_1633 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>13 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_11  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>11 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_11_rt_1634 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_121 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_11  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>11 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_11_rt_1634 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>12 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_10  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>10 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>11_925 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_111 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_10  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>10 ),
    .DI(\u1/ipsend_inst/ip_header_0[10] ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>11_925 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>11 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>11  (
    .I0(\u1/ipsend_inst/ip_header_0[11] ),
    .I1(\u1/ipsend_inst/ip_header_0[10] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>11_925 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_9  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>9 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>10 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_101 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_9  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>9 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>10 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>10 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_8  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>8 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>9_930 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_91 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_8  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>8 ),
    .DI(\u1/ipsend_inst/ip_header_0[8] ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>9_930 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>9  (
    .I0(\u1/ipsend_inst/ip_header_0[9] ),
    .I1(\u1/ipsend_inst/ip_header_0[8] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>9_930 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_7  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>7 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>8 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_81 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_7  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>7 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>8 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>8 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_6  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>6 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_6_rt_1635 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_71 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_6  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>6 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_6_rt_1635 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>7 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_5  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>5 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_5_rt_1636 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_61 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_5  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>5 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_5_rt_1636 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>6 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_4  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>4 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_4_rt_1637 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_51 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_4  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>4 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_4_rt_1637 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>5 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_3  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>3 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_3_rt_1638 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_41 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_3  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>3 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_3_rt_1638 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>4 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_2  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>2 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_2_rt_1639 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_31 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_2  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>2 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_2_rt_1639 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>3 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_1  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>1 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_1_rt_1640 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_25 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_1  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>1 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_1_rt_1640 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>2 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>_0  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy [0]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_0_rt_1641 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_110 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_0  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy [0]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_0_rt_1641 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>1 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_xor<0>  (
    .CI(e_txer_OBUF_102),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_rt_1642 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_01 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_rt_1642 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy [0])
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_16  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>16 ),
    .LI(e_txer_OBUF_102),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_173 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_15  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>15 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>16_951 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_163 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_15  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>15 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_161 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>16_951 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>16 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>16  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_161 ),
    .I1(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd315_952 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>16_951 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd315  (
    .I0(\u1/ipsend_inst/ip_header_0[63] ),
    .I1(\u1/ipsend_inst/ip_header_0[79] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_151 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd315_952 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_14  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>14 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>15_954 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_153 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_14  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>14 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd314_955 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>15_954 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>15 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>15  (
    .I0(\u1/ipsend_inst/ip_header_0[63] ),
    .I1(\u1/ipsend_inst/ip_header_0[79] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_151 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd314_955 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>15_954 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd314  (
    .I0(\u1/ipsend_inst/ip_header_0[62] ),
    .I1(\u1/ipsend_inst/ip_header_0[78] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_141 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd314_955 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_13  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>13 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>14_957 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[14] )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_13  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>13 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd313_958 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>14_957 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>14 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>14  (
    .I0(\u1/ipsend_inst/ip_header_0[62] ),
    .I1(\u1/ipsend_inst/ip_header_0[78] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_141 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd313_958 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>14_957 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd313  (
    .I0(\u1/ipsend_inst/ip_header_0[61] ),
    .I1(\u1/ipsend_inst/ip_header_0[77] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_131 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd313_958 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_12  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>12 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>13_960 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_133 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_12  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>12 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd312_961 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>13_960 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>13 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>13  (
    .I0(\u1/ipsend_inst/ip_header_0[61] ),
    .I1(\u1/ipsend_inst/ip_header_0[77] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_131 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd312_961 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>13_960 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd312  (
    .I0(\u1/ipsend_inst/ip_header_0[60] ),
    .I1(\u1/ipsend_inst/ip_header_0[76] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_121 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd312_961 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_11  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>11 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>12_963 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_123 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_11  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>11 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd311_964 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>12_963 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>12 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>12  (
    .I0(\u1/ipsend_inst/ip_header_0[60] ),
    .I1(\u1/ipsend_inst/ip_header_0[76] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_121 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd311_964 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>12_963 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd311  (
    .I0(\u1/ipsend_inst/ip_header_0[59] ),
    .I1(\u1/ipsend_inst/ip_header_0[75] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_111 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd311_964 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_10  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>10 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>11_966 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_115 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_10  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>10 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd310_967 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>11_966 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>11 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>11  (
    .I0(\u1/ipsend_inst/ip_header_0[59] ),
    .I1(\u1/ipsend_inst/ip_header_0[75] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_111 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd310_967 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>11_966 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd310  (
    .I0(\u1/ipsend_inst/ip_header_0[58] ),
    .I1(\u1/ipsend_inst/ip_header_0[74] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_101 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd310_967 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_9  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>9 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>10_969 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_103 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_9  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>9 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd39_970 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>10_969 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>10 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>10  (
    .I0(\u1/ipsend_inst/ip_header_0[58] ),
    .I1(\u1/ipsend_inst/ip_header_0[74] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_101 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd39_970 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>10_969 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd39  (
    .I0(\u1/ipsend_inst/ip_header_0[57] ),
    .I1(\u1/ipsend_inst/ip_header_0[73] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_91 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd39_970 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_8  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>8 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>9_972 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[9] )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_8  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>8 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd38_973 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>9_972 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>9 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>9  (
    .I0(\u1/ipsend_inst/ip_header_0[57] ),
    .I1(\u1/ipsend_inst/ip_header_0[73] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_91 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd38_973 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>9_972 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd38  (
    .I0(\u1/ipsend_inst/ip_header_0[56] ),
    .I1(\u1/ipsend_inst/ip_header_0[72] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_81 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd38_973 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_7  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>7 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>8_975 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_83 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_7  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>7 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd37_976 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>8_975 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>8 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>8  (
    .I0(\u1/ipsend_inst/ip_header_0[56] ),
    .I1(\u1/ipsend_inst/ip_header_0[72] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_81 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd37_976 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>8_975 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd37  (
    .I0(\u1/ipsend_inst/ip_header_0[55] ),
    .I1(\u1/ipsend_inst/ip_header_0[71] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_71 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd37_976 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_6  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>6 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>7_978 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[7] )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_6  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>6 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd36_979 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>7_978 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>7 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>7  (
    .I0(\u1/ipsend_inst/ip_header_0[55] ),
    .I1(\u1/ipsend_inst/ip_header_0[71] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_71 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd36_979 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>7_978 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd36  (
    .I0(\u1/ipsend_inst/ip_header_0[54] ),
    .I1(\u1/ipsend_inst/ip_header_0[70] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_61 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd36_979 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_5  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>5 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>6_981 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_63 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_5  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>5 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd35_982 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>6_981 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>6 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>6  (
    .I0(\u1/ipsend_inst/ip_header_0[54] ),
    .I1(\u1/ipsend_inst/ip_header_0[70] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_61 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd35_982 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>6_981 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd35  (
    .I0(\u1/ipsend_inst/ip_header_0[53] ),
    .I1(\u1/ipsend_inst/ip_header_0[69] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_51 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd35_982 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_4  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>4 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>5_984 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_53 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_4  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>4 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd34_985 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>5_984 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>5 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>5  (
    .I0(\u1/ipsend_inst/ip_header_0[53] ),
    .I1(\u1/ipsend_inst/ip_header_0[69] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_51 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd34_985 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>5_984 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd34  (
    .I0(\u1/ipsend_inst/ip_header_0[52] ),
    .I1(\u1/ipsend_inst/ip_header_0[68] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_41 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd34_985 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_3  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>3 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>4_987 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[4] )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_3  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>3 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd33_988 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>4_987 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>4 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>4  (
    .I0(\u1/ipsend_inst/ip_header_0[52] ),
    .I1(\u1/ipsend_inst/ip_header_0[68] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_41 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd33_988 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>4_987 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd33  (
    .I0(\u1/ipsend_inst/ip_header_0[51] ),
    .I1(\u1/ipsend_inst/ip_header_0[67] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_31 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd33_988 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_2  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>2 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>3_990 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_33 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_2  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>2 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd32_991 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>3_990 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>3 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>3  (
    .I0(\u1/ipsend_inst/ip_header_0[51] ),
    .I1(\u1/ipsend_inst/ip_header_0[67] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_31 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd32_991 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>3_990 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd32  (
    .I0(\u1/ipsend_inst/ip_header_0[50] ),
    .I1(\u1/ipsend_inst/ip_header_0[66] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_25 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd32_991 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_1  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>1 ),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>2_993 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_27 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_1  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>1 ),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd31_994 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>2_993 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>2 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>2  (
    .I0(\u1/ipsend_inst/ip_header_0[50] ),
    .I1(\u1/ipsend_inst/ip_header_0[66] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_25 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd31_994 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>2_993 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd31  (
    .I0(\u1/ipsend_inst/ip_header_0[49] ),
    .I1(\u1/ipsend_inst/ip_header_0[65] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_110 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd31_994 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>_0  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy [0]),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>1_996 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_114 )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>_0  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy [0]),
    .DI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_997 ),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>1_996 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>1 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>1  (
    .I0(\u1/ipsend_inst/ip_header_0[49] ),
    .I1(\u1/ipsend_inst/ip_header_0[65] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_110 ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_997 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>1_996 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3  (
    .I0(\u1/ipsend_inst/ip_header_0[48] ),
    .I1(\u1/ipsend_inst/ip_header_0[64] ),
    .I2(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_01 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_997 )
  );
  XORCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_xor<0>  (
    .CI(e_txer_OBUF_102),
    .LI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[0] )
  );
  MUXCY   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy<0>  (
    .CI(e_txer_OBUF_102),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut<0>  (
    .I0(e_txer_OBUF_102),
    .I1(\u1/ipsend_inst/ip_header_0[64] ),
    .I2(\u1/ipsend_inst/ip_header_0[48] ),
    .I3(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_01 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd3_lut [0])
  );
  FDE_1   \u1/ipsend_inst/dataout_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0804_inv ),
    .D(\u1/ipsend_inst/_n0571 [7]),
    .Q(\u1/ipsend_inst/dataout [7])
  );
  FDE_1   \u1/ipsend_inst/dataout_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0804_inv ),
    .D(\u1/ipsend_inst/_n0571 [6]),
    .Q(\u1/ipsend_inst/dataout [6])
  );
  FDE_1   \u1/ipsend_inst/dataout_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0804_inv ),
    .D(\u1/ipsend_inst/_n0571 [5]),
    .Q(\u1/ipsend_inst/dataout [5])
  );
  FDE_1   \u1/ipsend_inst/dataout_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0804_inv ),
    .D(\u1/ipsend_inst/_n0571 [4]),
    .Q(\u1/ipsend_inst/dataout [4])
  );
  FDE_1   \u1/ipsend_inst/dataout_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0804_inv ),
    .D(\u1/ipsend_inst/_n0571 [3]),
    .Q(\u1/ipsend_inst/dataout [3])
  );
  FDE_1   \u1/ipsend_inst/dataout_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0804_inv ),
    .D(\u1/ipsend_inst/_n0571 [2]),
    .Q(\u1/ipsend_inst/dataout [2])
  );
  FDE_1   \u1/ipsend_inst/dataout_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0804_inv ),
    .D(\u1/ipsend_inst/_n0571 [1]),
    .Q(\u1/ipsend_inst/dataout [1])
  );
  FDE_1   \u1/ipsend_inst/dataout_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0804_inv ),
    .D(\u1/ipsend_inst/_n0571 [0]),
    .Q(\u1/ipsend_inst/dataout [0])
  );
  FD_1   \u1/ipsend_inst/check_buffer_18  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [13]),
    .Q(\u1/ipsend_inst/check_buffer_18_1223 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_17  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [14]),
    .Q(\u1/ipsend_inst/check_buffer_17_1222 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_16  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [15]),
    .Q(\u1/ipsend_inst/check_buffer_16_1221 )
  );
  FDE_1   \u1/ipsend_inst/j_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0771_inv ),
    .D(\u1/ipsend_inst/_n0554 [2]),
    .Q(\u1/ipsend_inst/j [2])
  );
  FDE_1   \u1/ipsend_inst/j_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0771_inv ),
    .D(\u1/ipsend_inst/_n0554 [1]),
    .Q(\u1/ipsend_inst/j [1])
  );
  FDE_1   \u1/ipsend_inst/j_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0771_inv ),
    .D(\u1/ipsend_inst/_n0554 [0]),
    .Q(\u1/ipsend_inst/j [0])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \u1/ipsend_inst/i_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0921_inv ),
    .D(\u1/ipsend_inst/_n0519 [4]),
    .Q(\u1/ipsend_inst/i [4])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \u1/ipsend_inst/i_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0921_inv ),
    .D(\u1/ipsend_inst/_n0519 [3]),
    .Q(\u1/ipsend_inst/i [3])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \u1/ipsend_inst/i_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0921_inv ),
    .D(\u1/ipsend_inst/_n0519 [2]),
    .Q(\u1/ipsend_inst/i [2])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \u1/ipsend_inst/i_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0921_inv ),
    .D(\u1/ipsend_inst/_n0519 [1]),
    .Q(\u1/ipsend_inst/i [1])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \u1/ipsend_inst/i_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0921_inv ),
    .D(\u1/ipsend_inst/_n0519 [0]),
    .Q(\u1/ipsend_inst/i [0])
  );
  FD_1   \u1/ipsend_inst/check_buffer_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [16]),
    .Q(\u1/ipsend_inst/check_buffer_15_708 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [17]),
    .Q(\u1/ipsend_inst/check_buffer_14_710 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [18]),
    .Q(\u1/ipsend_inst/check_buffer_13_712 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [19]),
    .Q(\u1/ipsend_inst/check_buffer_12_714 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [20]),
    .Q(\u1/ipsend_inst/check_buffer_11_716 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [21]),
    .Q(\u1/ipsend_inst/check_buffer_10_718 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [22]),
    .Q(\u1/ipsend_inst/check_buffer_9_720 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [23]),
    .Q(\u1/ipsend_inst/check_buffer_8_722 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [24]),
    .Q(\u1/ipsend_inst/check_buffer_7_724 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [25]),
    .Q(\u1/ipsend_inst/check_buffer_6_726 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [26]),
    .Q(\u1/ipsend_inst/check_buffer_5_728 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [27]),
    .Q(\u1/ipsend_inst/check_buffer_4_730 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [28]),
    .Q(\u1/ipsend_inst/check_buffer_3_732 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [29]),
    .Q(\u1/ipsend_inst/check_buffer_2_1220 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [30]),
    .Q(\u1/ipsend_inst/check_buffer_1_1219 )
  );
  FD_1   \u1/ipsend_inst/check_buffer_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/_n0607 [31]),
    .Q(\u1/ipsend_inst/check_buffer_0_1218 )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_223  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[223] ),
    .Q(\u1/ipsend_inst/ip_header_0[223] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_222  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[222] ),
    .Q(\u1/ipsend_inst/ip_header_0[222] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_221  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[221] ),
    .Q(\u1/ipsend_inst/ip_header_0[221] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_220  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[220] ),
    .Q(\u1/ipsend_inst/ip_header_0[220] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_219  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[219] ),
    .Q(\u1/ipsend_inst/ip_header_0[219] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_218  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[218] ),
    .Q(\u1/ipsend_inst/ip_header_0[218] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_217  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[217] ),
    .Q(\u1/ipsend_inst/ip_header_0[217] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_216  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[216] ),
    .Q(\u1/ipsend_inst/ip_header_0[216] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_215  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[215] ),
    .Q(\u1/ipsend_inst/ip_header_0[215] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_214  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[214] ),
    .Q(\u1/ipsend_inst/ip_header_0[214] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_213  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[213] ),
    .Q(\u1/ipsend_inst/ip_header_0[213] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_212  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[212] ),
    .Q(\u1/ipsend_inst/ip_header_0[212] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_211  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[211] ),
    .Q(\u1/ipsend_inst/ip_header_0[211] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_210  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[210] ),
    .Q(\u1/ipsend_inst/ip_header_0[210] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_209  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[209] ),
    .Q(\u1/ipsend_inst/ip_header_0[209] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_208  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[208] ),
    .Q(\u1/ipsend_inst/ip_header_0[208] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_79  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[79] ),
    .Q(\u1/ipsend_inst/ip_header_0[79] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_78  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[78] ),
    .Q(\u1/ipsend_inst/ip_header_0[78] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_77  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[77] ),
    .Q(\u1/ipsend_inst/ip_header_0[77] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_76  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[76] ),
    .Q(\u1/ipsend_inst/ip_header_0[76] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_75  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[75] ),
    .Q(\u1/ipsend_inst/ip_header_0[75] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_74  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[74] ),
    .Q(\u1/ipsend_inst/ip_header_0[74] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_73  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[73] ),
    .Q(\u1/ipsend_inst/ip_header_0[73] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_72  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[72] ),
    .Q(\u1/ipsend_inst/ip_header_0[72] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_71  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[71] ),
    .Q(\u1/ipsend_inst/ip_header_0[71] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_70  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[70] ),
    .Q(\u1/ipsend_inst/ip_header_0[70] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_69  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[69] ),
    .Q(\u1/ipsend_inst/ip_header_0[69] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_68  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[68] ),
    .Q(\u1/ipsend_inst/ip_header_0[68] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_67  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[67] ),
    .Q(\u1/ipsend_inst/ip_header_0[67] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_66  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[66] ),
    .Q(\u1/ipsend_inst/ip_header_0[66] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_65  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[65] ),
    .Q(\u1/ipsend_inst/ip_header_0[65] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_64  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[64] ),
    .Q(\u1/ipsend_inst/ip_header_0[64] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_63  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[63] ),
    .Q(\u1/ipsend_inst/ip_header_0[63] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_62  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[62] ),
    .Q(\u1/ipsend_inst/ip_header_0[62] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_61  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[61] ),
    .Q(\u1/ipsend_inst/ip_header_0[61] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_60  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[60] ),
    .Q(\u1/ipsend_inst/ip_header_0[60] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_59  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[59] ),
    .Q(\u1/ipsend_inst/ip_header_0[59] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_58  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[58] ),
    .Q(\u1/ipsend_inst/ip_header_0[58] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_57  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[57] ),
    .Q(\u1/ipsend_inst/ip_header_0[57] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_56  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[56] ),
    .Q(\u1/ipsend_inst/ip_header_0[56] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_55  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[55] ),
    .Q(\u1/ipsend_inst/ip_header_0[55] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_54  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[54] ),
    .Q(\u1/ipsend_inst/ip_header_0[54] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_53  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[53] ),
    .Q(\u1/ipsend_inst/ip_header_0[53] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_52  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[52] ),
    .Q(\u1/ipsend_inst/ip_header_0[52] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_51  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[51] ),
    .Q(\u1/ipsend_inst/ip_header_0[51] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_50  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[50] ),
    .Q(\u1/ipsend_inst/ip_header_0[50] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_49  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[49] ),
    .Q(\u1/ipsend_inst/ip_header_0[49] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_48  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[48] ),
    .Q(\u1/ipsend_inst/ip_header_0[48] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[15] ),
    .Q(\u1/ipsend_inst/ip_header_0[15] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[14] ),
    .Q(\u1/ipsend_inst/ip_header_0[14] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[13] ),
    .Q(\u1/ipsend_inst/ip_header_0[13] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[12] ),
    .Q(\u1/ipsend_inst/ip_header_0[12] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[11] ),
    .Q(\u1/ipsend_inst/ip_header_0[11] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[10] ),
    .Q(\u1/ipsend_inst/ip_header_0[10] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[9] ),
    .Q(\u1/ipsend_inst/ip_header_0[9] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[8] ),
    .Q(\u1/ipsend_inst/ip_header_0[8] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[7] ),
    .Q(\u1/ipsend_inst/ip_header_0[7] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[6] ),
    .Q(\u1/ipsend_inst/ip_header_0[6] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[5] ),
    .Q(\u1/ipsend_inst/ip_header_0[5] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[4] ),
    .Q(\u1/ipsend_inst/ip_header_0[4] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[3] ),
    .Q(\u1/ipsend_inst/ip_header_0[3] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[2] ),
    .Q(\u1/ipsend_inst/ip_header_0[2] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[1] ),
    .Q(\u1/ipsend_inst/ip_header_0[1] )
  );
  FDE_1   \u1/ipsend_inst/ip_header_0_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0869_inv ),
    .D(\u1/ipsend_inst/_n0856[0] ),
    .Q(\u1/ipsend_inst/ip_header_0[0] )
  );
  FD_1   \u1/ipsend_inst/crcre  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/tx_state[3]_PWR_3_o_Select_177_o ),
    .Q(\u1/ipsend_inst/crcre_257 )
  );
  FD_1   \u1/ipsend_inst/txen  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/tx_state[3]_GND_3_o_Select_173_o ),
    .Q(\u1/ipsend_inst/txen_101 )
  );
  FDE_1   \u1/ipsend_inst/datain_reg_31  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[31]),
    .Q(\u1/ipsend_inst/datain_reg [31])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_30  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[30]),
    .Q(\u1/ipsend_inst/datain_reg [30])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_29  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[29]),
    .Q(\u1/ipsend_inst/datain_reg [29])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_28  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[28]),
    .Q(\u1/ipsend_inst/datain_reg [28])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_27  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[27]),
    .Q(\u1/ipsend_inst/datain_reg [27])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_26  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[26]),
    .Q(\u1/ipsend_inst/datain_reg [26])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_25  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[25]),
    .Q(\u1/ipsend_inst/datain_reg [25])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_24  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[24]),
    .Q(\u1/ipsend_inst/datain_reg [24])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_23  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[23]),
    .Q(\u1/ipsend_inst/datain_reg [23])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_22  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[22]),
    .Q(\u1/ipsend_inst/datain_reg [22])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_21  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[21]),
    .Q(\u1/ipsend_inst/datain_reg [21])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_20  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[20]),
    .Q(\u1/ipsend_inst/datain_reg [20])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_19  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[19]),
    .Q(\u1/ipsend_inst/datain_reg [19])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_18  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[18]),
    .Q(\u1/ipsend_inst/datain_reg [18])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_17  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[17]),
    .Q(\u1/ipsend_inst/datain_reg [17])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_16  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[16]),
    .Q(\u1/ipsend_inst/datain_reg [16])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[15]),
    .Q(\u1/ipsend_inst/datain_reg [15])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[14]),
    .Q(\u1/ipsend_inst/datain_reg [14])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[13]),
    .Q(\u1/ipsend_inst/datain_reg [13])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[12]),
    .Q(\u1/ipsend_inst/datain_reg [12])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[11]),
    .Q(\u1/ipsend_inst/datain_reg [11])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[10]),
    .Q(\u1/ipsend_inst/datain_reg [10])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[9]),
    .Q(\u1/ipsend_inst/datain_reg [9])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[8]),
    .Q(\u1/ipsend_inst/datain_reg [8])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[7]),
    .Q(\u1/ipsend_inst/datain_reg [7])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[6]),
    .Q(\u1/ipsend_inst/datain_reg [6])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[5]),
    .Q(\u1/ipsend_inst/datain_reg [5])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[4]),
    .Q(\u1/ipsend_inst/datain_reg [4])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[3]),
    .Q(\u1/ipsend_inst/datain_reg [3])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[2]),
    .Q(\u1/ipsend_inst/datain_reg [2])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[1]),
    .Q(\u1/ipsend_inst/datain_reg [1])
  );
  FDE_1   \u1/ipsend_inst/datain_reg_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/_n0948_inv ),
    .D(ram_rd_data[0]),
    .Q(\u1/ipsend_inst/datain_reg [0])
  );
  FD_1   \u1/ipsend_inst/crcen  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/ipsend_inst/tx_state[3]_GND_3_o_Select_175_o ),
    .Q(\u1/ipsend_inst/crcen_258 )
  );
  FDPE   \u1/crc_inst/Crc_31  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [31]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [31])
  );
  FDPE   \u1/crc_inst/Crc_30  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [30]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [30])
  );
  FDPE   \u1/crc_inst/Crc_29  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [29]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [29])
  );
  FDPE   \u1/crc_inst/Crc_28  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [28]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [28])
  );
  FDPE   \u1/crc_inst/Crc_27  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [27]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [27])
  );
  FDPE   \u1/crc_inst/Crc_26  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [26]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [26])
  );
  FDPE   \u1/crc_inst/Crc_25  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [25]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [25])
  );
  FDPE   \u1/crc_inst/Crc_24  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [24]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [24])
  );
  FDPE   \u1/crc_inst/Crc_23  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [23]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [23])
  );
  FDPE   \u1/crc_inst/Crc_22  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [22]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [22])
  );
  FDPE   \u1/crc_inst/Crc_21  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [21]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [21])
  );
  FDPE   \u1/crc_inst/Crc_20  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [20]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [20])
  );
  FDPE   \u1/crc_inst/Crc_19  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [19]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [19])
  );
  FDPE   \u1/crc_inst/Crc_18  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [18]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [18])
  );
  FDPE   \u1/crc_inst/Crc_17  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [17]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [17])
  );
  FDPE   \u1/crc_inst/Crc_16  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [16]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [16])
  );
  FDPE   \u1/crc_inst/Crc_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [15]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [15])
  );
  FDPE   \u1/crc_inst/Crc_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [14]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [14])
  );
  FDPE   \u1/crc_inst/Crc_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [13]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [13])
  );
  FDPE   \u1/crc_inst/Crc_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [12]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [12])
  );
  FDPE   \u1/crc_inst/Crc_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [11]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [11])
  );
  FDPE   \u1/crc_inst/Crc_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [10]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [10])
  );
  FDPE   \u1/crc_inst/Crc_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [9]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [9])
  );
  FDPE   \u1/crc_inst/Crc_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [8]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [8])
  );
  FDPE   \u1/crc_inst/Crc_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [7]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [7])
  );
  FDPE   \u1/crc_inst/Crc_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [6]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [6])
  );
  FDPE   \u1/crc_inst/Crc_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [5]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [5])
  );
  FDPE   \u1/crc_inst/Crc_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [4]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [4])
  );
  FDPE   \u1/crc_inst/Crc_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [3]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [3])
  );
  FDPE   \u1/crc_inst/Crc_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [2]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [2])
  );
  FDPE   \u1/crc_inst/Crc_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/CrcNext [1]),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [1])
  );
  FDPE   \u1/crc_inst/Crc_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/ipsend_inst/crcen_258 ),
    .D(\u1/crc_inst/_n0229 ),
    .PRE(\u1/ipsend_inst/crcre_257 ),
    .Q(\u1/crc_inst/Crc [0])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \Mram_i[2]_X_1_o_wide_mux_7_OUT111  (
    .I0(ram_addr_i[0]),
    .I1(ram_addr_i[2]),
    .O(\Mram_i[2]_X_1_o_wide_mux_7_OUT1_263 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Mram_i[2]_X_1_o_wide_mux_7_OUT101  (
    .I0(ram_addr_i[2]),
    .I1(ram_addr_i[0]),
    .I2(ram_addr_i[1]),
    .O(\Mram_i[2]_X_1_o_wide_mux_7_OUT10 )
  );
  LUT3 #(
    .INIT ( 8'h5D ))
  \Mram_i[2]_X_1_o_wide_mux_7_OUT251  (
    .I0(ram_addr_i[0]),
    .I1(ram_addr_i[1]),
    .I2(ram_addr_i[2]),
    .O(\Mram_i[2]_X_1_o_wide_mux_7_OUT25 )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \Mram_i[2]_X_1_o_wide_mux_7_OUT261  (
    .I0(ram_addr_i[2]),
    .I1(ram_addr_i[1]),
    .I2(ram_addr_i[0]),
    .O(\Mram_i[2]_X_1_o_wide_mux_7_OUT26 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Mram_i[2]_X_1_o_wide_mux_7_OUT281  (
    .I0(ram_addr_i[2]),
    .I1(ram_addr_i[1]),
    .O(\Mram_i[2]_X_1_o_wide_mux_7_OUT28 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina321 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [9]),
    .O(dina[9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina311 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[8] ),
    .I2(\u1/iprecieve_inst/data_o [8]),
    .O(dina[8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina301 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[0] ),
    .I2(\u1/iprecieve_inst/data_o [7]),
    .O(dina[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina291 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[0] ),
    .I2(\u1/iprecieve_inst/data_o [6]),
    .O(dina[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina281 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[0] ),
    .I2(\u1/iprecieve_inst/data_o [5]),
    .O(dina[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina271 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[0] ),
    .I2(\u1/iprecieve_inst/data_o [4]),
    .O(dina[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina261 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[0] ),
    .I2(\u1/iprecieve_inst/data_o [3]),
    .O(dina[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina251 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[25] ),
    .I2(\u1/iprecieve_inst/data_o [31]),
    .O(dina[31])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina241 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[25] ),
    .I2(\u1/iprecieve_inst/data_o [30]),
    .O(dina[30])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina231 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[0] ),
    .I2(\u1/iprecieve_inst/data_o [2]),
    .O(dina[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina221 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[25] ),
    .I2(\u1/iprecieve_inst/data_o [29]),
    .O(dina[29])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina211 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[28] ),
    .I2(\u1/iprecieve_inst/data_o [28]),
    .O(dina[28])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina201 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[25] ),
    .I2(\u1/iprecieve_inst/data_o [27]),
    .O(dina[27])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina191 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[26] ),
    .I2(\u1/iprecieve_inst/data_o [26]),
    .O(dina[26])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina181 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[25] ),
    .I2(\u1/iprecieve_inst/data_o [25]),
    .O(dina[25])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina171 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[8] ),
    .I2(\u1/iprecieve_inst/data_o [24]),
    .O(dina[24])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina161 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[8] ),
    .I2(\u1/iprecieve_inst/data_o [23]),
    .O(dina[23])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina151 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [22]),
    .O(dina[22])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina141 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [21]),
    .O(dina[21])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina131 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[8] ),
    .I2(\u1/iprecieve_inst/data_o [20]),
    .O(dina[20])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina121 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[1] ),
    .I2(\u1/iprecieve_inst/data_o [1]),
    .O(dina[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina111 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [19]),
    .O(dina[19])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina101 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [18]),
    .O(dina[18])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina91 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [17]),
    .O(dina[17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina81 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [16]),
    .O(dina[16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina71 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [15]),
    .O(dina[15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina61 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [14]),
    .O(dina[14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina51 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [13]),
    .O(dina[13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina41 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [12]),
    .O(dina[12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina31 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [11]),
    .O(dina[11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina21 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[9] ),
    .I2(\u1/iprecieve_inst/data_o [10]),
    .O(dina[10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_dina11 (
    .I0(ram_wr_finish_105),
    .I1(\ram_data_i[0] ),
    .I2(\u1/iprecieve_inst/data_o [0]),
    .O(dina[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_addra91 (
    .I0(ram_wr_finish_105),
    .I1(\u1/iprecieve_inst/ram_wr_addr [8]),
    .O(addra[8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_addra81 (
    .I0(ram_wr_finish_105),
    .I1(\u1/iprecieve_inst/ram_wr_addr [7]),
    .O(addra[7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_addra71 (
    .I0(ram_wr_finish_105),
    .I1(\u1/iprecieve_inst/ram_wr_addr [6]),
    .O(addra[6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_addra61 (
    .I0(ram_wr_finish_105),
    .I1(\u1/iprecieve_inst/ram_wr_addr [5]),
    .O(addra[5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_addra51 (
    .I0(ram_wr_finish_105),
    .I1(\u1/iprecieve_inst/ram_wr_addr [4]),
    .O(addra[4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_addra41 (
    .I0(ram_wr_finish_105),
    .I1(\u1/iprecieve_inst/ram_wr_addr [3]),
    .O(addra[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_addra31 (
    .I0(ram_wr_finish_105),
    .I1(ram_addr_i[2]),
    .I2(\u1/iprecieve_inst/ram_wr_addr [2]),
    .O(addra[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_addra21 (
    .I0(ram_wr_finish_105),
    .I1(ram_addr_i[1]),
    .I2(\u1/iprecieve_inst/ram_wr_addr [1]),
    .O(addra[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_addra11 (
    .I0(ram_wr_finish_105),
    .I1(ram_addr_i[0]),
    .I2(\u1/iprecieve_inst/ram_wr_addr [0]),
    .O(addra[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_wea11 (
    .I0(ram_wr_finish_105),
    .I1(ram_wren_i_106),
    .I2(\u1/iprecieve_inst/data_o_valid_103 ),
    .O(wea)
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  GND_1_o_GND_1_o_equal_6_o_inv1 (
    .I0(ram_addr_i[0]),
    .I1(ram_addr_i[1]),
    .I2(ram_addr_i[2]),
    .O(GND_1_o_GND_1_o_equal_6_o_inv)
  );
  LUT3 #(
    .INIT ( 8'h76 ))
  \Mram_i[2]_X_1_o_wide_mux_7_OUT1  (
    .I0(ram_addr_i[0]),
    .I1(ram_addr_i[2]),
    .I2(ram_addr_i[1]),
    .O(\Mram_i[2]_X_1_o_wide_mux_7_OUT )
  );
  LUT6 #(
    .INIT ( 64'h00E000F000000000 ))
  \u1/iprecieve_inst/_n0654_inv1  (
    .I0(\u1/iprecieve_inst/state_counter [4]),
    .I1(\u1/iprecieve_inst/state_counter [3]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I4(\u1/iprecieve_inst/Mmux__n060522_279 ),
    .I5(\u1/iprecieve_inst/_n0691_inv3 ),
    .O(\u1/iprecieve_inst/_n0654_inv )
  );
  LUT5 #(
    .INIT ( 32'h8F888888 ))
  \u1/iprecieve_inst/Mmux__n0551110  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I1(e_rxd_0_IBUF_7),
    .I2(e_rxd_7_IBUF_0),
    .I3(e_rxdv_IBUF_10),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .O(\u1/iprecieve_inst/_n0551[0] )
  );
  LUT5 #(
    .INIT ( 32'h8F888888 ))
  \u1/iprecieve_inst/Mmux__n0551171  (
    .I0(e_rxd_2_IBUF_5),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(e_rxd_7_IBUF_0),
    .I3(e_rxdv_IBUF_10),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .O(\u1/iprecieve_inst/_n0551[2] )
  );
  LUT5 #(
    .INIT ( 32'h8F888888 ))
  \u1/iprecieve_inst/Mmux__n0551211  (
    .I0(e_rxd_6_IBUF_1),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(e_rxd_7_IBUF_0),
    .I3(e_rxdv_IBUF_10),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .O(\u1/iprecieve_inst/_n0551[6] )
  );
  LUT5 #(
    .INIT ( 32'h8F888888 ))
  \u1/iprecieve_inst/Mmux__n0551191  (
    .I0(e_rxd_4_IBUF_3),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(e_rxd_7_IBUF_0),
    .I3(e_rxdv_IBUF_10),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .O(\u1/iprecieve_inst/_n0551[4] )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \u1/iprecieve_inst/Mmux__n05511011  (
    .I0(e_rxd_7_IBUF_0),
    .I1(e_rxdv_IBUF_10),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mmux__n0551101 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \u1/iprecieve_inst/_n0736_inv1  (
    .I0(e_rxdv_IBUF_10),
    .I1(reset_n_IBUF_8),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19 ),
    .O(\u1/iprecieve_inst/_n0736_inv )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \u1/iprecieve_inst/_n0691_inv31  (
    .I0(e_rxdv_IBUF_10),
    .I1(reset_n_IBUF_8),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd2_2_1772 ),
    .O(\u1/iprecieve_inst/_n0691_inv3 )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \u1/iprecieve_inst/_n0691_inv21  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I1(reset_n_IBUF_8),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .O(\u1/iprecieve_inst/_n0691_inv2 )
  );
  LUT5 #(
    .INIT ( 32'h00400000 ))
  \u1/iprecieve_inst/_n0583_inv1  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I4(reset_n_IBUF_8),
    .O(\u1/iprecieve_inst/_n0583_inv )
  );
  LUT4 #(
    .INIT ( 16'h0007 ))
  \u1/iprecieve_inst/Mmux__n06051121  (
    .I0(\u1/iprecieve_inst/state_counter [1]),
    .I1(\u1/iprecieve_inst/state_counter [0]),
    .I2(\u1/iprecieve_inst/state_counter [2]),
    .I3(\u1/iprecieve_inst/state_counter [3]),
    .O(\u1/iprecieve_inst/Mmux__n0605112 )
  );
  LUT6 #(
    .INIT ( 64'h0000000800000000 ))
  \u1/iprecieve_inst/_n0598_inv1  (
    .I0(\u1/iprecieve_inst/Mmux__n060522_279 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I3(\u1/iprecieve_inst/state_counter [4]),
    .I4(\u1/iprecieve_inst/state_counter [3]),
    .I5(\u1/iprecieve_inst/_n0691_inv3 ),
    .O(\u1/iprecieve_inst/_n0598_inv )
  );
  LUT5 #(
    .INIT ( 32'h30100000 ))
  \u1/iprecieve_inst/_n0700_inv1  (
    .I0(\u1/iprecieve_inst/state_counter [4]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I3(\u1/iprecieve_inst/Mmux__n0605112 ),
    .I4(\u1/iprecieve_inst/_n0691_inv3 ),
    .O(\u1/iprecieve_inst/_n0700_inv )
  );
  LUT5 #(
    .INIT ( 32'h08080800 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd3-In3321  (
    .I0(\u1/iprecieve_inst/state_counter [4]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I3(\u1/iprecieve_inst/state_counter [3]),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2-In211_275 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd3-In332 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In2111  (
    .I0(\u1/iprecieve_inst/state_counter [0]),
    .I1(\u1/iprecieve_inst/state_counter [1]),
    .I2(\u1/iprecieve_inst/state_counter [2]),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In211_275 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \u1/iprecieve_inst/Mmux__n0605221  (
    .I0(\u1/iprecieve_inst/state_counter [2]),
    .I1(\u1/iprecieve_inst/state_counter [0]),
    .I2(\u1/iprecieve_inst/state_counter [1]),
    .O(\u1/iprecieve_inst/Mmux__n060522_279 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \u1/iprecieve_inst/e_rxdv_01  (
    .I0(e_rxdv_IBUF_10),
    .I1(reset_n_IBUF_8),
    .O(\u1/iprecieve_inst/e_rxdv_0 )
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n060791  (
    .I0(\u1/ipsend_inst/check_buffer_14_710 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<14> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_148 ),
    .O(\u1/ipsend_inst/_n0607 [17])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n060781  (
    .I0(\u1/ipsend_inst/check_buffer_15_708 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<15> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_158 ),
    .O(\u1/ipsend_inst/_n0607 [16])
  );
  LUT6 #(
    .INIT ( 64'hFEAA32AACEAA02AA ))
  \u1/ipsend_inst/Mmux__n0607251  (
    .I0(\u1/ipsend_inst/check_buffer_0_1218 ),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_08 ),
    .I5(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<0> ),
    .O(\u1/ipsend_inst/_n0607 [31])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607241  (
    .I0(\u1/ipsend_inst/check_buffer_1_1219 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<1> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_129 ),
    .O(\u1/ipsend_inst/_n0607 [30])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607221  (
    .I0(\u1/ipsend_inst/check_buffer_2_1220 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<2> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_219 ),
    .O(\u1/ipsend_inst/_n0607 [29])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607211  (
    .I0(\u1/ipsend_inst/check_buffer_3_732 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<3> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_38 ),
    .O(\u1/ipsend_inst/_n0607 [28])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607201  (
    .I0(\u1/ipsend_inst/check_buffer_4_730 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<4> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_48 ),
    .O(\u1/ipsend_inst/_n0607 [27])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607191  (
    .I0(\u1/ipsend_inst/check_buffer_5_728 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<5> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_58 ),
    .O(\u1/ipsend_inst/_n0607 [26])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607181  (
    .I0(\u1/ipsend_inst/check_buffer_6_726 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<6> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_68 ),
    .O(\u1/ipsend_inst/_n0607 [25])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607171  (
    .I0(\u1/ipsend_inst/check_buffer_7_724 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<7> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_78 ),
    .O(\u1/ipsend_inst/_n0607 [24])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607161  (
    .I0(\u1/ipsend_inst/check_buffer_8_722 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<8> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_88 ),
    .O(\u1/ipsend_inst/_n0607 [23])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607151  (
    .I0(\u1/ipsend_inst/check_buffer_9_720 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<9> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_98 ),
    .O(\u1/ipsend_inst/_n0607 [22])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607141  (
    .I0(\u1/ipsend_inst/check_buffer_10_718 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<10> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_108 ),
    .O(\u1/ipsend_inst/_n0607 [21])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607131  (
    .I0(\u1/ipsend_inst/check_buffer_11_716 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<11> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_1112 ),
    .O(\u1/ipsend_inst/_n0607 [20])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607111  (
    .I0(\u1/ipsend_inst/check_buffer_12_714 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<12> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_1210 ),
    .O(\u1/ipsend_inst/_n0607 [19])
  );
  LUT6 #(
    .INIT ( 64'hFFAACAAA00AACAAA ))
  \u1/ipsend_inst/Mmux__n0607101  (
    .I0(\u1/ipsend_inst/check_buffer_13_712 ),
    .I1(\u1/ipsend_inst/check_buffer[31]_check_buffer[15]_add_18_OUT<13> ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o ),
    .I3(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_138 ),
    .O(\u1/ipsend_inst/_n0607 [18])
  );
  LUT6 #(
    .INIT ( 64'h45454545454545F5 ))
  \u1/ipsend_inst/_n0804_inv1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/i [4]),
    .I4(\u1/ipsend_inst/i [2]),
    .I5(\u1/ipsend_inst/i [3]),
    .O(\u1/ipsend_inst/_n0804_inv )
  );
  LUT6 #(
    .INIT ( 64'h2A2A2A2A2A2A2AEE ))
  \u1/ipsend_inst/_n0921_inv1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/i [4]),
    .I4(\u1/ipsend_inst/i [2]),
    .I5(\u1/ipsend_inst/i [3]),
    .O(\u1/ipsend_inst/_n0921_inv )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o<4>1  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/i [1]),
    .I2(\u1/ipsend_inst/i [3]),
    .I3(\u1/ipsend_inst/i [2]),
    .I4(\u1/ipsend_inst/i [4]),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o )
  );
  LUT5 #(
    .INIT ( 32'hFEFFFFFF ))
  \u1/ipsend_inst/tx_state_FSM_FFd1-In111  (
    .I0(\u1/ipsend_inst/i [4]),
    .I1(\u1/ipsend_inst/i [3]),
    .I2(\u1/ipsend_inst/i [2]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/tx_state_FSM_FFd1-In11 )
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \u1/ipsend_inst/Mmux__n051981  (
    .I0(\u1/ipsend_inst/Mmux__n0519101 ),
    .I1(\u1/ipsend_inst/i [3]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [2]),
    .O(\u1/ipsend_inst/_n0519 [3])
  );
  LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  \u1/ipsend_inst/Mmux__n0519102  (
    .I0(\u1/ipsend_inst/Mmux__n0519101 ),
    .I1(\u1/ipsend_inst/i [4]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [2]),
    .I5(\u1/ipsend_inst/i [3]),
    .O(\u1/ipsend_inst/_n0519 [4])
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \u1/ipsend_inst/Mmux__n051961  (
    .I0(\u1/ipsend_inst/Mmux__n0519101 ),
    .I1(\u1/ipsend_inst/i [2]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/i [1]),
    .O(\u1/ipsend_inst/_n0519 [2])
  );
  LUT4 #(
    .INIT ( 16'h2808 ))
  \u1/ipsend_inst/Mmux__n055431  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/j [0]),
    .O(\u1/ipsend_inst/_n0554 [2])
  );
  LUT4 #(
    .INIT ( 16'h0828 ))
  \u1/ipsend_inst/Mmux__n055421  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/j [0]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/j [2]),
    .O(\u1/ipsend_inst/_n0554 [1])
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \u1/ipsend_inst/Mmux__n055411  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/j [2]),
    .O(\u1/ipsend_inst/_n0554 [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \u1/ipsend_inst/tx_state_tx_state[3]_GND_3_o_equal_162_o1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_162_o )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \u1/ipsend_inst/_n07231  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o ),
    .O(\u1/ipsend_inst/_n0723 )
  );
  LUT4 #(
    .INIT ( 16'h8ABB ))
  \u1/ipsend_inst/tx_state[3]_PWR_3_o_Select_177_o1  (
    .I0(\u1/ipsend_inst/crcre_257 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/tx_state[3]_PWR_3_o_Select_177_o )
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  \u1/ipsend_inst/tx_state[3]_GND_3_o_Select_173_o<3>1  (
    .I0(\u1/ipsend_inst/txen_101 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/tx_state[3]_GND_3_o_Select_173_o )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \u1/ipsend_inst/Mmux__n057148151  (
    .I0(\u1/ipsend_inst/i [2]),
    .I1(\u1/ipsend_inst/i [1]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .O(\u1/ipsend_inst/Mmux__n05714815 )
  );
  LUT4 #(
    .INIT ( 16'hACA8 ))
  \u1/ipsend_inst/tx_state[3]_GND_3_o_Select_175_o<3>1  (
    .I0(\u1/ipsend_inst/crcen_258 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/tx_state[3]_GND_3_o_Select_175_o )
  );
  LUT4 #(
    .INIT ( 16'h8808 ))
  \u1/ipsend_inst/_n0948_inv1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1-In11 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/_n0948_inv )
  );
  LUT5 #(
    .INIT ( 32'hAAF8AAA8 ))
  \u1/ipsend_inst/tx_state_FSM_FFd1-In1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1-In11 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o ),
    .O(\u1/ipsend_inst/tx_state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h0181 ))
  \u1/ipsend_inst/_n0771_inv1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1-In11 ),
    .O(\u1/ipsend_inst/_n0771_inv )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \u1/ipsend_inst/Mmux__n0571711  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/Mmux__n0571391 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o<4>11  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/i [1]),
    .I2(\u1/ipsend_inst/i [2]),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o<4>1 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \u1/ipsend_inst/Mmux__n05712611  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [1]),
    .O(\u1/ipsend_inst/Mmux__n0571261 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \u1/ipsend_inst/Mmux__n05713111  (
    .I0(\u1/ipsend_inst/j [1]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [0]),
    .I3(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/Mmux__n0571311 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \u1/ipsend_inst/Mmux__n05713101  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/j [0]),
    .I2(\u1/ipsend_inst/j [1]),
    .O(\u1/ipsend_inst/Mmux__n0571310 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \u1/ipsend_inst/tx_state[3]_GND_3_o_Select_171_o11  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .O(\u1/ipsend_inst/tx_state[3]_GND_3_o_Select_171_o1 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u1/ipsend_inst/_n0869_inv1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .O(\u1/ipsend_inst/_n0869_inv )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \u1/ipsend_inst/tx_state_tx_state[3]_GND_3_o_equal_164_o1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/tx_state[3]_GND_3_o_equal_164_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/ipsend_inst/tx_state_tx_state[1]1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/tx_state [1])
  );
  LUT5 #(
    .INIT ( 32'h00400000 ))
  \u1/ipsend_inst/GND_3_o_GND_3_o_equal_34_o<4>1  (
    .I0(\u1/ipsend_inst/i [4]),
    .I1(\u1/ipsend_inst/i [3]),
    .I2(\u1/ipsend_inst/i [2]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_34_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \u1/ipsend_inst/_n0626<4>1  (
    .I0(\u1/ipsend_inst/i [4]),
    .I1(\u1/ipsend_inst/i [3]),
    .I2(\u1/ipsend_inst/i [2]),
    .I3(\u1/ipsend_inst/i [1]),
    .O(\u1/ipsend_inst/_n0626 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \u1/crc_inst/CrcNext<22>1  (
    .I0(\u1/crc_inst/Crc [14]),
    .I1(\u1/crc_inst/Crc [24]),
    .I2(\u1/ipsend_inst/dataout [7]),
    .O(\u1/crc_inst/CrcNext [22])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \u1/crc_inst/CrcNext<20>1  (
    .I0(\u1/ipsend_inst/dataout [3]),
    .I1(\u1/crc_inst/Crc [28]),
    .I2(\u1/crc_inst/Crc [12]),
    .O(\u1/crc_inst/CrcNext [20])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \u1/crc_inst/CrcNext<21>1  (
    .I0(\u1/ipsend_inst/dataout [2]),
    .I1(\u1/crc_inst/Crc [29]),
    .I2(\u1/crc_inst/Crc [13]),
    .O(\u1/crc_inst/CrcNext [21])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \u1/crc_inst/CrcNext<31>1  (
    .I0(\u1/ipsend_inst/dataout [2]),
    .I1(\u1/crc_inst/Crc [29]),
    .I2(\u1/crc_inst/Crc [23]),
    .O(\u1/crc_inst/CrcNext [31])
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \u1/crc_inst/CrcNext<3>2  (
    .I0(\u1/crc_inst/Crc [25]),
    .I1(\u1/ipsend_inst/dataout [6]),
    .I2(\u1/ipsend_inst/dataout [5]),
    .I3(\u1/crc_inst/CrcNext<3>_bdd0 ),
    .O(\u1/crc_inst/CrcNext [3])
  );
  LUT5 #(
    .INIT ( 32'h69969669 ))
  \u1/crc_inst/CrcNext<4>21  (
    .I0(\u1/crc_inst/Crc [27]),
    .I1(\u1/crc_inst/Crc [28]),
    .I2(\u1/crc_inst/Crc [30]),
    .I3(\u1/ipsend_inst/dataout [3]),
    .I4(\u1/ipsend_inst/dataout [1]),
    .O(\u1/crc_inst/CrcNext<4>_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'h69969669 ))
  \u1/crc_inst/CrcNext<3>11  (
    .I0(\u1/crc_inst/Crc [27]),
    .I1(\u1/crc_inst/Crc [26]),
    .I2(\u1/crc_inst/Crc [31]),
    .I3(\u1/ipsend_inst/dataout [4]),
    .I4(\u1/ipsend_inst/dataout [0]),
    .O(\u1/crc_inst/CrcNext<3>_bdd0 )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \u1/crc_inst/CrcNext<4>1  (
    .I0(\u1/ipsend_inst/dataout [7]),
    .I1(\u1/ipsend_inst/dataout [5]),
    .I2(\u1/crc_inst/Crc [24]),
    .I3(\u1/ipsend_inst/dataout [4]),
    .I4(\u1/crc_inst/Crc [26]),
    .I5(\u1/crc_inst/CrcNext<4>_bdd2 ),
    .O(\u1/crc_inst/CrcNext [4])
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \u1/crc_inst/CrcNext<7>1  (
    .I0(\u1/ipsend_inst/dataout [7]),
    .I1(\u1/ipsend_inst/dataout [5]),
    .I2(\u1/crc_inst/Crc [24]),
    .I3(\u1/ipsend_inst/dataout [2]),
    .I4(\u1/crc_inst/Crc [29]),
    .I5(\u1/crc_inst/CrcNext<3>_bdd0 ),
    .O(\u1/crc_inst/CrcNext [7])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/_n02291  (
    .I0(\u1/ipsend_inst/dataout [7]),
    .I1(\u1/crc_inst/Crc [24]),
    .I2(\u1/crc_inst/Crc [30]),
    .I3(\u1/ipsend_inst/dataout [1]),
    .O(\u1/crc_inst/_n0229 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \u1/crc_inst/Mxor_CrcNext<19>_xo<0>1  (
    .I0(\u1/crc_inst/Crc [11]),
    .I1(\u1/crc_inst/Crc [27]),
    .I2(\u1/ipsend_inst/dataout [4]),
    .I3(\u1/crc_inst/Crc [31]),
    .I4(\u1/ipsend_inst/dataout [0]),
    .O(\u1/crc_inst/CrcNext [19])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \u1/crc_inst/Mxor_CrcNext<25>_xo<0>1  (
    .I0(\u1/crc_inst/Crc [17]),
    .I1(\u1/crc_inst/Crc [27]),
    .I2(\u1/ipsend_inst/dataout [4]),
    .I3(\u1/crc_inst/Crc [26]),
    .I4(\u1/ipsend_inst/dataout [5]),
    .O(\u1/crc_inst/CrcNext [25])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \u1/crc_inst/Mxor_CrcNext<30>_xo<0>1  (
    .I0(\u1/crc_inst/Crc [22]),
    .I1(\u1/crc_inst/Crc [31]),
    .I2(\u1/ipsend_inst/dataout [0]),
    .I3(\u1/crc_inst/Crc [28]),
    .I4(\u1/ipsend_inst/dataout [3]),
    .O(\u1/crc_inst/CrcNext [30])
  );
  LUT5 #(
    .INIT ( 32'h044404EE ))
  \u1/iprecieve_inst/Mmux__n060531  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/state_counter [4]),
    .I4(\u1/iprecieve_inst/state_counter [3]),
    .O(\u1/iprecieve_inst/Mmux__n06053 )
  );
  LUT5 #(
    .INIT ( 32'h040444EA ))
  \u1/iprecieve_inst/Mmux__n060532  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/state_counter [3]),
    .I4(\u1/iprecieve_inst/state_counter [4]),
    .O(\u1/iprecieve_inst/Mmux__n060531_1394 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In11  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In11_1395 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAA2AAAAAAAA ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In14  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I1(\u1/iprecieve_inst/state_counter [2]),
    .I2(\u1/iprecieve_inst/state_counter [3]),
    .I3(\u1/iprecieve_inst/state_counter [4]),
    .I4(\u1/iprecieve_inst/state_counter [1]),
    .I5(\u1/iprecieve_inst/state_counter [0]),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In14_1396 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFD554 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In18  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/state_counter [1]),
    .I2(\u1/iprecieve_inst/state_counter [2]),
    .I3(\u1/iprecieve_inst/state_counter [0]),
    .I4(\u1/iprecieve_inst/state_counter [3]),
    .I5(\u1/iprecieve_inst/state_counter [4]),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In18_1397 )
  );
  LUT6 #(
    .INIT ( 64'h0606666206666666 ))
  \u1/iprecieve_inst/Mmux__n060541  (
    .I0(\u1/iprecieve_inst/state_counter [1]),
    .I1(\u1/iprecieve_inst/state_counter [0]),
    .I2(\u1/iprecieve_inst/state_counter [4]),
    .I3(\u1/iprecieve_inst/state_counter [3]),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I5(\u1/iprecieve_inst/state_counter [2]),
    .O(\u1/iprecieve_inst/Mmux__n06054 )
  );
  LUT6 #(
    .INIT ( 64'h0000006060606060 ))
  \u1/iprecieve_inst/Mmux__n060542  (
    .I0(\u1/iprecieve_inst/state_counter [0]),
    .I1(\u1/iprecieve_inst/state_counter [1]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I3(\u1/iprecieve_inst/state_counter [2]),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I5(\u1/iprecieve_inst/state_counter [3]),
    .O(\u1/iprecieve_inst/Mmux__n060541_1400 )
  );
  LUT5 #(
    .INIT ( 32'h2222F222 ))
  \u1/iprecieve_inst/Mmux__n060543  (
    .I0(\u1/iprecieve_inst/Mmux__n060541_1400 ),
    .I1(\u1/iprecieve_inst/state_counter [4]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I3(\u1/iprecieve_inst/Mmux__n06054 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .O(\u1/iprecieve_inst/_n0605 [4])
  );
  LUT5 #(
    .INIT ( 32'h98995455 ))
  \u1/iprecieve_inst/_n0645_inv_SW0  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I2(e_rxd_7_IBUF_0),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .O(N0)
  );
  LUT5 #(
    .INIT ( 32'hFFFF0040 ))
  \u1/iprecieve_inst/_n0645_inv  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I1(reset_n_IBUF_8),
    .I2(e_rxdv_IBUF_10),
    .I3(N0),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .O(\u1/iprecieve_inst/_n0645_inv_380 )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \u1/iprecieve_inst/_n0736_inv2_SW0  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd2_1_1732 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h00000000000700FF ))
  \u1/iprecieve_inst/_n0736_inv2  (
    .I0(\u1/iprecieve_inst/state_counter [0]),
    .I1(\u1/iprecieve_inst/state_counter [1]),
    .I2(\u1/iprecieve_inst/state_counter [2]),
    .I3(\u1/iprecieve_inst/state_counter [4]),
    .I4(\u1/iprecieve_inst/state_counter [3]),
    .I5(N2),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In21  (
    .I0(\u1/iprecieve_inst/mymac[64] ),
    .I1(\u1/iprecieve_inst/mymac[66] ),
    .I2(\u1/iprecieve_inst/mymac[55] ),
    .I3(\u1/iprecieve_inst/mymac[56] ),
    .I4(\u1/iprecieve_inst/mymac[53] ),
    .I5(\u1/iprecieve_inst/mymac[54] ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In21_1403 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In22  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I2(\u1/iprecieve_inst/mymac[73] ),
    .I3(\u1/iprecieve_inst/mymac[75] ),
    .I4(\u1/iprecieve_inst/mymac[68] ),
    .I5(\u1/iprecieve_inst/mymac[69] ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In22_1404 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In23  (
    .I0(\u1/iprecieve_inst/mymac[87] ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/mymac[86] ),
    .I3(\u1/iprecieve_inst/mymac[85] ),
    .I4(\u1/iprecieve_inst/mymac[84] ),
    .I5(\u1/iprecieve_inst/mymac[83] ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In23_1405 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In24  (
    .I0(\u1/iprecieve_inst/mymac[81] ),
    .I1(\u1/iprecieve_inst/mymac[82] ),
    .I2(\u1/iprecieve_inst/mymac[80] ),
    .I3(\u1/iprecieve_inst/mymac[79] ),
    .I4(\u1/iprecieve_inst/mymac[78] ),
    .I5(\u1/iprecieve_inst/mymac[77] ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In24_1406 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In26  (
    .I0(\u1/iprecieve_inst/mymac[74] ),
    .I1(\u1/iprecieve_inst/mymac[76] ),
    .I2(\u1/iprecieve_inst/mymac[72] ),
    .I3(\u1/iprecieve_inst/mymac[71] ),
    .I4(\u1/iprecieve_inst/mymac[70] ),
    .I5(\u1/iprecieve_inst/mymac[67] ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In26_1407 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In27  (
    .I0(\u1/iprecieve_inst/mymac[63] ),
    .I1(\u1/iprecieve_inst/mymac[65] ),
    .I2(\u1/iprecieve_inst/mymac[62] ),
    .I3(\u1/iprecieve_inst/mymac[61] ),
    .I4(\u1/iprecieve_inst/mymac[60] ),
    .I5(\u1/iprecieve_inst/mymac[59] ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In27_1408 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In28  (
    .I0(\u1/iprecieve_inst/mymac[57] ),
    .I1(\u1/iprecieve_inst/mymac[58] ),
    .I2(\u1/iprecieve_inst/mymac[48] ),
    .I3(\u1/iprecieve_inst/mymac[45] ),
    .I4(\u1/iprecieve_inst/mymac[44] ),
    .I5(\u1/iprecieve_inst/mymac[43] ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In28_1409 )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In29  (
    .I0(\u1/iprecieve_inst/mymac[40] ),
    .I1(\u1/iprecieve_inst/mymac[42] ),
    .I2(\u1/iprecieve_inst/mymac[41] ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd2-In28_1409 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2-In26_1407 ),
    .I5(\u1/iprecieve_inst/rx_state_FSM_FFd2-In27_1408 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In29_1410 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In210  (
    .I0(\u1/iprecieve_inst/mymac[51] ),
    .I1(\u1/iprecieve_inst/mymac[52] ),
    .I2(\u1/iprecieve_inst/mymac[49] ),
    .I3(\u1/iprecieve_inst/mymac[50] ),
    .I4(\u1/iprecieve_inst/mymac[46] ),
    .I5(\u1/iprecieve_inst/mymac[47] ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In210_1411 )
  );
  LUT5 #(
    .INIT ( 32'h04040444 ))
  \u1/iprecieve_inst/Mmux__n060551  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/state_counter [2]),
    .I4(\u1/iprecieve_inst/state_counter [3]),
    .O(\u1/iprecieve_inst/Mmux__n06055 )
  );
  LUT6 #(
    .INIT ( 64'h777F777F222A223A ))
  \u1/iprecieve_inst/Mmux__n060552  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/state_counter [3]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/state_counter [2]),
    .I4(\u1/iprecieve_inst/state_counter [1]),
    .I5(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .O(\u1/iprecieve_inst/Mmux__n060551_1414 )
  );
  LUT4 #(
    .INIT ( 16'h4454 ))
  \u1/iprecieve_inst/Mmux__n060553  (
    .I0(\u1/iprecieve_inst/state_counter [0]),
    .I1(\u1/iprecieve_inst/Mmux__n06055 ),
    .I2(\u1/iprecieve_inst/Mmux__n060551_1414 ),
    .I3(\u1/iprecieve_inst/state_counter [4]),
    .O(\u1/iprecieve_inst/_n0605 [5])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \u1/iprecieve_inst/Mmux__n060521  (
    .I0(\u1/iprecieve_inst/state_counter [3]),
    .I1(\u1/iprecieve_inst/state_counter [1]),
    .I2(\u1/iprecieve_inst/state_counter [2]),
    .I3(\u1/iprecieve_inst/state_counter [0]),
    .O(\u1/iprecieve_inst/Mmux__n06052 )
  );
  LUT5 #(
    .INIT ( 32'h08202020 ))
  \u1/iprecieve_inst/Mmux__n060522  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/state_counter [2]),
    .I2(\u1/iprecieve_inst/state_counter [3]),
    .I3(\u1/iprecieve_inst/state_counter [1]),
    .I4(\u1/iprecieve_inst/state_counter [0]),
    .O(\u1/iprecieve_inst/Mmux__n060521_1416 )
  );
  LUT6 #(
    .INIT ( 64'h004040FF00404040 ))
  \u1/iprecieve_inst/Mmux__n060523  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/Mmux__n06052 ),
    .I3(\u1/iprecieve_inst/state_counter [4]),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I5(\u1/iprecieve_inst/Mmux__n060521_1416 ),
    .O(\u1/iprecieve_inst/_n0605 [2])
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT17_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/mydata [0]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(e_rxd_0_IBUF_7),
    .I4(\u1/iprecieve_inst/mydata [8]),
    .O(N4)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT19_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/mydata [2]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(e_rxd_2_IBUF_5),
    .I4(\u1/iprecieve_inst/mydata [10]),
    .O(N6)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT20_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/mydata [3]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(e_rxd_3_IBUF_4),
    .I4(\u1/iprecieve_inst/mydata [11]),
    .O(N8)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT25_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/mydata [7]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(e_rxd_7_IBUF_0),
    .I4(\u1/iprecieve_inst/mydata [15]),
    .O(N10)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT22_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/mydata [5]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(e_rxd_5_IBUF_2),
    .I4(\u1/iprecieve_inst/mydata [13]),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT21_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/mydata [4]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(e_rxd_4_IBUF_3),
    .I4(\u1/iprecieve_inst/mydata [12]),
    .O(N14)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT24_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/mydata [6]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(e_rxd_6_IBUF_1),
    .I4(\u1/iprecieve_inst/mydata [14]),
    .O(N16)
  );
  LUT5 #(
    .INIT ( 32'hA2A7F2F7 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT18_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/mydata [1]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(e_rxd_1_IBUF_6),
    .I4(\u1/iprecieve_inst/mydata [9]),
    .O(N18)
  );
  LUT4 #(
    .INIT ( 16'h5540 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd3-In34  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .I2(e_rxd_7_IBUF_0),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd3-In34_1426 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \u1/iprecieve_inst/Mmux__n06051_SW0  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h4455444404110404 ))
  \u1/iprecieve_inst/Mmux__n06051  (
    .I0(N20),
    .I1(\u1/iprecieve_inst/state_counter [4]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/Mmux__n060522_279 ),
    .I4(\u1/iprecieve_inst/state_counter [3]),
    .I5(\u1/iprecieve_inst/Mmux__n0605112 ),
    .O(\u1/iprecieve_inst/_n0605 [1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In17_SW0  (
    .I0(e_rxd_0_IBUF_7),
    .I1(e_rxd_1_IBUF_6),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h0000000800000000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In17  (
    .I0(e_rxd_2_IBUF_5),
    .I1(e_rxd_6_IBUF_1),
    .I2(e_rxd_5_IBUF_2),
    .I3(e_rxd_3_IBUF_4),
    .I4(N22),
    .I5(e_rxd_4_IBUF_3),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \u1/ipsend_inst/Mmux__n051921  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/i [4]),
    .I2(\u1/ipsend_inst/i [3]),
    .I3(\u1/ipsend_inst/i [2]),
    .O(\u1/ipsend_inst/Mmux__n05192 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \u1/ipsend_inst/tx_state_FSM_FFd2-In_SW0  (
    .I0(\u1/ipsend_inst/j [1]),
    .I1(\u1/ipsend_inst/j [0]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hAAAAA2AAEEEEEEEE ))
  \u1/ipsend_inst/tx_state_FSM_FFd2-In  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(N24),
    .I3(\u1/ipsend_inst/j [2]),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd1-In11 ),
    .I5(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/tx_state_FSM_FFd2-In_855 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \u1/ipsend_inst/Mmux__n0571361  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/i [1]),
    .I2(\u1/ipsend_inst/datain_reg [21]),
    .I3(\u1/ipsend_inst/datain_reg [5]),
    .I4(\u1/ipsend_inst/datain_reg [13]),
    .I5(\u1/ipsend_inst/datain_reg [29]),
    .O(\u1/ipsend_inst/Mmux__n057136 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \u1/ipsend_inst/Mmux__n0571363  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/ip_header_0[5] ),
    .I3(\u1/ipsend_inst/ip_header_0[69] ),
    .I4(\u1/ipsend_inst/ip_header_0[77] ),
    .I5(\u1/ipsend_inst/ip_header_0[13] ),
    .O(\u1/ipsend_inst/Mmux__n0571362 )
  );
  LUT6 #(
    .INIT ( 64'h00001F1000000F00 ))
  \u1/ipsend_inst/Mmux__n0571368  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/j [0]),
    .I2(\u1/ipsend_inst/i [1]),
    .I3(\u1/ipsend_inst/Mmux__n0571366 ),
    .I4(\u1/ipsend_inst/tx_state [1]),
    .I5(\u1/ipsend_inst/Mmux__n0571362 ),
    .O(\u1/ipsend_inst/Mmux__n0571367_1437 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \u1/ipsend_inst/Mmux__n0571369  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/i [1]),
    .I2(\u1/crc_inst/Crc [18]),
    .I3(\u1/crc_inst/Crc [2]),
    .I4(\u1/crc_inst/Crc [10]),
    .I5(\u1/crc_inst/Crc [26]),
    .O(\u1/ipsend_inst/Mmux__n0571368_1438 )
  );
  LUT6 #(
    .INIT ( 64'hFFF4FF44F0F00000 ))
  \u1/ipsend_inst/Mmux__n0571187  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/Mmux__n0571185_1442 ),
    .I2(\u1/ipsend_inst/Mmux__n0571184 ),
    .I3(\u1/ipsend_inst/Mmux__n0571182_1440 ),
    .I4(\u1/ipsend_inst/Mmux__n0571411 ),
    .I5(\u1/ipsend_inst/Mmux__n0571412 ),
    .O(\u1/ipsend_inst/Mmux__n0571186_1443 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFBA30 ))
  \u1/ipsend_inst/Mmux__n0571189  (
    .I0(\u1/ipsend_inst/datain_reg [10]),
    .I1(\u1/crc_inst/Crc [13]),
    .I2(\u1/ipsend_inst/Mmux__n0571105 ),
    .I3(\u1/ipsend_inst/Mmux__n0571106 ),
    .I4(\u1/ipsend_inst/Mmux__n0571187_1444 ),
    .O(\u1/ipsend_inst/Mmux__n0571188_1445 )
  );
  LUT6 #(
    .INIT ( 64'h73735050FF73FF50 ))
  \u1/ipsend_inst/Mmux__n05711810  (
    .I0(\u1/crc_inst/Crc [21]),
    .I1(\u1/crc_inst/Crc [5]),
    .I2(\u1/ipsend_inst/Mmux__n0571101 ),
    .I3(\u1/ipsend_inst/Mmux__n0571102 ),
    .I4(\u1/ipsend_inst/Mmux__n0571103 ),
    .I5(\u1/crc_inst/Crc [29]),
    .O(\u1/ipsend_inst/Mmux__n0571189_1446 )
  );
  LUT6 #(
    .INIT ( 64'hFCF4FCF4FCF4FCF0 ))
  \u1/ipsend_inst/Mmux__n05711811  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/Mmux__n0571181 ),
    .I3(\u1/ipsend_inst/Mmux__n0571186_1443 ),
    .I4(\u1/ipsend_inst/Mmux__n0571189_1446 ),
    .I5(\u1/ipsend_inst/Mmux__n0571188_1445 ),
    .O(\u1/ipsend_inst/_n0571 [2])
  );
  LUT5 #(
    .INIT ( 32'hFFFFB3A0 ))
  \u1/ipsend_inst/Mmux__n0571611  (
    .I0(\u1/ipsend_inst/datain_reg [0]),
    .I1(\u1/crc_inst/Crc [15]),
    .I2(\u1/ipsend_inst/Mmux__n0571104 ),
    .I3(\u1/ipsend_inst/Mmux__n0571105 ),
    .I4(\u1/ipsend_inst/Mmux__n057169_1451 ),
    .O(\u1/ipsend_inst/Mmux__n0571610_1452 )
  );
  LUT6 #(
    .INIT ( 64'h73735050FF73FF50 ))
  \u1/ipsend_inst/Mmux__n0571612  (
    .I0(\u1/crc_inst/Crc [23]),
    .I1(\u1/crc_inst/Crc [7]),
    .I2(\u1/ipsend_inst/Mmux__n0571101 ),
    .I3(\u1/ipsend_inst/Mmux__n0571102 ),
    .I4(\u1/ipsend_inst/Mmux__n0571103 ),
    .I5(\u1/crc_inst/Crc [31]),
    .O(\u1/ipsend_inst/Mmux__n0571611_1453 )
  );
  LUT6 #(
    .INIT ( 64'hFCF4FCF4FCF4FCF0 ))
  \u1/ipsend_inst/Mmux__n0571613  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/Mmux__n057161 ),
    .I3(\u1/ipsend_inst/Mmux__n057168_1450 ),
    .I4(\u1/ipsend_inst/Mmux__n0571611_1453 ),
    .I5(\u1/ipsend_inst/Mmux__n0571610_1452 ),
    .O(\u1/ipsend_inst/_n0571 [0])
  );
  LUT5 #(
    .INIT ( 32'hFFFFBA30 ))
  \u1/ipsend_inst/Mmux__n0571482  (
    .I0(\u1/ipsend_inst/datain_reg [15]),
    .I1(\u1/crc_inst/Crc [8]),
    .I2(\u1/ipsend_inst/Mmux__n0571105 ),
    .I3(\u1/ipsend_inst/Mmux__n0571106 ),
    .I4(\u1/ipsend_inst/Mmux__n057148 ),
    .O(\u1/ipsend_inst/Mmux__n0571481_1455 )
  );
  LUT6 #(
    .INIT ( 64'h73735050FF73FF50 ))
  \u1/ipsend_inst/Mmux__n0571483  (
    .I0(\u1/crc_inst/Crc [16]),
    .I1(\u1/crc_inst/Crc [0]),
    .I2(\u1/ipsend_inst/Mmux__n0571101 ),
    .I3(\u1/ipsend_inst/Mmux__n0571102 ),
    .I4(\u1/ipsend_inst/Mmux__n0571103 ),
    .I5(\u1/crc_inst/Crc [24]),
    .O(\u1/ipsend_inst/Mmux__n0571482_1456 )
  );
  LUT5 #(
    .INIT ( 32'hFFF8FF00 ))
  \u1/ipsend_inst/Mmux__n0571484  (
    .I0(\u1/ipsend_inst/ip_header_0[223] ),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/Mmux__n0571310 ),
    .I3(\u1/ipsend_inst/Mmux__n05714815 ),
    .I4(\u1/ipsend_inst/Mmux__n0571102 ),
    .O(\u1/ipsend_inst/Mmux__n0571483_1457 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \u1/ipsend_inst/Mmux__n0571485  (
    .I0(\u1/ipsend_inst/ip_header_0[15] ),
    .I1(\u1/ipsend_inst/ip_header_0[7] ),
    .I2(\u1/ipsend_inst/ip_header_0[79] ),
    .I3(\u1/ipsend_inst/ip_header_0[71] ),
    .I4(\u1/ipsend_inst/j [1]),
    .I5(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/Mmux__n0571484_1458 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF200020002000 ))
  \u1/ipsend_inst/Mmux__n0571486  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/j [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/Mmux__n0571484_1458 ),
    .I4(\u1/ipsend_inst/j [1]),
    .I5(\u1/ipsend_inst/Mmux__n0571102 ),
    .O(\u1/ipsend_inst/Mmux__n0571485_1459 )
  );
  LUT6 #(
    .INIT ( 64'hF0E0A0A0F0C00000 ))
  \u1/ipsend_inst/Mmux__n0571487  (
    .I0(\u1/ipsend_inst/ip_header_0[63] ),
    .I1(\u1/ipsend_inst/ip_header_0[55] ),
    .I2(\u1/ipsend_inst/j [0]),
    .I3(\u1/ipsend_inst/j [1]),
    .I4(\u1/ipsend_inst/Mmux__n0571101 ),
    .I5(\u1/ipsend_inst/Mmux__n0571102 ),
    .O(\u1/ipsend_inst/Mmux__n0571486_1460 )
  );
  LUT5 #(
    .INIT ( 32'hFDFDFDF8 ))
  \u1/ipsend_inst/Mmux__n0571489  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/Mmux__n0571487_1461 ),
    .I2(\u1/ipsend_inst/Mmux__n0571483_1457 ),
    .I3(\u1/ipsend_inst/Mmux__n0571485_1459 ),
    .I4(\u1/ipsend_inst/Mmux__n0571486_1460 ),
    .O(\u1/ipsend_inst/Mmux__n0571488_1462 )
  );
  LUT6 #(
    .INIT ( 64'hECECECA864646420 ))
  \u1/ipsend_inst/Mmux__n05714810  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o<4>1 ),
    .I3(\u1/ipsend_inst/Mmux__n0571482_1456 ),
    .I4(\u1/ipsend_inst/Mmux__n0571481_1455 ),
    .I5(\u1/ipsend_inst/Mmux__n0571488_1462 ),
    .O(\u1/ipsend_inst/_n0571 [7])
  );
  LUT6 #(
    .INIT ( 64'hFFEEFF00FEEEF000 ))
  \u1/ipsend_inst/Mmux__n0571427  (
    .I0(\u1/ipsend_inst/Mmux__n0571422 ),
    .I1(\u1/ipsend_inst/Mmux__n057142 ),
    .I2(\u1/ipsend_inst/Mmux__n0571425 ),
    .I3(\u1/ipsend_inst/Mmux__n0571411 ),
    .I4(\u1/ipsend_inst/Mmux__n0571412 ),
    .I5(\u1/ipsend_inst/Mmux__n0571423_1465 ),
    .O(\u1/ipsend_inst/Mmux__n0571426_1467 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFBA30 ))
  \u1/ipsend_inst/Mmux__n0571429  (
    .I0(\u1/ipsend_inst/datain_reg [14]),
    .I1(\u1/crc_inst/Crc [9]),
    .I2(\u1/ipsend_inst/Mmux__n0571105 ),
    .I3(\u1/ipsend_inst/Mmux__n0571106 ),
    .I4(\u1/ipsend_inst/Mmux__n0571427_1468 ),
    .O(\u1/ipsend_inst/Mmux__n0571428_1469 )
  );
  LUT6 #(
    .INIT ( 64'h73735050FF73FF50 ))
  \u1/ipsend_inst/Mmux__n05714210  (
    .I0(\u1/crc_inst/Crc [17]),
    .I1(\u1/crc_inst/Crc [1]),
    .I2(\u1/ipsend_inst/Mmux__n0571101 ),
    .I3(\u1/ipsend_inst/Mmux__n0571102 ),
    .I4(\u1/ipsend_inst/Mmux__n0571103 ),
    .I5(\u1/crc_inst/Crc [25]),
    .O(\u1/ipsend_inst/Mmux__n0571429_1470 )
  );
  LUT6 #(
    .INIT ( 64'hEEE6EEE6EEE6EEA2 ))
  \u1/ipsend_inst/Mmux__n05714211  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/Mmux__n05714815 ),
    .I3(\u1/ipsend_inst/Mmux__n0571426_1467 ),
    .I4(\u1/ipsend_inst/Mmux__n0571429_1470 ),
    .I5(\u1/ipsend_inst/Mmux__n0571428_1469 ),
    .O(\u1/ipsend_inst/_n0571 [6])
  );
  LUT6 #(
    .INIT ( 64'h5444100010001000 ))
  \u1/ipsend_inst/Mmux__n0571304  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/j [0]),
    .I3(\u1/ipsend_inst/ip_header_0[60] ),
    .I4(\u1/ipsend_inst/ip_header_0[220] ),
    .I5(\u1/ipsend_inst/j [2]),
    .O(\u1/ipsend_inst/Mmux__n0571303 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFBA30 ))
  \u1/ipsend_inst/Mmux__n05713010  (
    .I0(\u1/ipsend_inst/datain_reg [12]),
    .I1(\u1/crc_inst/Crc [11]),
    .I2(\u1/ipsend_inst/Mmux__n0571105 ),
    .I3(\u1/ipsend_inst/Mmux__n0571106 ),
    .I4(\u1/ipsend_inst/Mmux__n0571308_1475 ),
    .O(\u1/ipsend_inst/Mmux__n0571309_1476 )
  );
  LUT6 #(
    .INIT ( 64'h73735050FF73FF50 ))
  \u1/ipsend_inst/Mmux__n05713011  (
    .I0(\u1/crc_inst/Crc [19]),
    .I1(\u1/crc_inst/Crc [3]),
    .I2(\u1/ipsend_inst/Mmux__n0571101 ),
    .I3(\u1/ipsend_inst/Mmux__n0571102 ),
    .I4(\u1/ipsend_inst/Mmux__n0571103 ),
    .I5(\u1/crc_inst/Crc [27]),
    .O(\u1/ipsend_inst/Mmux__n05713010_1477 )
  );
  LUT6 #(
    .INIT ( 64'hFCF4FCF4FCF4FCF0 ))
  \u1/ipsend_inst/Mmux__n05713012  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/Mmux__n0571301 ),
    .I3(\u1/ipsend_inst/Mmux__n0571307_1474 ),
    .I4(\u1/ipsend_inst/Mmux__n05713010_1477 ),
    .I5(\u1/ipsend_inst/Mmux__n0571309_1476 ),
    .O(\u1/ipsend_inst/_n0571 [4])
  );
  LUT4 #(
    .INIT ( 16'h9810 ))
  \u1/ipsend_inst/tx_state_FSM_FFd3-In1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_34_o ),
    .O(\u1/ipsend_inst/tx_state_FSM_FFd3-In1_1478 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFB3A0 ))
  \u1/ipsend_inst/Mmux__n05711210  (
    .I0(\u1/ipsend_inst/datain_reg [17]),
    .I1(\u1/crc_inst/Crc [14]),
    .I2(\u1/ipsend_inst/Mmux__n0571107 ),
    .I3(\u1/ipsend_inst/Mmux__n0571105 ),
    .I4(\u1/ipsend_inst/Mmux__n0571128_1483 ),
    .O(\u1/ipsend_inst/Mmux__n0571129_1484 )
  );
  LUT6 #(
    .INIT ( 64'h73735050FF73FF50 ))
  \u1/ipsend_inst/Mmux__n05711211  (
    .I0(\u1/crc_inst/Crc [22]),
    .I1(\u1/crc_inst/Crc [6]),
    .I2(\u1/ipsend_inst/Mmux__n0571101 ),
    .I3(\u1/ipsend_inst/Mmux__n0571102 ),
    .I4(\u1/ipsend_inst/Mmux__n0571103 ),
    .I5(\u1/crc_inst/Crc [30]),
    .O(\u1/ipsend_inst/Mmux__n05711210_1485 )
  );
  LUT5 #(
    .INIT ( 32'hC4C4C4C0 ))
  \u1/ipsend_inst/Mmux__n05711212  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/Mmux__n0571127_1482 ),
    .I3(\u1/ipsend_inst/Mmux__n05711210_1485 ),
    .I4(\u1/ipsend_inst/Mmux__n0571129_1484 ),
    .O(\u1/ipsend_inst/_n0571 [1])
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \u1/ipsend_inst/Mmux__n0571246  (
    .I0(\u1/ipsend_inst/ip_header_0[11] ),
    .I1(\u1/ipsend_inst/ip_header_0[3] ),
    .I2(\u1/ipsend_inst/ip_header_0[75] ),
    .I3(\u1/ipsend_inst/ip_header_0[67] ),
    .I4(\u1/ipsend_inst/j [1]),
    .I5(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/Mmux__n0571245_1489 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEF0FFFFEE00 ))
  \u1/ipsend_inst/Mmux__n0571248  (
    .I0(\u1/ipsend_inst/Mmux__n0571244 ),
    .I1(\u1/ipsend_inst/Mmux__n0571242_1487 ),
    .I2(\u1/ipsend_inst/Mmux__n0571411 ),
    .I3(\u1/ipsend_inst/Mmux__n0571412 ),
    .I4(\u1/ipsend_inst/Mmux__n0571241 ),
    .I5(\u1/ipsend_inst/Mmux__n0571246_1490 ),
    .O(\u1/ipsend_inst/Mmux__n0571247_1491 )
  );
  LUT6 #(
    .INIT ( 64'h73735050FF73FF50 ))
  \u1/ipsend_inst/Mmux__n05712411  (
    .I0(\u1/crc_inst/Crc [20]),
    .I1(\u1/crc_inst/Crc [4]),
    .I2(\u1/ipsend_inst/Mmux__n0571101 ),
    .I3(\u1/ipsend_inst/Mmux__n0571102 ),
    .I4(\u1/ipsend_inst/Mmux__n0571103 ),
    .I5(\u1/crc_inst/Crc [28]),
    .O(\u1/ipsend_inst/Mmux__n05712410 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>1  (
    .I0(\u1/ipsend_inst/time_counter [11]),
    .I1(\u1/ipsend_inst/time_counter [10]),
    .I2(\u1/ipsend_inst/time_counter [13]),
    .I3(\u1/ipsend_inst/time_counter [12]),
    .I4(\u1/ipsend_inst/time_counter [15]),
    .I5(\u1/ipsend_inst/time_counter [14]),
    .O(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>2  (
    .I0(\u1/ipsend_inst/time_counter [5]),
    .I1(\u1/ipsend_inst/time_counter [4]),
    .I2(\u1/ipsend_inst/time_counter [7]),
    .I3(\u1/ipsend_inst/time_counter [6]),
    .I4(\u1/ipsend_inst/time_counter [9]),
    .I5(\u1/ipsend_inst/time_counter [8]),
    .O(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>1_1495 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>3  (
    .I0(\u1/ipsend_inst/time_counter [23]),
    .I1(\u1/ipsend_inst/time_counter [22]),
    .I2(\u1/ipsend_inst/time_counter [25]),
    .I3(\u1/ipsend_inst/time_counter [24]),
    .I4(\u1/ipsend_inst/time_counter [27]),
    .I5(\u1/ipsend_inst/time_counter [26]),
    .O(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>2_1496 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>4  (
    .I0(\u1/ipsend_inst/time_counter [17]),
    .I1(\u1/ipsend_inst/time_counter [16]),
    .I2(\u1/ipsend_inst/time_counter [19]),
    .I3(\u1/ipsend_inst/time_counter [18]),
    .I4(\u1/ipsend_inst/time_counter [21]),
    .I5(\u1/ipsend_inst/time_counter [20]),
    .O(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>3_1497 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>5  (
    .I0(\u1/ipsend_inst/time_counter [28]),
    .I1(\u1/ipsend_inst/time_counter [29]),
    .I2(\u1/ipsend_inst/time_counter [3]),
    .I3(\u1/ipsend_inst/time_counter [2]),
    .I4(\u1/ipsend_inst/time_counter [1]),
    .I5(\u1/ipsend_inst/time_counter [0]),
    .O(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>4_1498 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>6  (
    .I0(\u1/ipsend_inst/time_counter [31]),
    .I1(\u1/ipsend_inst/time_counter [30]),
    .O(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>5_1499 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>7  (
    .I0(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>5_1499 ),
    .I1(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>4_1498 ),
    .I2(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>3_1497 ),
    .I3(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>2_1496 ),
    .I4(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31>1_1495 ),
    .I5(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o<31> ),
    .O(\u1/ipsend_inst/time_counter[31]_GND_3_o_equal_2_o )
  );
  LUT5 #(
    .INIT ( 32'h69969669 ))
  \u1/crc_inst/CrcNext<5>_SW0  (
    .I0(\u1/ipsend_inst/dataout [4]),
    .I1(\u1/ipsend_inst/dataout [2]),
    .I2(\u1/ipsend_inst/dataout [0]),
    .I3(\u1/ipsend_inst/dataout [7]),
    .I4(\u1/ipsend_inst/dataout [6]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<5>  (
    .I0(\u1/crc_inst/Crc [24]),
    .I1(\u1/crc_inst/Crc [25]),
    .I2(\u1/crc_inst/Crc [29]),
    .I3(\u1/crc_inst/Crc [31]),
    .I4(\u1/crc_inst/CrcNext<4>_bdd2 ),
    .I5(N26),
    .O(\u1/crc_inst/CrcNext [5])
  );
  LUT5 #(
    .INIT ( 32'h69969669 ))
  \u1/crc_inst/CrcNext<12>1  (
    .I0(\u1/ipsend_inst/dataout [6]),
    .I1(\u1/ipsend_inst/dataout [7]),
    .I2(\u1/ipsend_inst/dataout [5]),
    .I3(\u1/ipsend_inst/dataout [1]),
    .I4(\u1/ipsend_inst/dataout [2]),
    .O(\u1/crc_inst/CrcNext<12>1_1501 )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \u1/crc_inst/CrcNext<12>2  (
    .I0(\u1/crc_inst/Crc [25]),
    .I1(\u1/crc_inst/Crc [4]),
    .I2(\u1/crc_inst/Crc [28]),
    .I3(\u1/crc_inst/Crc [30]),
    .I4(\u1/crc_inst/Crc [26]),
    .I5(\u1/crc_inst/Crc [29]),
    .O(\u1/crc_inst/CrcNext<12>2_1502 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/CrcNext<12>3  (
    .I0(\u1/crc_inst/CrcNext<12>2_1502 ),
    .I1(\u1/crc_inst/Crc [24]),
    .I2(\u1/ipsend_inst/dataout [3]),
    .I3(\u1/crc_inst/CrcNext<12>1_1501 ),
    .O(\u1/crc_inst/CrcNext [12])
  );
  LUT5 #(
    .INIT ( 32'h69969669 ))
  \u1/crc_inst/CrcNext<13>1  (
    .I0(\u1/ipsend_inst/dataout [4]),
    .I1(\u1/ipsend_inst/dataout [0]),
    .I2(\u1/ipsend_inst/dataout [2]),
    .I3(\u1/ipsend_inst/dataout [5]),
    .I4(\u1/ipsend_inst/dataout [6]),
    .O(\u1/crc_inst/CrcNext<13>1_1503 )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \u1/crc_inst/CrcNext<13>2  (
    .I0(\u1/crc_inst/Crc [25]),
    .I1(\u1/crc_inst/Crc [5]),
    .I2(\u1/crc_inst/Crc [27]),
    .I3(\u1/crc_inst/Crc [30]),
    .I4(\u1/crc_inst/Crc [31]),
    .I5(\u1/crc_inst/Crc [26]),
    .O(\u1/crc_inst/CrcNext<13>2_1504 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/CrcNext<13>3  (
    .I0(\u1/crc_inst/CrcNext<13>2_1504 ),
    .I1(\u1/crc_inst/Crc [29]),
    .I2(\u1/ipsend_inst/dataout [1]),
    .I3(\u1/crc_inst/CrcNext<13>1_1503 ),
    .O(\u1/crc_inst/CrcNext [13])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<14>_SW0  (
    .I0(\u1/crc_inst/Crc [28]),
    .I1(\u1/ipsend_inst/dataout [4]),
    .I2(\u1/ipsend_inst/dataout [1]),
    .I3(\u1/ipsend_inst/dataout [0]),
    .I4(\u1/ipsend_inst/dataout [5]),
    .I5(\u1/ipsend_inst/dataout [3]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<14>  (
    .I0(\u1/crc_inst/Crc [26]),
    .I1(\u1/crc_inst/Crc [31]),
    .I2(\u1/crc_inst/Crc [27]),
    .I3(\u1/crc_inst/Crc [6]),
    .I4(\u1/crc_inst/Crc [30]),
    .I5(N28),
    .O(\u1/crc_inst/CrcNext [14])
  );
  LUT5 #(
    .INIT ( 32'h69969669 ))
  \u1/crc_inst/CrcNext<6>1  (
    .I0(\u1/ipsend_inst/dataout [6]),
    .I1(\u1/ipsend_inst/dataout [5]),
    .I2(\u1/ipsend_inst/dataout [2]),
    .I3(\u1/ipsend_inst/dataout [1]),
    .I4(\u1/ipsend_inst/dataout [0]),
    .O(\u1/crc_inst/CrcNext<6>1_1506 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<6>2  (
    .I0(\u1/crc_inst/Crc [30]),
    .I1(\u1/crc_inst/Crc [28]),
    .I2(\u1/crc_inst/Crc [31]),
    .I3(\u1/crc_inst/Crc [26]),
    .I4(\u1/crc_inst/Crc [29]),
    .I5(\u1/crc_inst/Crc [25]),
    .O(\u1/crc_inst/CrcNext<6>2_1507 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \u1/crc_inst/CrcNext<6>3  (
    .I0(\u1/crc_inst/CrcNext<6>2_1507 ),
    .I1(\u1/ipsend_inst/dataout [3]),
    .I2(\u1/crc_inst/CrcNext<6>1_1506 ),
    .O(\u1/crc_inst/CrcNext [6])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/CrcNext<10>_SW0  (
    .I0(\u1/ipsend_inst/dataout [4]),
    .I1(\u1/ipsend_inst/dataout [2]),
    .I2(\u1/ipsend_inst/dataout [5]),
    .I3(\u1/ipsend_inst/dataout [7]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<10>  (
    .I0(\u1/crc_inst/Crc [2]),
    .I1(\u1/crc_inst/Crc [26]),
    .I2(\u1/crc_inst/Crc [29]),
    .I3(\u1/crc_inst/Crc [27]),
    .I4(\u1/crc_inst/Crc [24]),
    .I5(N30),
    .O(\u1/crc_inst/CrcNext [10])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/CrcNext<11>_SW0  (
    .I0(\u1/ipsend_inst/dataout [4]),
    .I1(\u1/ipsend_inst/dataout [3]),
    .I2(\u1/ipsend_inst/dataout [7]),
    .I3(\u1/ipsend_inst/dataout [6]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<11>  (
    .I0(\u1/crc_inst/Crc [3]),
    .I1(\u1/crc_inst/Crc [27]),
    .I2(\u1/crc_inst/Crc [25]),
    .I3(\u1/crc_inst/Crc [24]),
    .I4(\u1/crc_inst/Crc [28]),
    .I5(N32),
    .O(\u1/crc_inst/CrcNext [11])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/CrcNext<15>_SW0  (
    .I0(\u1/ipsend_inst/dataout [4]),
    .I1(\u1/ipsend_inst/dataout [2]),
    .I2(\u1/ipsend_inst/dataout [0]),
    .I3(\u1/ipsend_inst/dataout [3]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<15>  (
    .I0(\u1/crc_inst/Crc [7]),
    .I1(\u1/crc_inst/Crc [31]),
    .I2(\u1/crc_inst/Crc [29]),
    .I3(\u1/crc_inst/Crc [27]),
    .I4(\u1/crc_inst/Crc [28]),
    .I5(N34),
    .O(\u1/crc_inst/CrcNext [15])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/CrcNext<26>_SW0  (
    .I0(\u1/ipsend_inst/dataout [4]),
    .I1(\u1/ipsend_inst/dataout [1]),
    .I2(\u1/ipsend_inst/dataout [3]),
    .I3(\u1/ipsend_inst/dataout [7]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<26>  (
    .I0(\u1/crc_inst/Crc [18]),
    .I1(\u1/crc_inst/Crc [27]),
    .I2(\u1/crc_inst/Crc [24]),
    .I3(\u1/crc_inst/Crc [30]),
    .I4(\u1/crc_inst/Crc [28]),
    .I5(N36),
    .O(\u1/crc_inst/CrcNext [26])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/CrcNext<27>_SW0  (
    .I0(\u1/ipsend_inst/dataout [3]),
    .I1(\u1/ipsend_inst/dataout [6]),
    .I2(\u1/ipsend_inst/dataout [0]),
    .I3(\u1/ipsend_inst/dataout [2]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<27>  (
    .I0(\u1/crc_inst/Crc [31]),
    .I1(\u1/crc_inst/Crc [29]),
    .I2(\u1/crc_inst/Crc [25]),
    .I3(\u1/crc_inst/Crc [28]),
    .I4(\u1/crc_inst/Crc [19]),
    .I5(N38),
    .O(\u1/crc_inst/CrcNext [27])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<8>  (
    .I0(\u1/crc_inst/Crc [27]),
    .I1(\u1/crc_inst/Crc [25]),
    .I2(\u1/crc_inst/Crc [24]),
    .I3(\u1/crc_inst/Crc [0]),
    .I4(\u1/crc_inst/Crc [28]),
    .I5(N32),
    .O(\u1/crc_inst/CrcNext [8])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \u1/crc_inst/CrcNext<9>_SW0  (
    .I0(\u1/ipsend_inst/dataout [3]),
    .I1(\u1/ipsend_inst/dataout [6]),
    .I2(\u1/ipsend_inst/dataout [5]),
    .I3(\u1/ipsend_inst/dataout [2]),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<9>  (
    .I0(\u1/crc_inst/Crc [26]),
    .I1(\u1/crc_inst/Crc [29]),
    .I2(\u1/crc_inst/Crc [25]),
    .I3(\u1/crc_inst/Crc [1]),
    .I4(\u1/crc_inst/Crc [28]),
    .I5(N42),
    .O(\u1/crc_inst/CrcNext [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/crc_inst/CrcNext<16>_SW0  (
    .I0(\u1/ipsend_inst/dataout [3]),
    .I1(\u1/ipsend_inst/dataout [7]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<16>  (
    .I0(\u1/crc_inst/Crc [29]),
    .I1(\u1/crc_inst/Crc [24]),
    .I2(\u1/crc_inst/Crc [8]),
    .I3(\u1/crc_inst/Crc [28]),
    .I4(\u1/ipsend_inst/dataout [2]),
    .I5(N44),
    .O(\u1/crc_inst/CrcNext [16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/crc_inst/CrcNext<17>_SW0  (
    .I0(\u1/ipsend_inst/dataout [6]),
    .I1(\u1/ipsend_inst/dataout [1]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<17>  (
    .I0(\u1/crc_inst/Crc [29]),
    .I1(\u1/crc_inst/Crc [25]),
    .I2(\u1/crc_inst/Crc [9]),
    .I3(\u1/crc_inst/Crc [30]),
    .I4(\u1/ipsend_inst/dataout [2]),
    .I5(N46),
    .O(\u1/crc_inst/CrcNext [17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/crc_inst/CrcNext<18>_SW0  (
    .I0(\u1/ipsend_inst/dataout [0]),
    .I1(\u1/ipsend_inst/dataout [5]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<18>  (
    .I0(\u1/crc_inst/Crc [26]),
    .I1(\u1/crc_inst/Crc [10]),
    .I2(\u1/crc_inst/Crc [31]),
    .I3(\u1/crc_inst/Crc [30]),
    .I4(\u1/ipsend_inst/dataout [1]),
    .I5(N48),
    .O(\u1/crc_inst/CrcNext [18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/crc_inst/CrcNext<23>_SW0  (
    .I0(\u1/ipsend_inst/dataout [7]),
    .I1(\u1/ipsend_inst/dataout [6]),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<23>  (
    .I0(\u1/crc_inst/Crc [25]),
    .I1(\u1/crc_inst/Crc [24]),
    .I2(\u1/crc_inst/Crc [30]),
    .I3(\u1/crc_inst/Crc [15]),
    .I4(\u1/ipsend_inst/dataout [1]),
    .I5(N50),
    .O(\u1/crc_inst/CrcNext [23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/crc_inst/CrcNext<24>_SW0  (
    .I0(\u1/ipsend_inst/dataout [6]),
    .I1(\u1/ipsend_inst/dataout [5]),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<24>  (
    .I0(\u1/crc_inst/Crc [26]),
    .I1(\u1/crc_inst/Crc [31]),
    .I2(\u1/crc_inst/Crc [25]),
    .I3(\u1/crc_inst/Crc [16]),
    .I4(\u1/ipsend_inst/dataout [0]),
    .I5(N52),
    .O(\u1/crc_inst/CrcNext [24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/crc_inst/CrcNext<28>_SW0  (
    .I0(\u1/ipsend_inst/dataout [1]),
    .I1(\u1/ipsend_inst/dataout [5]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<28>  (
    .I0(\u1/crc_inst/Crc [26]),
    .I1(\u1/crc_inst/Crc [29]),
    .I2(\u1/crc_inst/Crc [30]),
    .I3(\u1/crc_inst/Crc [20]),
    .I4(\u1/ipsend_inst/dataout [2]),
    .I5(N54),
    .O(\u1/crc_inst/CrcNext [28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u1/crc_inst/CrcNext<29>_SW0  (
    .I0(\u1/ipsend_inst/dataout [1]),
    .I1(\u1/ipsend_inst/dataout [0]),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \u1/crc_inst/CrcNext<29>  (
    .I0(\u1/crc_inst/Crc [31]),
    .I1(\u1/crc_inst/Crc [27]),
    .I2(\u1/crc_inst/Crc [30]),
    .I3(\u1/crc_inst/Crc [21]),
    .I4(\u1/ipsend_inst/dataout [4]),
    .I5(N56),
    .O(\u1/crc_inst/CrcNext [29])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \u1/crc_inst/CrcNext<1>_SW0  (
    .I0(\u1/ipsend_inst/dataout [6]),
    .I1(\u1/ipsend_inst/dataout [7]),
    .I2(\u1/ipsend_inst/dataout [0]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \u1/crc_inst/CrcNext<1>  (
    .I0(\u1/crc_inst/Crc [31]),
    .I1(\u1/crc_inst/Crc [25]),
    .I2(\u1/crc_inst/Crc [24]),
    .I3(\u1/crc_inst/Crc [30]),
    .I4(\u1/ipsend_inst/dataout [1]),
    .I5(N58),
    .O(\u1/crc_inst/CrcNext [1])
  );
  LUT5 #(
    .INIT ( 32'h69969669 ))
  \u1/crc_inst/Mxor_CrcNext<2>_xo<0>_SW0  (
    .I0(\u1/ipsend_inst/dataout [6]),
    .I1(\u1/ipsend_inst/dataout [7]),
    .I2(\u1/ipsend_inst/dataout [5]),
    .I3(\u1/ipsend_inst/dataout [0]),
    .I4(\u1/ipsend_inst/dataout [1]),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \u1/crc_inst/Mxor_CrcNext<2>_xo<0>  (
    .I0(\u1/crc_inst/Crc [26]),
    .I1(\u1/crc_inst/Crc [31]),
    .I2(\u1/crc_inst/Crc [25]),
    .I3(\u1/crc_inst/Crc [24]),
    .I4(\u1/crc_inst/Crc [30]),
    .I5(N60),
    .O(\u1/crc_inst/CrcNext [2])
  );
  IBUF   e_rxc_IBUF (
    .I(e_rxc),
    .O(e_gtxc_OBUF_1774)
  );
  IBUF   e_rxd_7_IBUF (
    .I(e_rxd[7]),
    .O(e_rxd_7_IBUF_0)
  );
  IBUF   e_rxd_6_IBUF (
    .I(e_rxd[6]),
    .O(e_rxd_6_IBUF_1)
  );
  IBUF   e_rxd_5_IBUF (
    .I(e_rxd[5]),
    .O(e_rxd_5_IBUF_2)
  );
  IBUF   e_rxd_4_IBUF (
    .I(e_rxd[4]),
    .O(e_rxd_4_IBUF_3)
  );
  IBUF   e_rxd_3_IBUF (
    .I(e_rxd[3]),
    .O(e_rxd_3_IBUF_4)
  );
  IBUF   e_rxd_2_IBUF (
    .I(e_rxd[2]),
    .O(e_rxd_2_IBUF_5)
  );
  IBUF   e_rxd_1_IBUF (
    .I(e_rxd[1]),
    .O(e_rxd_1_IBUF_6)
  );
  IBUF   e_rxd_0_IBUF (
    .I(e_rxd[0]),
    .O(e_rxd_0_IBUF_7)
  );
  IBUF   reset_n_IBUF (
    .I(reset_n),
    .O(reset_n_IBUF_8)
  );
  IBUF   e_rxdv_IBUF (
    .I(e_rxdv),
    .O(e_rxdv_IBUF_10)
  );
  OBUF   e_txd_7_OBUF (
    .I(\u1/ipsend_inst/dataout [7]),
    .O(e_txd[7])
  );
  OBUF   e_txd_6_OBUF (
    .I(\u1/ipsend_inst/dataout [6]),
    .O(e_txd[6])
  );
  OBUF   e_txd_5_OBUF (
    .I(\u1/ipsend_inst/dataout [5]),
    .O(e_txd[5])
  );
  OBUF   e_txd_4_OBUF (
    .I(\u1/ipsend_inst/dataout [4]),
    .O(e_txd[4])
  );
  OBUF   e_txd_3_OBUF (
    .I(\u1/ipsend_inst/dataout [3]),
    .O(e_txd[3])
  );
  OBUF   e_txd_2_OBUF (
    .I(\u1/ipsend_inst/dataout [2]),
    .O(e_txd[2])
  );
  OBUF   e_txd_1_OBUF (
    .I(\u1/ipsend_inst/dataout [1]),
    .O(e_txd[1])
  );
  OBUF   e_txd_0_OBUF (
    .I(\u1/ipsend_inst/dataout [0]),
    .O(e_txd[0])
  );
  OBUF   e_reset_OBUF (
    .I(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .O(e_reset)
  );
  OBUF   e_gtxc_OBUF (
    .I(e_gtxc_OBUF_1774),
    .O(e_gtxc)
  );
  OBUF   e_txen_OBUF (
    .I(\u1/ipsend_inst/txen_101 ),
    .O(e_txen)
  );
  OBUF   e_txer_OBUF (
    .I(e_txer_OBUF_102),
    .O(e_txer)
  );
  FDR   ram_wr_finish (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(ram_wr_finish_glue_set_1546),
    .R(reset_n_inv),
    .Q(ram_wr_finish_105)
  );
  FDR   \u1/iprecieve_inst/data_receive  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/data_receive_glue_set_1547 ),
    .R(reset_n_inv),
    .Q(\u1/iprecieve_inst/data_receive_104 )
  );
  LUT5 #(
    .INIT ( 32'h4848AA08 ))
  \u1/iprecieve_inst/Mmux__n0605341  (
    .I0(\u1/iprecieve_inst/state_counter [2]),
    .I1(\u1/iprecieve_inst/Mmux__n06053 ),
    .I2(\u1/iprecieve_inst/state_counter [0]),
    .I3(\u1/iprecieve_inst/Mmux__n060531_1394 ),
    .I4(\u1/iprecieve_inst/state_counter [1]),
    .O(\u1/iprecieve_inst/_n0605 [3])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ram_addr_i_cy<1>_rt  (
    .I0(ram_addr_i[1]),
    .O(\Mcount_ram_addr_i_cy<1>_rt_1548 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<3>_rt  (
    .I0(\u1/iprecieve_inst/rx_data_length [3]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<3>_rt_1549 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<0>_rt  (
    .I0(\u1/iprecieve_inst/rx_data_length [0]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_cy<0>_rt_1550 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [14]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<14>_rt_1551 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [13]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<13>_rt_1552 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [12]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<12>_rt_1553 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [11]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<11>_rt_1554 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [10]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<10>_rt_1555 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [9]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<9>_rt_1556 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [8]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<8>_rt_1557 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [7]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<7>_rt_1558 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [6]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<6>_rt_1559 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [5]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<5>_rt_1560 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [4]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<4>_rt_1561 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [3]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<3>_rt_1562 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [2]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<2>_rt_1563 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>_rt  (
    .I0(\u1/iprecieve_inst/byte_counter [1]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_cy<1>_rt_1564 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<30>_rt  (
    .I0(\u1/ipsend_inst/time_counter [30]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<30>_rt_1565 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<29>_rt  (
    .I0(\u1/ipsend_inst/time_counter [29]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<29>_rt_1566 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<28>_rt  (
    .I0(\u1/ipsend_inst/time_counter [28]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<28>_rt_1567 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<27>_rt  (
    .I0(\u1/ipsend_inst/time_counter [27]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<27>_rt_1568 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<26>_rt  (
    .I0(\u1/ipsend_inst/time_counter [26]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<26>_rt_1569 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<25>_rt  (
    .I0(\u1/ipsend_inst/time_counter [25]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<25>_rt_1570 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<24>_rt  (
    .I0(\u1/ipsend_inst/time_counter [24]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<24>_rt_1571 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<23>_rt  (
    .I0(\u1/ipsend_inst/time_counter [23]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<23>_rt_1572 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<22>_rt  (
    .I0(\u1/ipsend_inst/time_counter [22]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<22>_rt_1573 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<21>_rt  (
    .I0(\u1/ipsend_inst/time_counter [21]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<21>_rt_1574 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<20>_rt  (
    .I0(\u1/ipsend_inst/time_counter [20]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<20>_rt_1575 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<19>_rt  (
    .I0(\u1/ipsend_inst/time_counter [19]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<19>_rt_1576 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<18>_rt  (
    .I0(\u1/ipsend_inst/time_counter [18]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<18>_rt_1577 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<17>_rt  (
    .I0(\u1/ipsend_inst/time_counter [17]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<17>_rt_1578 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<16>_rt  (
    .I0(\u1/ipsend_inst/time_counter [16]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<16>_rt_1579 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<15>_rt  (
    .I0(\u1/ipsend_inst/time_counter [15]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<15>_rt_1580 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<14>_rt  (
    .I0(\u1/ipsend_inst/time_counter [14]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<14>_rt_1581 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<13>_rt  (
    .I0(\u1/ipsend_inst/time_counter [13]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<13>_rt_1582 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<12>_rt  (
    .I0(\u1/ipsend_inst/time_counter [12]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<12>_rt_1583 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<11>_rt  (
    .I0(\u1/ipsend_inst/time_counter [11]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<11>_rt_1584 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<10>_rt  (
    .I0(\u1/ipsend_inst/time_counter [10]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<10>_rt_1585 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<9>_rt  (
    .I0(\u1/ipsend_inst/time_counter [9]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<9>_rt_1586 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<8>_rt  (
    .I0(\u1/ipsend_inst/time_counter [8]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<8>_rt_1587 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<7>_rt  (
    .I0(\u1/ipsend_inst/time_counter [7]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<7>_rt_1588 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<6>_rt  (
    .I0(\u1/ipsend_inst/time_counter [6]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<6>_rt_1589 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<5>_rt  (
    .I0(\u1/ipsend_inst/time_counter [5]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<5>_rt_1590 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<4>_rt  (
    .I0(\u1/ipsend_inst/time_counter [4]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<4>_rt_1591 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<3>_rt  (
    .I0(\u1/ipsend_inst/time_counter [3]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<3>_rt_1592 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<2>_rt  (
    .I0(\u1/ipsend_inst/time_counter [2]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<2>_rt_1593 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_cy<1>_rt  (
    .I0(\u1/ipsend_inst/time_counter [1]),
    .O(\u1/ipsend_inst/Mcount_time_counter_cy<1>_rt_1594 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<14>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[14] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<14>_rt_1595 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<13>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_133 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<13>_rt_1596 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<12>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_123 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<12>_rt_1597 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<11>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_115 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<11>_rt_1598 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<10>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_103 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<10>_rt_1599 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<9>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[9] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<9>_rt_1600 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<7>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[7] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<7>_rt_1601 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<4>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[4] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<4>_rt_1602 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<0>_rt  (
    .I0(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[0] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<0>_rt_1603 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_14_710 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<14>_rt_1604 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_13_712 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<13>_rt_1605 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_12_714 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<12>_rt_1606 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_11_716 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<11>_rt_1607 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_10_718 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<10>_rt_1608 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_9_720 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<9>_rt_1609 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_8_722 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<8>_rt_1610 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_7_724 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<7>_rt_1611 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_6_726 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<6>_rt_1612 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_5_728 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<5>_rt_1613 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_4_730 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<4>_rt_1614 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_3_732 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_cy<3>_rt_1615 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[62] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<14>_rt_1616 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[61] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<13>_rt_1617 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[60] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<12>_rt_1618 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[59] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<11>_rt_1619 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[58] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<10>_rt_1620 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[57] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<9>_rt_1621 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[56] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<8>_rt_1622 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[55] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<7>_rt_1623 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[54] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<6>_rt_1624 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[53] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<5>_rt_1625 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[52] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<4>_rt_1626 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[51] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<3>_rt_1627 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[50] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<2>_rt_1628 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[49] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_cy<1>_rt_1629 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<3>_rt  (
    .I0(tx_data_length[3]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<3>_rt_1630 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<0>_rt  (
    .I0(tx_data_length[0]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_cy<0>_rt_1631 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_13_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[14] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_13_rt_1632 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_12_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[13] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_12_rt_1633 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_11_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[12] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_11_rt_1634 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_6_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[7] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_6_rt_1635 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_5_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[6] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_5_rt_1636 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_4_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[5] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_4_rt_1637 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_3_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[4] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_3_rt_1638 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_2_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[3] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_2_rt_1639 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_1_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[2] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_1_rt_1640 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_0_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[1] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_0_rt_1641 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[0] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_cy<0>_rt_1642 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_ram_addr_i_xor<2>_rt  (
    .I0(ram_addr_i[2]),
    .O(\Mcount_ram_addr_i_xor<2>_rt_1643 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<15>_rt  (
    .I0(\u1/iprecieve_inst/data_counter [15]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_xor<15>_rt_1644 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Mcount_time_counter_xor<31>_rt  (
    .I0(\u1/ipsend_inst/time_counter [31]),
    .O(\u1/ipsend_inst/Mcount_time_counter_xor<31>_rt_1645 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<15>_rt  (
    .I0(\u1/ipsend_inst/check_buffer_15_708 ),
    .O(\u1/ipsend_inst/Madd_check_buffer[31]_check_buffer[15]_add_18_OUT_xor<15>_rt_1646 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<15>_rt  (
    .I0(\u1/ipsend_inst/ip_header_0[63] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_xor<15>_rt_1647 )
  );
  FD   ram_wren_i (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(ram_wren_i_rstpot_1648),
    .Q(ram_wren_i_106)
  );
  FD   \u1/iprecieve_inst/data_o_valid  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/data_o_valid_rstpot_1649 ),
    .Q(\u1/iprecieve_inst/data_o_valid_103 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \u1/iprecieve_inst/Mmux_rx_state[3]_data_o_valid_Mux_107_o11_SW0  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .O(N62)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In19_lut  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19_lut_1651 )
  );
  MUXCY   \u1/iprecieve_inst/rx_state_FSM_FFd4-In19_cy  (
    .CI(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19_lut_1651 ),
    .O(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o_l1 )
  );
  LUT5 #(
    .INIT ( 32'h8A88DFDD ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In19_lut1  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I2(\u1/iprecieve_inst/Mmux__n0605112 ),
    .I3(\u1/iprecieve_inst/state_counter [4]),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd4-In18_1397 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19_lut1_1653 )
  );
  MUXCY   \u1/iprecieve_inst/rx_state_FSM_FFd4-In19_cy1  (
    .CI(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o_l1 ),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19_lut1_1653 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In110 )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \u1/ipsend_inst/Mmux__n051941_lut  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/i [1]),
    .O(\u1/ipsend_inst/Mmux__n051941_lut_1654 )
  );
  MUXCY   \u1/ipsend_inst/Mmux__n051941_cy  (
    .CI(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mmux__n051941_lut_1654 ),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o_l1 )
  );
  MUXCY   \u1/ipsend_inst/Mmux__n051941_cy1  (
    .CI(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o_l1 ),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mmux__n051941_lut1_1656 ),
    .O(\u1/ipsend_inst/Mmux__n05194 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \u1/ipsend_inst/Mmux__n060751_lut  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/Mmux__n060751_lut_1657 )
  );
  MUXCY   \u1/ipsend_inst/Mmux__n060751_cy  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy [17]),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mmux__n060751_lut_1657 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<17>_l1 )
  );
  LUT5 #(
    .INIT ( 32'h0800FFFF ))
  \u1/ipsend_inst/Mmux__n060751_lut1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I4(\u1/ipsend_inst/check_buffer_18_1223 ),
    .O(\u1/ipsend_inst/Mmux__n060751_lut1_1659 )
  );
  MUXCY   \u1/ipsend_inst/Mmux__n060751_cy1  (
    .CI(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_cy<17>_l1 ),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mmux__n060751_lut1_1659 ),
    .O(\u1/ipsend_inst/_n0607 [13])
  );
  LUT5 #(
    .INIT ( 32'hFF70FF00 ))
  \u1/iprecieve_inst/_n0580_inv1  (
    .I0(\u1/iprecieve_inst/byte_counter [1]),
    .I1(\u1/iprecieve_inst/byte_counter [0]),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/_n0691_inv2 ),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0580_inv )
  );
  LUT4 #(
    .INIT ( 16'h6000 ))
  \u1/iprecieve_inst/Mmux__n051921  (
    .I0(\u1/iprecieve_inst/byte_counter [1]),
    .I1(\u1/iprecieve_inst/byte_counter [0]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0519 [2])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \u1/iprecieve_inst/Mmux__n051931  (
    .I0(\u1/iprecieve_inst/byte_counter [0]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0519 [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n044717  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<6> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [10])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n044721  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<5> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [11])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n044731  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<4> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [12])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n044741  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<3> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [13])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n044751  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<2> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [14])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n044781  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<15> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n044791  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<14> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n0447101  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<13> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n0447111  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<12> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [4])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n0447121  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<11> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [5])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n0447131  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<10> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n0447141  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<9> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [7])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n0447151  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<8> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [8])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u1/iprecieve_inst/Mmux__n0447161  (
    .I0(\u1/iprecieve_inst/data_counter[15]_GND_6_o_add_86_OUT<7> ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0447 [9])
  );
  LUT5 #(
    .INIT ( 32'h00008000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd1-In1  (
    .I0(e_rxdv_IBUF_10),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'hFFFFF070 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In212  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2-In212_1412 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In2 )
  );
  LUT5 #(
    .INIT ( 32'hFFA8FFA0 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd3-In35  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3-In34_1426 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd3-In33_1425 ),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd3-In3 )
  );
  LUT6 #(
    .INIT ( 64'hDDDDCCCC55554440 ))
  \u1/ipsend_inst/Mmux__n051924  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/Mmux__n05192 ),
    .I2(\u1/ipsend_inst/tx_state[3]_GND_3_o_Select_171_o1 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mmux__n051922_1431 ),
    .I5(\u1/ipsend_inst/Mmux__n051921_1430 ),
    .O(\u1/ipsend_inst/_n0519 [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAA2A882A ))
  \u1/ipsend_inst/tx_state_FSM_FFd3-In2  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/tx_state_FSM_FFd3-In1_1478 ),
    .O(\u1/ipsend_inst/tx_state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCAAF000 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT81  (
    .I0(e_rxd_0_IBUF_7),
    .I1(\u1/iprecieve_inst/mydata [8]),
    .I2(\u1/iprecieve_inst/mydata [0]),
    .I3(\u1/iprecieve_inst/byte_counter [1]),
    .I4(\u1/iprecieve_inst/byte_counter [0]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<16> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCAAF000 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT101  (
    .I0(e_rxd_2_IBUF_5),
    .I1(\u1/iprecieve_inst/mydata [10]),
    .I2(\u1/iprecieve_inst/mydata [2]),
    .I3(\u1/iprecieve_inst/byte_counter [1]),
    .I4(\u1/iprecieve_inst/byte_counter [0]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<18> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCAAF000 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT111  (
    .I0(e_rxd_3_IBUF_4),
    .I1(\u1/iprecieve_inst/mydata [11]),
    .I2(\u1/iprecieve_inst/mydata [3]),
    .I3(\u1/iprecieve_inst/byte_counter [1]),
    .I4(\u1/iprecieve_inst/byte_counter [0]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<19> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCAAF000 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT141  (
    .I0(e_rxd_5_IBUF_2),
    .I1(\u1/iprecieve_inst/mydata [13]),
    .I2(\u1/iprecieve_inst/mydata [5]),
    .I3(\u1/iprecieve_inst/byte_counter [1]),
    .I4(\u1/iprecieve_inst/byte_counter [0]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<21> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCAAF000 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT131  (
    .I0(e_rxd_4_IBUF_3),
    .I1(\u1/iprecieve_inst/mydata [12]),
    .I2(\u1/iprecieve_inst/mydata [4]),
    .I3(\u1/iprecieve_inst/byte_counter [1]),
    .I4(\u1/iprecieve_inst/byte_counter [0]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<20> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCAAF000 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT151  (
    .I0(e_rxd_6_IBUF_1),
    .I1(\u1/iprecieve_inst/mydata [14]),
    .I2(\u1/iprecieve_inst/mydata [6]),
    .I3(\u1/iprecieve_inst/byte_counter [1]),
    .I4(\u1/iprecieve_inst/byte_counter [0]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<22> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCAAF000 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT91  (
    .I0(e_rxd_1_IBUF_6),
    .I1(\u1/iprecieve_inst/mydata [9]),
    .I2(\u1/iprecieve_inst/mydata [1]),
    .I3(\u1/iprecieve_inst/byte_counter [1]),
    .I4(\u1/iprecieve_inst/byte_counter [0]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<17> )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCAAF000 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT161  (
    .I0(e_rxd_7_IBUF_0),
    .I1(\u1/iprecieve_inst/mydata [15]),
    .I2(\u1/iprecieve_inst/mydata [7]),
    .I3(\u1/iprecieve_inst/byte_counter [1]),
    .I4(\u1/iprecieve_inst/byte_counter [0]),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<23> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCC0A0 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT210  (
    .I0(e_rxd_2_IBUF_5),
    .I1(\u1/iprecieve_inst/mydata [2]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCC0A0 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT33  (
    .I0(e_rxd_3_IBUF_4),
    .I1(\u1/iprecieve_inst/mydata [3]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCC0A0 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT41  (
    .I0(e_rxd_4_IBUF_3),
    .I1(\u1/iprecieve_inst/mydata [4]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCC0A0 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT51  (
    .I0(e_rxd_5_IBUF_2),
    .I1(\u1/iprecieve_inst/mydata [5]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCC0A0 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT71  (
    .I0(e_rxd_7_IBUF_0),
    .I1(\u1/iprecieve_inst/mydata [7]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCC0A0 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT61  (
    .I0(e_rxd_6_IBUF_1),
    .I1(\u1/iprecieve_inst/mydata [6]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<14> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCC0A0 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT311  (
    .I0(e_rxd_0_IBUF_7),
    .I1(\u1/iprecieve_inst/mydata [0]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCC0A0 ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT321  (
    .I0(e_rxd_1_IBUF_6),
    .I1(\u1/iprecieve_inst/mydata [1]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80FF ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT17  (
    .I0(\u1/iprecieve_inst/mydata [16]),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N4),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<24> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80FF ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT19  (
    .I0(\u1/iprecieve_inst/mydata [18]),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N6),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<26> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80FF ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT20  (
    .I0(\u1/iprecieve_inst/mydata [19]),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N8),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<27> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80FF ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT25  (
    .I0(\u1/iprecieve_inst/mydata [23]),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N10),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<31> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80FF ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT22  (
    .I0(\u1/iprecieve_inst/mydata [21]),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N12),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<29> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80FF ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT21  (
    .I0(\u1/iprecieve_inst/mydata [20]),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N14),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<28> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80FF ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT24  (
    .I0(\u1/iprecieve_inst/mydata [22]),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N16),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<30> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80FF ))
  \u1/iprecieve_inst/Mmux_mydata[23]_data_o[31]_mux_97_OUT18  (
    .I0(\u1/iprecieve_inst/mydata [17]),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N18),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<25> )
  );
  LUT6 #(
    .INIT ( 64'h00C0AAAA00FFAAAA ))
  \u1/iprecieve_inst/data_o_valid_rstpot  (
    .I0(\u1/iprecieve_inst/data_o_valid_103 ),
    .I1(\u1/iprecieve_inst/byte_counter [1]),
    .I2(\u1/iprecieve_inst/byte_counter [0]),
    .I3(N62),
    .I4(\u1/iprecieve_inst/_n0442_inv ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/data_o_valid_rstpot_1649 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \u1/ipsend_inst/Mmux__n05712410_SW0  (
    .I0(\u1/ipsend_inst/Mmux__n0571105 ),
    .I1(\u1/crc_inst/Crc [12]),
    .I2(\u1/ipsend_inst/Mmux__n0571106 ),
    .I3(\u1/ipsend_inst/datain_reg [11]),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'hCC44CC44CC44CC40 ))
  \u1/ipsend_inst/Mmux__n05712412  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/Mmux__n0571248_1492 ),
    .I3(\u1/ipsend_inst/Mmux__n0571247_1491 ),
    .I4(N64),
    .I5(\u1/ipsend_inst/Mmux__n05712410 ),
    .O(\u1/ipsend_inst/_n0571 [3])
  );
  LUT6 #(
    .INIT ( 64'h00000000CCF000AA ))
  \u1/ipsend_inst/Mmux__n0571188  (
    .I0(\u1/ipsend_inst/datain_reg [26]),
    .I1(\u1/ipsend_inst/datain_reg [2]),
    .I2(\u1/ipsend_inst/datain_reg [18]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state [0]),
    .O(\u1/ipsend_inst/Mmux__n0571187_1444 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000F0AACC ))
  \u1/ipsend_inst/Mmux__n0571610  (
    .I0(\u1/ipsend_inst/datain_reg [8]),
    .I1(\u1/ipsend_inst/datain_reg [24]),
    .I2(\u1/ipsend_inst/datain_reg [16]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state [0]),
    .O(\u1/ipsend_inst/Mmux__n057169_1451 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCF000AA ))
  \u1/ipsend_inst/Mmux__n0571481  (
    .I0(\u1/ipsend_inst/datain_reg [31]),
    .I1(\u1/ipsend_inst/datain_reg [7]),
    .I2(\u1/ipsend_inst/datain_reg [23]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state [0]),
    .O(\u1/ipsend_inst/Mmux__n057148 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCF000AA ))
  \u1/ipsend_inst/Mmux__n0571428  (
    .I0(\u1/ipsend_inst/datain_reg [30]),
    .I1(\u1/ipsend_inst/datain_reg [6]),
    .I2(\u1/ipsend_inst/datain_reg [22]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state [0]),
    .O(\u1/ipsend_inst/Mmux__n0571427_1468 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCF000AA ))
  \u1/ipsend_inst/Mmux__n0571309  (
    .I0(\u1/ipsend_inst/datain_reg [28]),
    .I1(\u1/ipsend_inst/datain_reg [4]),
    .I2(\u1/ipsend_inst/datain_reg [20]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state [0]),
    .O(\u1/ipsend_inst/Mmux__n0571308_1475 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CC00F0AA ))
  \u1/ipsend_inst/Mmux__n0571129  (
    .I0(\u1/ipsend_inst/datain_reg [25]),
    .I1(\u1/ipsend_inst/datain_reg [1]),
    .I2(\u1/ipsend_inst/datain_reg [9]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state [0]),
    .O(\u1/ipsend_inst/Mmux__n0571128_1483 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCF000AA ))
  \u1/ipsend_inst/Mmux__n0571249  (
    .I0(\u1/ipsend_inst/datain_reg [27]),
    .I1(\u1/ipsend_inst/datain_reg [3]),
    .I2(\u1/ipsend_inst/datain_reg [19]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state [0]),
    .O(\u1/ipsend_inst/Mmux__n0571248_1492 )
  );
  FD   \u1/iprecieve_inst/mydata_23  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_23_rstpot_1687 ),
    .Q(\u1/iprecieve_inst/mydata [23])
  );
  FD   \u1/iprecieve_inst/mydata_22  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_22_rstpot_1688 ),
    .Q(\u1/iprecieve_inst/mydata [22])
  );
  FD   \u1/iprecieve_inst/mydata_21  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_21_rstpot_1689 ),
    .Q(\u1/iprecieve_inst/mydata [21])
  );
  FD   \u1/iprecieve_inst/mydata_20  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_20_rstpot_1690 ),
    .Q(\u1/iprecieve_inst/mydata [20])
  );
  FD   \u1/iprecieve_inst/mydata_19  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_19_rstpot_1691 ),
    .Q(\u1/iprecieve_inst/mydata [19])
  );
  FD   \u1/iprecieve_inst/mydata_18  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_18_rstpot_1692 ),
    .Q(\u1/iprecieve_inst/mydata [18])
  );
  FD   \u1/iprecieve_inst/mydata_17  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_17_rstpot_1693 ),
    .Q(\u1/iprecieve_inst/mydata [17])
  );
  FD   \u1/iprecieve_inst/mydata_16  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_16_rstpot_1694 ),
    .Q(\u1/iprecieve_inst/mydata [16])
  );
  FD   \u1/iprecieve_inst/mydata_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_15_rstpot_1695 ),
    .Q(\u1/iprecieve_inst/mydata [15])
  );
  FD   \u1/iprecieve_inst/mydata_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_14_rstpot_1696 ),
    .Q(\u1/iprecieve_inst/mydata [14])
  );
  FD   \u1/iprecieve_inst/mydata_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_13_rstpot_1697 ),
    .Q(\u1/iprecieve_inst/mydata [13])
  );
  FD   \u1/iprecieve_inst/mydata_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_12_rstpot_1698 ),
    .Q(\u1/iprecieve_inst/mydata [12])
  );
  FD   \u1/iprecieve_inst/mydata_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_11_rstpot_1699 ),
    .Q(\u1/iprecieve_inst/mydata [11])
  );
  FD   \u1/iprecieve_inst/mydata_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_10_rstpot_1700 ),
    .Q(\u1/iprecieve_inst/mydata [10])
  );
  FD   \u1/iprecieve_inst/mydata_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_9_rstpot_1701 ),
    .Q(\u1/iprecieve_inst/mydata [9])
  );
  FD   \u1/iprecieve_inst/mydata_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_8_rstpot_1702 ),
    .Q(\u1/iprecieve_inst/mydata [8])
  );
  FD   \u1/iprecieve_inst/mydata_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_7_rstpot_1703 ),
    .Q(\u1/iprecieve_inst/mydata [7])
  );
  FD   \u1/iprecieve_inst/mydata_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_5_rstpot_1704 ),
    .Q(\u1/iprecieve_inst/mydata [5])
  );
  FD   \u1/iprecieve_inst/mydata_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_3_rstpot_1705 ),
    .Q(\u1/iprecieve_inst/mydata [3])
  );
  FD   \u1/iprecieve_inst/mydata_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_1_rstpot_1706 ),
    .Q(\u1/iprecieve_inst/mydata [1])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_8_rstpot_1707 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [8])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_7  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_7_rstpot_1708 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [7])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_6_rstpot_1709 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [6])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_5  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_5_rstpot_1710 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [5])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_4_rstpot_1711 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [4])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_3  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_3_rstpot_1712 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [3])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_2_rstpot_1713 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [2])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_1_rstpot_1714 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [1])
  );
  FD   \u1/iprecieve_inst/ram_wr_addr_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/ram_wr_addr_0_rstpot_1715 ),
    .Q(\u1/iprecieve_inst/ram_wr_addr [0])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/mydata_6_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [6]),
    .I1(\u1/iprecieve_inst/_n0551[6] ),
    .I2(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_6_rstpot_1716 )
  );
  FD   \u1/iprecieve_inst/mydata_6  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_6_rstpot_1716 ),
    .Q(\u1/iprecieve_inst/mydata [6])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/mydata_4_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [4]),
    .I1(\u1/iprecieve_inst/_n0551[4] ),
    .I2(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_4_rstpot_1717 )
  );
  FD   \u1/iprecieve_inst/mydata_4  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_4_rstpot_1717 ),
    .Q(\u1/iprecieve_inst/mydata [4])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/mydata_2_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [2]),
    .I1(\u1/iprecieve_inst/_n0551[2] ),
    .I2(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_2_rstpot_1718 )
  );
  FD   \u1/iprecieve_inst/mydata_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_2_rstpot_1718 ),
    .Q(\u1/iprecieve_inst/mydata [2])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/mydata_0_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [0]),
    .I1(\u1/iprecieve_inst/_n0551[0] ),
    .I2(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_0_rstpot_1719 )
  );
  FD   \u1/iprecieve_inst/mydata_0  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mydata_0_rstpot_1719 ),
    .Q(\u1/iprecieve_inst/mydata [0])
  );
  LUT6 #(
    .INIT ( 64'hAAEAAAAAAA2AAAAA ))
  \u1/ipsend_inst/Mmux__n060761  (
    .I0(\u1/ipsend_inst/check_buffer_17_1222 ),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_178 ),
    .O(\u1/ipsend_inst/_n0607 [14])
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_23_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [23]),
    .I1(\u1/iprecieve_inst/mydata [15]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_23_rstpot_1687 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_22_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [22]),
    .I1(\u1/iprecieve_inst/mydata [14]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_22_rstpot_1688 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_21_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [21]),
    .I1(\u1/iprecieve_inst/mydata [13]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_21_rstpot_1689 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_20_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [20]),
    .I1(\u1/iprecieve_inst/mydata [12]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_20_rstpot_1690 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_19_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [19]),
    .I1(\u1/iprecieve_inst/mydata [11]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_19_rstpot_1691 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_18_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [18]),
    .I1(\u1/iprecieve_inst/mydata [10]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_18_rstpot_1692 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_17_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [17]),
    .I1(\u1/iprecieve_inst/mydata [9]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_17_rstpot_1693 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_16_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [16]),
    .I1(\u1/iprecieve_inst/mydata [8]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_16_rstpot_1694 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_15_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [15]),
    .I1(\u1/iprecieve_inst/mydata [7]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv ),
    .O(\u1/iprecieve_inst/mydata_15_rstpot_1695 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_14_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [14]),
    .I1(\u1/iprecieve_inst/mydata [6]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_14_rstpot_1696 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_13_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [13]),
    .I1(\u1/iprecieve_inst/mydata [5]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_13_rstpot_1697 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_12_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [12]),
    .I1(\u1/iprecieve_inst/mydata [4]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_12_rstpot_1698 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_11_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [11]),
    .I1(\u1/iprecieve_inst/mydata [3]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_11_rstpot_1699 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_10_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [10]),
    .I1(\u1/iprecieve_inst/mydata [2]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_10_rstpot_1700 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_9_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [9]),
    .I1(\u1/iprecieve_inst/mydata [1]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_9_rstpot_1701 )
  );
  LUT4 #(
    .INIT ( 16'hC0AA ))
  \u1/iprecieve_inst/mydata_8_rstpot  (
    .I0(\u1/iprecieve_inst/mydata [8]),
    .I1(\u1/iprecieve_inst/mydata [0]),
    .I2(\u1/iprecieve_inst/Mmux__n0551101 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_8_rstpot_1702 )
  );
  LUT4 #(
    .INIT ( 16'hA0CC ))
  \u1/iprecieve_inst/mydata_7_rstpot  (
    .I0(e_rxd_7_IBUF_0),
    .I1(\u1/iprecieve_inst/mydata [7]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_7_rstpot_1703 )
  );
  LUT4 #(
    .INIT ( 16'hA0CC ))
  \u1/iprecieve_inst/mydata_5_rstpot  (
    .I0(e_rxd_5_IBUF_2),
    .I1(\u1/iprecieve_inst/mydata [5]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_5_rstpot_1704 )
  );
  LUT4 #(
    .INIT ( 16'hA0CC ))
  \u1/iprecieve_inst/mydata_3_rstpot  (
    .I0(e_rxd_3_IBUF_4),
    .I1(\u1/iprecieve_inst/mydata [3]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_3_rstpot_1705 )
  );
  LUT4 #(
    .INIT ( 16'hA0CC ))
  \u1/iprecieve_inst/mydata_1_rstpot  (
    .I0(e_rxd_1_IBUF_6),
    .I1(\u1/iprecieve_inst/mydata [1]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/_n0580_inv1_1735 ),
    .O(\u1/iprecieve_inst/mydata_1_rstpot_1706 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_0_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter ),
    .O(\u1/ipsend_inst/tx_data_counter_0_dpot_1660 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_1_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [1]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter1 ),
    .O(\u1/ipsend_inst/tx_data_counter_1_dpot_1661 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_2_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [2]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter2 ),
    .O(\u1/ipsend_inst/tx_data_counter_2_dpot_1662 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_3_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [3]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter3 ),
    .O(\u1/ipsend_inst/tx_data_counter_3_dpot_1663 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_4_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [4]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter4 ),
    .O(\u1/ipsend_inst/tx_data_counter_4_dpot_1664 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_5_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [5]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter5 ),
    .O(\u1/ipsend_inst/tx_data_counter_5_dpot_1665 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_6_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [6]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter6 ),
    .O(\u1/ipsend_inst/tx_data_counter_6_dpot_1666 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_7_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [7]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter7 ),
    .O(\u1/ipsend_inst/tx_data_counter_7_dpot_1667 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_8_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [8]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter8 ),
    .O(\u1/ipsend_inst/tx_data_counter_8_dpot_1668 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_9_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [9]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter9 ),
    .O(\u1/ipsend_inst/tx_data_counter_9_dpot_1669 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_10_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [10]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter10 ),
    .O(\u1/ipsend_inst/tx_data_counter_10_dpot_1670 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_11_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [11]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter11 ),
    .O(\u1/ipsend_inst/tx_data_counter_11_dpot_1671 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_12_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [12]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter12 ),
    .O(\u1/ipsend_inst/tx_data_counter_12_dpot_1672 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_13_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [13]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter13 ),
    .O(\u1/ipsend_inst/tx_data_counter_13_dpot_1673 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_14_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [14]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter14 ),
    .O(\u1/ipsend_inst/tx_data_counter_14_dpot_1674 )
  );
  LUT5 #(
    .INIT ( 32'hEDCD48C8 ))
  \u1/ipsend_inst/tx_data_counter_15_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_data_counter [15]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I4(\u1/ipsend_inst/Mcount_tx_data_counter15 ),
    .O(\u1/ipsend_inst/tx_data_counter_15_dpot_1675 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_0_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [0]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr ),
    .O(\u1/ipsend_inst/ram_rd_addr_0_dpot_1677 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_1_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [1]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr1 ),
    .O(\u1/ipsend_inst/ram_rd_addr_1_dpot_1678 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_2_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [2]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr2 ),
    .O(\u1/ipsend_inst/ram_rd_addr_2_dpot_1679 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_3_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [3]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr3 ),
    .O(\u1/ipsend_inst/ram_rd_addr_3_dpot_1680 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_4_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [4]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr4 ),
    .O(\u1/ipsend_inst/ram_rd_addr_4_dpot_1681 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_5_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [5]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr5 ),
    .O(\u1/ipsend_inst/ram_rd_addr_5_dpot_1682 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_6_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [6]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr6 ),
    .O(\u1/ipsend_inst/ram_rd_addr_6_dpot_1683 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_7_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [7]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr7 ),
    .O(\u1/ipsend_inst/ram_rd_addr_7_dpot_1684 )
  );
  LUT6 #(
    .INIT ( 64'hECDDCCDD4C88CC88 ))
  \u1/ipsend_inst/ram_rd_addr_8_dpot  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [8]),
    .I2(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_98_o ),
    .I5(\u1/ipsend_inst/Mcount_ram_rd_addr8 ),
    .O(\u1/ipsend_inst/ram_rd_addr_8_dpot_1685 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/_n0500_inv1_SW0  (
    .I0(\u1/iprecieve_inst/byte_counter [1]),
    .I1(\u1/iprecieve_inst/byte_counter [0]),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'hFF00EA2AFF00FA0A ))
  \u1/iprecieve_inst/ram_wr_addr_8_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [8]),
    .I1(N68),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/Mcount_ram_wr_addr8 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_8_rstpot_1707 )
  );
  LUT6 #(
    .INIT ( 64'hFF00EA2AFF00FA0A ))
  \u1/iprecieve_inst/ram_wr_addr_7_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [7]),
    .I1(N68),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/Mcount_ram_wr_addr7 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_7_rstpot_1708 )
  );
  LUT6 #(
    .INIT ( 64'hFF00EA2AFF00FA0A ))
  \u1/iprecieve_inst/ram_wr_addr_6_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [6]),
    .I1(N68),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/Mcount_ram_wr_addr6 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_6_rstpot_1709 )
  );
  LUT6 #(
    .INIT ( 64'hFF00EA2AFF00FA0A ))
  \u1/iprecieve_inst/ram_wr_addr_5_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [5]),
    .I1(N68),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/Mcount_ram_wr_addr5 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_5_rstpot_1710 )
  );
  LUT6 #(
    .INIT ( 64'hFF00EA2AFF00FA0A ))
  \u1/iprecieve_inst/ram_wr_addr_4_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [4]),
    .I1(N68),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/Mcount_ram_wr_addr4 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_4_rstpot_1711 )
  );
  LUT6 #(
    .INIT ( 64'hFF00EA2AFF00FA0A ))
  \u1/iprecieve_inst/ram_wr_addr_3_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [3]),
    .I1(N68),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/Mcount_ram_wr_addr3 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_3_rstpot_1712 )
  );
  LUT6 #(
    .INIT ( 64'hFF00EA2AFF00FA0A ))
  \u1/iprecieve_inst/ram_wr_addr_2_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [2]),
    .I1(N68),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/Mcount_ram_wr_addr2 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_2_rstpot_1713 )
  );
  LUT6 #(
    .INIT ( 64'hFF00EA2AFF00FA0A ))
  \u1/iprecieve_inst/ram_wr_addr_1_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [1]),
    .I1(N68),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/Mcount_ram_wr_addr1 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_1_rstpot_1714 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCAAACCCCCCAA ))
  \u1/iprecieve_inst/ram_wr_addr_0_rstpot  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [0]),
    .I1(\u1/iprecieve_inst/Mcount_ram_wr_addr ),
    .I2(N68),
    .I3(\u1/iprecieve_inst/_n0469_inv1 ),
    .I4(\u1/iprecieve_inst/_n0691_inv2 ),
    .I5(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/ram_wr_addr_0_rstpot_1715 )
  );
  MUXCY   \u1/iprecieve_inst/rx_state_FSM_FFd4-In110_cy  (
    .CI(\u1/iprecieve_inst/rx_state_FSM_FFd4-In110 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/iprecieve_inst/rx_state_FSM_FFd4-In110_cy_rt_1731 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In110_l1 )
  );
  MUXCY   \u1/iprecieve_inst/rx_state_FSM_FFd4-In110_cy1  (
    .CI(\u1/iprecieve_inst/rx_state_FSM_FFd4-In110_l1 ),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/iprecieve_inst/rx_state_FSM_FFd4-In110_lut_1722 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In1 )
  );
  MUXCY   \u1/ipsend_inst/Mmux__n051943_cy  (
    .CI(\u1/ipsend_inst/Mmux__n05194 ),
    .DI(e_txer_OBUF_102),
    .S(\u1/ipsend_inst/Mmux__n05192 ),
    .O(\u1/ipsend_inst/Mmux__n05194_l1 )
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \u1/ipsend_inst/Mmux__n051943_lut  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/Mmux__n0519101 ),
    .O(\u1/ipsend_inst/Mmux__n051943_lut_1724 )
  );
  MUXCY   \u1/ipsend_inst/Mmux__n051943_cy1  (
    .CI(\u1/ipsend_inst/Mmux__n05194_l1 ),
    .DI(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mmux__n051943_lut_1724 ),
    .O(\u1/ipsend_inst/_n0519 [1])
  );
  LUT6 #(
    .INIT ( 64'h4540050044400400 ))
  \u1/ipsend_inst/Mmux__n0571243  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/j [0]),
    .I4(\u1/ipsend_inst/ip_header_0[219] ),
    .I5(\u1/ipsend_inst/ip_header_0[59] ),
    .O(\u1/ipsend_inst/Mmux__n0571242_1487 )
  );
  LUT5 #(
    .INIT ( 32'h10010110 ))
  \u1/ipsend_inst/Mmux__n05711021  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mmux__n0571102 )
  );
  LUT5 #(
    .INIT ( 32'h40040440 ))
  \u1/ipsend_inst/Mmux__n05711011  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mmux__n0571101 )
  );
  LUT6 #(
    .INIT ( 64'hAAEAAAAAAA2AAAAA ))
  \u1/ipsend_inst/Mmux__n060771  (
    .I0(\u1/ipsend_inst/check_buffer_16_1221 ),
    .I1(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_7_o ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I5(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_168 ),
    .O(\u1/ipsend_inst/_n0607 [15])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFE00FE00FE00 ))
  \u1/ipsend_inst/Mmux__n057169  (
    .I0(N86),
    .I1(\u1/ipsend_inst/Mmux__n057167 ),
    .I2(\u1/ipsend_inst/Mmux__n057137 ),
    .I3(\u1/ipsend_inst/Mmux__n0571411 ),
    .I4(\u1/ipsend_inst/Mmux__n0571412 ),
    .I5(\u1/ipsend_inst/Mmux__n057164 ),
    .O(\u1/ipsend_inst/Mmux__n057168_1450 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \u1/ipsend_inst/Mmux__n0571371  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/j [2]),
    .O(\u1/ipsend_inst/Mmux__n057137 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \u1/ipsend_inst/tx_state_tx_state[0]1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/tx_state [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFC0FFFFEAC0 ))
  \u1/ipsend_inst/Mmux__n0571128  (
    .I0(N88),
    .I1(\u1/ipsend_inst/Mmux__n0571126 ),
    .I2(\u1/ipsend_inst/Mmux__n0571411 ),
    .I3(\u1/ipsend_inst/Mmux__n0571412 ),
    .I4(\u1/ipsend_inst/Mmux__n0571123 ),
    .I5(\u1/ipsend_inst/Mmux__n057112 ),
    .O(\u1/ipsend_inst/Mmux__n0571127_1482 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In16_SW0  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd4-In14_1396 ),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'h0101111001010100 ))
  \u1/ipsend_inst/Mmux__n0571426  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/ip_header_0[14] ),
    .I4(\u1/ipsend_inst/j [0]),
    .I5(\u1/ipsend_inst/ip_header_0[78] ),
    .O(\u1/ipsend_inst/Mmux__n0571425 )
  );
  LUT6 #(
    .INIT ( 64'h0227020700250005 ))
  \u1/ipsend_inst/Mmux__n0571423  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/j [1]),
    .I4(\u1/ipsend_inst/ip_header_0[54] ),
    .I5(\u1/ipsend_inst/ip_header_0[62] ),
    .O(\u1/ipsend_inst/Mmux__n0571422 )
  );
  LUT6 #(
    .INIT ( 64'hA2228808A0208808 ))
  \u1/ipsend_inst/Mmux__n0571245  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/ip_header_0[211] ),
    .I4(\u1/ipsend_inst/j [0]),
    .I5(\u1/ipsend_inst/ip_header_0[51] ),
    .O(\u1/ipsend_inst/Mmux__n0571244 )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  ram_wr_finish_glue_set (
    .I0(ram_addr_i[0]),
    .I1(ram_addr_i[1]),
    .I2(ram_addr_i[2]),
    .I3(ram_wr_finish_105),
    .O(ram_wr_finish_glue_set_1546)
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAAE ))
  \u1/iprecieve_inst/data_receive_glue_set  (
    .I0(\u1/iprecieve_inst/data_receive_104 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .O(\u1/iprecieve_inst/data_receive_glue_set_1547 )
  );
  LUT6 #(
    .INIT ( 64'h0000000800000000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd3-In33_SW0  (
    .I0(\u1/iprecieve_inst/state_counter [0]),
    .I1(\u1/iprecieve_inst/state_counter [2]),
    .I2(\u1/iprecieve_inst/state_counter [1]),
    .I3(\u1/iprecieve_inst/state_counter [3]),
    .I4(\u1/iprecieve_inst/state_counter [4]),
    .I5(\u1/iprecieve_inst/rx_state_FSM_FFd4-In17_277 ),
    .O(N92)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF4F00400 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd3-In33  (
    .I0(e_rxd_7_IBUF_0),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I3(N92),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd3-In332 ),
    .I5(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd3-In33_1425 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFCC00FEFACC00 ))
  \u1/ipsend_inst/Mmux__n0571308  (
    .I0(\u1/ipsend_inst/Mmux__n0571261 ),
    .I1(\u1/ipsend_inst/Mmux__n0571306 ),
    .I2(\u1/ipsend_inst/Mmux__n0571303 ),
    .I3(\u1/ipsend_inst/Mmux__n0571411 ),
    .I4(\u1/ipsend_inst/Mmux__n0571412 ),
    .I5(N94),
    .O(\u1/ipsend_inst/Mmux__n0571307_1474 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<0>  (
    .I0(\u1/ipsend_inst/tx_data_counter [0]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<1>  (
    .I0(\u1/ipsend_inst/tx_data_counter [1]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h8A0A820288088000 ))
  \u1/ipsend_inst/Mmux__n0571421  (
    .I0(\u1/ipsend_inst/j [1]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/ip_header_0[214] ),
    .I4(\u1/ipsend_inst/ip_header_0[222] ),
    .I5(\u1/ipsend_inst/j [0]),
    .O(\u1/ipsend_inst/Mmux__n057142 )
  );
  LUT5 #(
    .INIT ( 32'hD9C95141 ))
  \u1/ipsend_inst/Mmux__n0571186  (
    .I0(\u1/ipsend_inst/j [1]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [0]),
    .I3(\u1/ipsend_inst/ip_header_0[58] ),
    .I4(\u1/ipsend_inst/ip_header_0[218] ),
    .O(\u1/ipsend_inst/Mmux__n0571185_1442 )
  );
  LUT6 #(
    .INIT ( 64'h0020020200000020 ))
  \u1/ipsend_inst/Mmux__n0571124  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/i [3]),
    .I4(\u1/ipsend_inst/i [2]),
    .I5(\u1/ipsend_inst/i [1]),
    .O(\u1/ipsend_inst/Mmux__n0571123 )
  );
  LUT6 #(
    .INIT ( 64'h8280808002000000 ))
  \u1/ipsend_inst/Mmux__n0571183  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/j [2]),
    .I3(\u1/ipsend_inst/ip_header_0[50] ),
    .I4(\u1/ipsend_inst/j [0]),
    .I5(\u1/ipsend_inst/ip_header_0[210] ),
    .O(\u1/ipsend_inst/Mmux__n0571182_1440 )
  );
  LUT6 #(
    .INIT ( 64'h0020020202200020 ))
  \u1/ipsend_inst/Mmux__n0571242  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/i [3]),
    .I4(\u1/ipsend_inst/i [1]),
    .I5(\u1/ipsend_inst/i [2]),
    .O(\u1/ipsend_inst/Mmux__n0571241 )
  );
  LUT4 #(
    .INIT ( 16'h4004 ))
  \u1/ipsend_inst/Mmux__n05714121  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mmux__n0571412 )
  );
  LUT4 #(
    .INIT ( 16'h8008 ))
  \u1/ipsend_inst/Mmux__n05714111  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/i [1]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mmux__n0571411 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<2>  (
    .I0(\u1/ipsend_inst/tx_data_counter [2]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<3>  (
    .I0(\u1/ipsend_inst/tx_data_counter [3]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<4>  (
    .I0(\u1/ipsend_inst/tx_data_counter [4]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<5>  (
    .I0(\u1/ipsend_inst/tx_data_counter [5]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<6>  (
    .I0(\u1/ipsend_inst/tx_data_counter [6]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<0>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [0]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [0])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<0>  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/ram_rd_addr [0]),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<7>  (
    .I0(\u1/ipsend_inst/tx_data_counter [7]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<1>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [1]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<1>  (
    .I0(\u1/ipsend_inst/ram_rd_addr [1]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<8>  (
    .I0(\u1/ipsend_inst/tx_data_counter [8]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<2>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [2]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<2>  (
    .I0(\u1/ipsend_inst/ram_rd_addr [2]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<9>  (
    .I0(\u1/ipsend_inst/tx_data_counter [9]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<3>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [3]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<3>  (
    .I0(\u1/ipsend_inst/ram_rd_addr [3]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<10>  (
    .I0(\u1/ipsend_inst/tx_data_counter [10]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<4>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [4]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<4>  (
    .I0(\u1/ipsend_inst/ram_rd_addr [4]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<11>  (
    .I0(\u1/ipsend_inst/tx_data_counter [11]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<5>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [5]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<5>  (
    .I0(\u1/ipsend_inst/ram_rd_addr [5]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<12>  (
    .I0(\u1/ipsend_inst/tx_data_counter [12]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<6>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [6]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<6>  (
    .I0(\u1/ipsend_inst/ram_rd_addr [6]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<13>  (
    .I0(\u1/ipsend_inst/tx_data_counter [13]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<7>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [7]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<7>  (
    .I0(\u1/ipsend_inst/ram_rd_addr [7]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<14>  (
    .I0(\u1/ipsend_inst/tx_data_counter [14]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/iprecieve_inst/Mcount_ram_wr_addr_lut<8>  (
    .I0(\u1/iprecieve_inst/ram_wr_addr [8]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/Mcount_ram_wr_addr_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_ram_rd_addr_lut<8>  (
    .I0(\u1/ipsend_inst/ram_rd_addr [8]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_ram_rd_addr_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/ipsend_inst/Mcount_tx_data_counter_lut<15>  (
    .I0(\u1/ipsend_inst/tx_data_counter [15]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mcount_tx_data_counter_lut [15])
  );
  LUT6 #(
    .INIT ( 64'hA8A8A8200A0A0A02 ))
  \u1/ipsend_inst/Mmux__n051922  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I3(\u1/ipsend_inst/i [3]),
    .I4(\u1/ipsend_inst/i [2]),
    .I5(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .O(\u1/ipsend_inst/Mmux__n051921_1430 )
  );
  LUT5 #(
    .INIT ( 32'h00400000 ))
  \u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o<4>2  (
    .I0(\u1/ipsend_inst/i [3]),
    .I1(\u1/ipsend_inst/i [2]),
    .I2(\u1/ipsend_inst/i [1]),
    .I3(\u1/ipsend_inst/i [4]),
    .I4(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o )
  );
  LUT5 #(
    .INIT ( 32'h02200200 ))
  \u1/ipsend_inst/Mmux__n0571122_SW0_SW0  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/j [2]),
    .I4(\u1/ipsend_inst/ip_header_0[49] ),
    .O(N88)
  );
  LUT3 #(
    .INIT ( 8'h26 ))
  \u1/ipsend_inst/Mram_mac_addr411  (
    .I0(\u1/ipsend_inst/i [3]),
    .I1(\u1/ipsend_inst/i [2]),
    .I2(\u1/ipsend_inst/i [1]),
    .O(\u1/ipsend_inst/Mram_mac_addr41 )
  );
  LUT6 #(
    .INIT ( 64'h1010141000000400 ))
  \u1/ipsend_inst/Mmux__n057168  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/ip_header_0[72] ),
    .I4(\u1/ipsend_inst/j [2]),
    .I5(\u1/ipsend_inst/ip_header_0[0] ),
    .O(\u1/ipsend_inst/Mmux__n057167 )
  );
  LUT5 #(
    .INIT ( 32'h04404004 ))
  \u1/ipsend_inst/Mmux__n05711071  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .O(\u1/ipsend_inst/Mmux__n0571107 )
  );
  LUT5 #(
    .INIT ( 32'h02202002 ))
  \u1/ipsend_inst/Mmux__n05711061  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mmux__n0571106 )
  );
  LUT5 #(
    .INIT ( 32'h20020220 ))
  \u1/ipsend_inst/Mmux__n05711051  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mmux__n0571105 )
  );
  LUT5 #(
    .INIT ( 32'h08808008 ))
  \u1/ipsend_inst/Mmux__n05711041  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .O(\u1/ipsend_inst/Mmux__n0571104 )
  );
  LUT5 #(
    .INIT ( 32'h80080880 ))
  \u1/ipsend_inst/Mmux__n05711031  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I4(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(\u1/ipsend_inst/Mmux__n0571103 )
  );
  LUT6 #(
    .INIT ( 64'h0A00080000000000 ))
  \u1/iprecieve_inst/_n0709_inv1  (
    .I0(\u1/iprecieve_inst/state_counter [4]),
    .I1(\u1/iprecieve_inst/state_counter [3]),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2-In211_275 ),
    .I5(\u1/iprecieve_inst/_n0691_inv3 ),
    .O(\u1/iprecieve_inst/_n0709_inv )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o<4>1  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/i [2]),
    .I3(\u1/ipsend_inst/i [3]),
    .I4(\u1/ipsend_inst/i [4]),
    .O(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_18_o )
  );
  LUT6 #(
    .INIT ( 64'h266F266F266FF66F ))
  \u1/ipsend_inst/Mmux__n051941_lut1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [2]),
    .I5(\u1/ipsend_inst/i [3]),
    .O(\u1/ipsend_inst/Mmux__n051941_lut1_1656 )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<223>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[0]),
    .I3(\u1/ipsend_inst/ip_header_0[0] ),
    .O(\u1/ipsend_inst/_n0856[0] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<222>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[1]),
    .I3(\u1/ipsend_inst/ip_header_0[1] ),
    .O(\u1/ipsend_inst/_n0856[1] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<221>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[2]),
    .I3(\u1/ipsend_inst/ip_header_0[2] ),
    .O(\u1/ipsend_inst/_n0856[2] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<220>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[3]),
    .I3(\u1/ipsend_inst/ip_header_0[3] ),
    .O(\u1/ipsend_inst/_n0856[3] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<219>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[4]),
    .I3(\u1/ipsend_inst/ip_header_0[4] ),
    .O(\u1/ipsend_inst/_n0856[4] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<218>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[5]),
    .I3(\u1/ipsend_inst/ip_header_0[5] ),
    .O(\u1/ipsend_inst/_n0856[5] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<217>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[6]),
    .I3(\u1/ipsend_inst/ip_header_0[6] ),
    .O(\u1/ipsend_inst/_n0856[6] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<216>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[7]),
    .I3(\u1/ipsend_inst/ip_header_0[7] ),
    .O(\u1/ipsend_inst/_n0856[7] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<215>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[8]),
    .I3(\u1/ipsend_inst/ip_header_0[8] ),
    .O(\u1/ipsend_inst/_n0856[8] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<214>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[9]),
    .I3(\u1/ipsend_inst/ip_header_0[9] ),
    .O(\u1/ipsend_inst/_n0856[9] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<213>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[10]),
    .I3(\u1/ipsend_inst/ip_header_0[10] ),
    .O(\u1/ipsend_inst/_n0856[10] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<212>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[11]),
    .I3(\u1/ipsend_inst/ip_header_0[11] ),
    .O(\u1/ipsend_inst/_n0856[11] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<211>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[12]),
    .I3(\u1/ipsend_inst/ip_header_0[12] ),
    .O(\u1/ipsend_inst/_n0856[12] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<210>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[13]),
    .I3(\u1/ipsend_inst/ip_header_0[13] ),
    .O(\u1/ipsend_inst/_n0856[13] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<209>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[14]),
    .I3(\u1/ipsend_inst/ip_header_0[14] ),
    .O(\u1/ipsend_inst/_n0856[14] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<208>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_total_length[15]),
    .I3(\u1/ipsend_inst/ip_header_0[15] ),
    .O(\u1/ipsend_inst/_n0856[15] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<15>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[0]),
    .I3(\u1/ipsend_inst/ip_header_0[208] ),
    .O(\u1/ipsend_inst/_n0856[208] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<14>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[1]),
    .I3(\u1/ipsend_inst/ip_header_0[209] ),
    .O(\u1/ipsend_inst/_n0856[209] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<13>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[2]),
    .I3(\u1/ipsend_inst/ip_header_0[210] ),
    .O(\u1/ipsend_inst/_n0856[210] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<12>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[3]),
    .I3(\u1/ipsend_inst/ip_header_0[211] ),
    .O(\u1/ipsend_inst/_n0856[211] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<11>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[4]),
    .I3(\u1/ipsend_inst/ip_header_0[212] ),
    .O(\u1/ipsend_inst/_n0856[212] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<10>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[5]),
    .I3(\u1/ipsend_inst/ip_header_0[213] ),
    .O(\u1/ipsend_inst/_n0856[213] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<9>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[6]),
    .I3(\u1/ipsend_inst/ip_header_0[214] ),
    .O(\u1/ipsend_inst/_n0856[214] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<8>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[7]),
    .I3(\u1/ipsend_inst/ip_header_0[215] ),
    .O(\u1/ipsend_inst/_n0856[215] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<7>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[8]),
    .I3(\u1/ipsend_inst/ip_header_0[216] ),
    .O(\u1/ipsend_inst/_n0856[216] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<6>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[9]),
    .I3(\u1/ipsend_inst/ip_header_0[217] ),
    .O(\u1/ipsend_inst/_n0856[217] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<5>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[10]),
    .I3(\u1/ipsend_inst/ip_header_0[218] ),
    .O(\u1/ipsend_inst/_n0856[218] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<4>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[11]),
    .I3(\u1/ipsend_inst/ip_header_0[219] ),
    .O(\u1/ipsend_inst/_n0856[219] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<3>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[12]),
    .I3(\u1/ipsend_inst/ip_header_0[220] ),
    .O(\u1/ipsend_inst/_n0856[220] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<2>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[13]),
    .I3(\u1/ipsend_inst/ip_header_0[221] ),
    .O(\u1/ipsend_inst/_n0856[221] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<1>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[14]),
    .I3(\u1/ipsend_inst/ip_header_0[222] ),
    .O(\u1/ipsend_inst/_n0856[222] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<0>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(tx_data_length[15]),
    .I3(\u1/ipsend_inst/ip_header_0[223] ),
    .O(\u1/ipsend_inst/_n0856[223] )
  );
  LUT5 #(
    .INIT ( 32'hDFFF8AAA ))
  ram_wren_i_rstpot (
    .I0(reset_n_IBUF_8),
    .I1(ram_addr_i[0]),
    .I2(ram_addr_i[1]),
    .I3(ram_addr_i[2]),
    .I4(ram_wren_i_106),
    .O(ram_wren_i_rstpot_1648)
  );
  LUT6 #(
    .INIT ( 64'h0041145508491C5D ))
  \u1/ipsend_inst/Mmux__n05191011  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/_n0626 ),
    .I4(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_27_o ),
    .I5(\u1/ipsend_inst/GND_3_o_GND_3_o_equal_34_o ),
    .O(\u1/ipsend_inst/Mmux__n0519101 )
  );
  LUT5 #(
    .INIT ( 32'h11190008 ))
  \u1/ipsend_inst/Mmux__n0571247  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/j [0]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/j [1]),
    .I4(\u1/ipsend_inst/Mmux__n0571245_1489 ),
    .O(\u1/ipsend_inst/Mmux__n0571246_1490 )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<160>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<15> ),
    .I3(\u1/ipsend_inst/ip_header_0[63] ),
    .O(\u1/ipsend_inst/_n0856[63] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<161>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<14> ),
    .I3(\u1/ipsend_inst/ip_header_0[62] ),
    .O(\u1/ipsend_inst/_n0856[62] )
  );
  LUT4 #(
    .INIT ( 16'h1C5D ))
  \u1/ipsend_inst/Mmux__n051923  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/_n0626 ),
    .O(\u1/ipsend_inst/Mmux__n051922_1431 )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<162>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<13> ),
    .I3(\u1/ipsend_inst/ip_header_0[61] ),
    .O(\u1/ipsend_inst/_n0856[61] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<163>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<12> ),
    .I3(\u1/ipsend_inst/ip_header_0[60] ),
    .O(\u1/ipsend_inst/_n0856[60] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<164>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<11> ),
    .I3(\u1/ipsend_inst/ip_header_0[59] ),
    .O(\u1/ipsend_inst/_n0856[59] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<165>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<10> ),
    .I3(\u1/ipsend_inst/ip_header_0[58] ),
    .O(\u1/ipsend_inst/_n0856[58] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<166>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<9> ),
    .I3(\u1/ipsend_inst/ip_header_0[57] ),
    .O(\u1/ipsend_inst/_n0856[57] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<167>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<8> ),
    .I3(\u1/ipsend_inst/ip_header_0[56] ),
    .O(\u1/ipsend_inst/_n0856[56] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<168>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<7> ),
    .I3(\u1/ipsend_inst/ip_header_0[55] ),
    .O(\u1/ipsend_inst/_n0856[55] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<169>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<6> ),
    .I3(\u1/ipsend_inst/ip_header_0[54] ),
    .O(\u1/ipsend_inst/_n0856[54] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<170>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<5> ),
    .I3(\u1/ipsend_inst/ip_header_0[53] ),
    .O(\u1/ipsend_inst/_n0856[53] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<171>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<4> ),
    .I3(\u1/ipsend_inst/ip_header_0[52] ),
    .O(\u1/ipsend_inst/_n0856[52] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<172>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<3> ),
    .I3(\u1/ipsend_inst/ip_header_0[51] ),
    .O(\u1/ipsend_inst/_n0856[51] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<173>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<2> ),
    .I3(\u1/ipsend_inst/ip_header_0[50] ),
    .O(\u1/ipsend_inst/_n0856[50] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<174>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<1> ),
    .I3(\u1/ipsend_inst/ip_header_0[49] ),
    .O(\u1/ipsend_inst/_n0856[49] )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \u1/ipsend_inst/_n0856<175>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/ip_header[1][31]_GND_3_o_add_5_OUT<0> ),
    .I3(\u1/ipsend_inst/ip_header_0[48] ),
    .O(\u1/ipsend_inst/_n0856[48] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<159>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[64] ),
    .I4(\u1/ipsend_inst/check_buffer_0_1218 ),
    .O(\u1/ipsend_inst/_n0856[64] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<158>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[65] ),
    .I4(\u1/ipsend_inst/check_buffer_1_1219 ),
    .O(\u1/ipsend_inst/_n0856[65] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<157>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[66] ),
    .I4(\u1/ipsend_inst/check_buffer_2_1220 ),
    .O(\u1/ipsend_inst/_n0856[66] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<156>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[67] ),
    .I4(\u1/ipsend_inst/check_buffer_3_732 ),
    .O(\u1/ipsend_inst/_n0856[67] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<155>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[68] ),
    .I4(\u1/ipsend_inst/check_buffer_4_730 ),
    .O(\u1/ipsend_inst/_n0856[68] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<154>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[69] ),
    .I4(\u1/ipsend_inst/check_buffer_5_728 ),
    .O(\u1/ipsend_inst/_n0856[69] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<153>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[70] ),
    .I4(\u1/ipsend_inst/check_buffer_6_726 ),
    .O(\u1/ipsend_inst/_n0856[70] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<152>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[71] ),
    .I4(\u1/ipsend_inst/check_buffer_7_724 ),
    .O(\u1/ipsend_inst/_n0856[71] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<151>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[72] ),
    .I4(\u1/ipsend_inst/check_buffer_8_722 ),
    .O(\u1/ipsend_inst/_n0856[72] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<150>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[73] ),
    .I4(\u1/ipsend_inst/check_buffer_9_720 ),
    .O(\u1/ipsend_inst/_n0856[73] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<149>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[74] ),
    .I4(\u1/ipsend_inst/check_buffer_10_718 ),
    .O(\u1/ipsend_inst/_n0856[74] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<148>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[75] ),
    .I4(\u1/ipsend_inst/check_buffer_11_716 ),
    .O(\u1/ipsend_inst/_n0856[75] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<147>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[76] ),
    .I4(\u1/ipsend_inst/check_buffer_12_714 ),
    .O(\u1/ipsend_inst/_n0856[76] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<146>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[77] ),
    .I4(\u1/ipsend_inst/check_buffer_13_712 ),
    .O(\u1/ipsend_inst/_n0856[77] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<145>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[78] ),
    .I4(\u1/ipsend_inst/check_buffer_14_710 ),
    .O(\u1/ipsend_inst/_n0856[78] )
  );
  LUT5 #(
    .INIT ( 32'h06006660 ))
  \u1/ipsend_inst/_n0856<144>1  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I2(\u1/ipsend_inst/_n0626 ),
    .I3(\u1/ipsend_inst/ip_header_0[79] ),
    .I4(\u1/ipsend_inst/check_buffer_15_708 ),
    .O(\u1/ipsend_inst/_n0856[79] )
  );
  LUT6 #(
    .INIT ( 64'hFFF8FF0000000000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In211_SW0  (
    .I0(\u1/iprecieve_inst/state_counter [1]),
    .I1(\u1/iprecieve_inst/state_counter [0]),
    .I2(\u1/iprecieve_inst/state_counter [2]),
    .I3(\u1/iprecieve_inst/state_counter [4]),
    .I4(\u1/iprecieve_inst/state_counter [3]),
    .I5(\u1/iprecieve_inst/rx_state_FSM_FFd2-In29_1410 ),
    .O(N96)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2-In211  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd2-In21_1403 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd2-In210_1411 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd2-In22_1404 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd2-In23_1405 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2-In24_1406 ),
    .I5(N96),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd2-In212_1412 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FD7DFF7F ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In110_lut  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd4-In11_1395 ),
    .I1(e_rxd_7_IBUF_0),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I4(N90),
    .I5(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In110_lut_1722 )
  );
  LUT6 #(
    .INIT ( 64'h0800000000000000 ))
  \u1/iprecieve_inst/_n0469_inv11  (
    .I0(e_rxdv_IBUF_10),
    .I1(reset_n_IBUF_8),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I5(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/_n0469_inv1 )
  );
  LUT6 #(
    .INIT ( 64'h4000000400000004 ))
  \u1/iprecieve_inst/_n0469_inv2  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I1(reset_n_IBUF_8),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I5(e_rxdv_IBUF_10),
    .O(\u1/iprecieve_inst/_n0469_inv )
  );
  LUT6 #(
    .INIT ( 64'h0002800200020002 ))
  \u1/iprecieve_inst/_n0442_inv1  (
    .I0(reset_n_IBUF_8),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .I4(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I5(e_rxdv_IBUF_10),
    .O(\u1/iprecieve_inst/_n0442_inv )
  );
  LUT6 #(
    .INIT ( 64'h1041104010011000 ))
  \u1/ipsend_inst/Mmux__n057167_SW0  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/j [2]),
    .I4(\u1/ipsend_inst/ip_header_0[8] ),
    .I5(\u1/ipsend_inst/ip_header_0[64] ),
    .O(N86)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd4-In110_cy_rt  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd2_373 ),
    .O(\u1/iprecieve_inst/rx_state_FSM_FFd4-In110_cy_rt_1731 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/rx_state_FSM_FFd2-In2 ),
    .R(\u1/iprecieve_inst/e_rxdv_0 ),
    .Q(\u1/iprecieve_inst/rx_state_FSM_FFd2_1_1732 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \u1/iprecieve_inst/_n0736_inv1_1  (
    .I0(e_rxdv_IBUF_10),
    .I1(reset_n_IBUF_8),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19 ),
    .O(\u1/iprecieve_inst/_n0736_inv1_1733 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \u1/iprecieve_inst/_n0736_inv1_2  (
    .I0(e_rxdv_IBUF_10),
    .I1(reset_n_IBUF_8),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd1_613 ),
    .I3(\u1/iprecieve_inst/rx_state_FSM_FFd4-In19 ),
    .O(\u1/iprecieve_inst/_n0736_inv11 )
  );
  LUT5 #(
    .INIT ( 32'hFF70FF00 ))
  \u1/iprecieve_inst/_n0580_inv1_1  (
    .I0(\u1/iprecieve_inst/byte_counter [1]),
    .I1(\u1/iprecieve_inst/byte_counter [0]),
    .I2(\u1/iprecieve_inst/_n0469_inv1 ),
    .I3(\u1/iprecieve_inst/_n0691_inv2 ),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0580_inv1_1735 )
  );
  LUT6 #(
    .INIT ( 64'h0202000202000000 ))
  \u1/ipsend_inst/Mmux__n0571424  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [0]),
    .I3(\u1/ipsend_inst/j [1]),
    .I4(\u1/ipsend_inst/ip_header_0[70] ),
    .I5(\u1/ipsend_inst/ip_header_0[6] ),
    .O(\u1/ipsend_inst/Mmux__n0571423_1465 )
  );
  LUT5 #(
    .INIT ( 32'h80008888 ))
  \u1/iprecieve_inst/_n0514_inv1_rstpot  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_8_dpot  (
    .I0(\u1/iprecieve_inst/data_o [8]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<8> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_8_dpot_1745 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_9_dpot  (
    .I0(\u1/iprecieve_inst/data_o [9]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<9> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_9_dpot_1746 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_10_dpot  (
    .I0(\u1/iprecieve_inst/data_o [10]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<10> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_10_dpot_1747 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_11_dpot  (
    .I0(\u1/iprecieve_inst/data_o [11]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<11> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_11_dpot_1748 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_12_dpot  (
    .I0(\u1/iprecieve_inst/data_o [12]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<12> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_12_dpot_1749 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_13_dpot  (
    .I0(\u1/iprecieve_inst/data_o [13]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<13> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_13_dpot_1750 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_14_dpot  (
    .I0(\u1/iprecieve_inst/data_o [14]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<14> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_14_dpot_1751 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_15_dpot  (
    .I0(\u1/iprecieve_inst/data_o [15]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<15> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_15_dpot_1752 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_16_dpot  (
    .I0(\u1/iprecieve_inst/data_o [16]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<16> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_16_dpot_1753 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_17_dpot  (
    .I0(\u1/iprecieve_inst/data_o [17]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<17> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_17_dpot_1754 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_18_dpot  (
    .I0(\u1/iprecieve_inst/data_o [18]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<18> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_18_dpot_1755 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_19_dpot  (
    .I0(\u1/iprecieve_inst/data_o [19]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<19> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_19_dpot_1756 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_20_dpot  (
    .I0(\u1/iprecieve_inst/data_o [20]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<20> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_20_dpot_1757 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_21_dpot  (
    .I0(\u1/iprecieve_inst/data_o [21]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<21> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_21_dpot_1758 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_22_dpot  (
    .I0(\u1/iprecieve_inst/data_o [22]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<22> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_22_dpot_1759 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_23_dpot  (
    .I0(\u1/iprecieve_inst/data_o [23]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<23> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_23_dpot_1760 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_24_dpot  (
    .I0(\u1/iprecieve_inst/data_o [24]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<24> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot_1736 ),
    .O(\u1/iprecieve_inst/data_o_24_dpot_1761 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_25_dpot  (
    .I0(\u1/iprecieve_inst/data_o [25]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<25> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_25_dpot_1762 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_26_dpot  (
    .I0(\u1/iprecieve_inst/data_o [26]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<26> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_26_dpot_1763 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_27_dpot  (
    .I0(\u1/iprecieve_inst/data_o [27]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<27> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_27_dpot_1764 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_28_dpot  (
    .I0(\u1/iprecieve_inst/data_o [28]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<28> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_28_dpot_1765 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_29_dpot  (
    .I0(\u1/iprecieve_inst/data_o [29]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<29> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_29_dpot_1766 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_30_dpot  (
    .I0(\u1/iprecieve_inst/data_o [30]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<30> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_30_dpot_1767 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \u1/iprecieve_inst/data_o_31_dpot  (
    .I0(\u1/iprecieve_inst/data_o [31]),
    .I1(\u1/iprecieve_inst/mydata[23]_data_o[31]_mux_97_OUT<31> ),
    .I2(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_31_dpot_1768 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA000CCCCCCCC ))
  \u1/iprecieve_inst/data_o_0_dpot  (
    .I0(e_rxd_0_IBUF_7),
    .I1(\u1/iprecieve_inst/data_o [0]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I5(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_0_dpot_1737 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA000CCCCCCCC ))
  \u1/iprecieve_inst/data_o_1_dpot  (
    .I0(e_rxd_1_IBUF_6),
    .I1(\u1/iprecieve_inst/data_o [1]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I5(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_1_dpot_1738 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA000CCCCCCCC ))
  \u1/iprecieve_inst/data_o_2_dpot  (
    .I0(e_rxd_2_IBUF_5),
    .I1(\u1/iprecieve_inst/data_o [2]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I5(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_2_dpot_1739 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA000CCCCCCCC ))
  \u1/iprecieve_inst/data_o_3_dpot  (
    .I0(e_rxd_3_IBUF_4),
    .I1(\u1/iprecieve_inst/data_o [3]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I5(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_3_dpot_1740 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA000CCCCCCCC ))
  \u1/iprecieve_inst/data_o_4_dpot  (
    .I0(e_rxd_4_IBUF_3),
    .I1(\u1/iprecieve_inst/data_o [4]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I5(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_4_dpot_1741 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA000CCCCCCCC ))
  \u1/iprecieve_inst/data_o_5_dpot  (
    .I0(e_rxd_5_IBUF_2),
    .I1(\u1/iprecieve_inst/data_o [5]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I5(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_5_dpot_1742 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA000CCCCCCCC ))
  \u1/iprecieve_inst/data_o_6_dpot  (
    .I0(e_rxd_6_IBUF_1),
    .I1(\u1/iprecieve_inst/data_o [6]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I5(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_6_dpot_1743 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA000CCCCCCCC ))
  \u1/iprecieve_inst/data_o_7_dpot  (
    .I0(e_rxd_7_IBUF_0),
    .I1(\u1/iprecieve_inst/data_o [7]),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .I5(\u1/iprecieve_inst/_n0514_inv1_rstpot1 ),
    .O(\u1/iprecieve_inst/data_o_7_dpot_1744 )
  );
  FDE   \u1/iprecieve_inst/byte_counter_0_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0519 [3]),
    .Q(\u1/iprecieve_inst/byte_counter_0_1_1769 )
  );
  FDE   \u1/iprecieve_inst/byte_counter_1_1  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0469_inv ),
    .D(\u1/iprecieve_inst/_n0519 [2]),
    .Q(\u1/iprecieve_inst/byte_counter_1_1_1770 )
  );
  LUT5 #(
    .INIT ( 32'h80008888 ))
  \u1/iprecieve_inst/_n0514_inv1_rstpot_1  (
    .I0(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I2(\u1/iprecieve_inst/byte_counter [1]),
    .I3(\u1/iprecieve_inst/byte_counter [0]),
    .I4(\u1/iprecieve_inst/GND_6_o_GND_6_o_equal_73_o ),
    .O(\u1/iprecieve_inst/_n0514_inv1_rstpot1 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \u1/iprecieve_inst/rx_state_FSM_FFd2_2  (
    .C(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/rx_state_FSM_FFd2-In2 ),
    .R(\u1/iprecieve_inst/e_rxdv_0 ),
    .Q(\u1/iprecieve_inst/rx_state_FSM_FFd2_2_1772 )
  );
  LUT5 #(
    .INIT ( 32'h30100000 ))
  \u1/iprecieve_inst/_n0700_inv1_4  (
    .I0(\u1/iprecieve_inst/state_counter [4]),
    .I1(\u1/iprecieve_inst/rx_state_FSM_FFd3_612 ),
    .I2(\u1/iprecieve_inst/rx_state_FSM_FFd4_611 ),
    .I3(\u1/iprecieve_inst/Mmux__n0605112 ),
    .I4(\u1/iprecieve_inst/_n0691_inv3 ),
    .O(\u1/iprecieve_inst/_n0700_inv13 )
  );
  BUFG   e_gtxc_OBUF_BUFG (
    .O(e_gtxc_OBUF_BUFG_9),
    .I(e_gtxc_OBUF_1774)
  );
  INV   \Mcount_ram_addr_i_lut<0>_INV_0  (
    .I(ram_addr_i[0]),
    .O(Mcount_ram_addr_i_lut[0])
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<15>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [15]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[15] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<14>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [14]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[14] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<13>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [13]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[13] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<12>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [12]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[12] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<11>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [11]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[11] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<10>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [10]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[10] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<9>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [9]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[9] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<8>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [8]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[8] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<7>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [7]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[7] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<6>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [6]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[6] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<5>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [5]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[5] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<4>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [4]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[4] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<2>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [2]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[2] )
  );
  INV   \u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut<1>_INV_0  (
    .I(\u1/iprecieve_inst/rx_data_length [1]),
    .O(\u1/iprecieve_inst/Msub_GND_6_o_GND_6_o_sub_72_OUT_lut[1] )
  );
  INV   \u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_lut<0>_INV_0  (
    .I(\u1/iprecieve_inst/byte_counter [0]),
    .O(\u1/iprecieve_inst/Madd_data_counter[15]_GND_6_o_add_86_OUT_lut<0> )
  );
  INV   \u1/ipsend_inst/Mcount_time_counter_lut<0>_INV_0  (
    .I(\u1/ipsend_inst/time_counter [0]),
    .O(\u1/ipsend_inst/Mcount_time_counter_lut [0])
  );
  INV   \u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_lut<0>_INV_0  (
    .I(\u1/ipsend_inst/ip_header_0[48] ),
    .O(\u1/ipsend_inst/Madd_ip_header[1][31]_GND_3_o_add_5_OUT_lut<0> )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<15>_INV_0  (
    .I(tx_data_length[15]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[15] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<14>_INV_0  (
    .I(tx_data_length[14]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[14] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<13>_INV_0  (
    .I(tx_data_length[13]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[13] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<12>_INV_0  (
    .I(tx_data_length[12]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[12] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<11>_INV_0  (
    .I(tx_data_length[11]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[11] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<10>_INV_0  (
    .I(tx_data_length[10]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[10] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<9>_INV_0  (
    .I(tx_data_length[9]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[9] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<8>_INV_0  (
    .I(tx_data_length[8]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[8] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<7>_INV_0  (
    .I(tx_data_length[7]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[7] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<6>_INV_0  (
    .I(tx_data_length[6]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[6] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<5>_INV_0  (
    .I(tx_data_length[5]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[5] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<4>_INV_0  (
    .I(tx_data_length[4]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[4] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<2>_INV_0  (
    .I(tx_data_length[2]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[2] )
  );
  INV   \u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut<1>_INV_0  (
    .I(tx_data_length[1]),
    .O(\u1/ipsend_inst/Msub_GND_3_o_GND_3_o_sub_97_OUT_lut[1] )
  );
  INV   reset_n_inv1_INV_0 (
    .I(reset_n_IBUF_8),
    .O(reset_n_inv)
  );
  INV   \u1/ipsend_inst/clk_inv1_INV_0  (
    .I(e_gtxc_OBUF_BUFG_9),
    .O(\u1/ipsend_inst/clk_inv )
  );
  INV   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>101_INV_0  (
    .I(\u1/ipsend_inst/ip_header_0[10] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>10 )
  );
  INV   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>151_INV_0  (
    .I(\u1/ipsend_inst/ip_header_0[15] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>15 )
  );
  INV   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>81_INV_0  (
    .I(\u1/ipsend_inst/ip_header_0[8] ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd1_lut<0>8 )
  );
  INV   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>161_INV_0  (
    .I(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd76_908 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd7_lut<0>16 )
  );
  INV   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<5>1_INV_0  (
    .I(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_53 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[5] )
  );
  INV   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<6>1_INV_0  (
    .I(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_63 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[6] )
  );
  INV   \u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut<8>1_INV_0  (
    .I(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd_83 ),
    .O(\u1/ipsend_inst/ADDERTREE_INTERNAL_Madd8_lut[8] )
  );
  INV   \u1/ipsend_inst/_n0853_inv1_cepot_INV_0  (
    .I(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/_n0830_inv1_cepot )
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571367  (
    .I0(N100),
    .I1(N101),
    .S(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/Mmux__n0571366 )
  );
  LUT5 #(
    .INIT ( 32'h91808080 ))
  \u1/ipsend_inst/Mmux__n0571367_F  (
    .I0(\u1/ipsend_inst/j [1]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/ip_header_0[221] ),
    .I3(\u1/ipsend_inst/ip_header_0[61] ),
    .I4(\u1/ipsend_inst/j [0]),
    .O(N100)
  );
  LUT5 #(
    .INIT ( 32'hBC34AC24 ))
  \u1/ipsend_inst/Mmux__n0571367_G  (
    .I0(\u1/ipsend_inst/j [1]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [0]),
    .I3(\u1/ipsend_inst/ip_header_0[213] ),
    .I4(\u1/ipsend_inst/ip_header_0[53] ),
    .O(N101)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571185  (
    .I0(N102),
    .I1(N103),
    .S(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/Mmux__n0571184 )
  );
  LUT5 #(
    .INIT ( 32'h19180908 ))
  \u1/ipsend_inst/Mmux__n0571185_F  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/ip_header_0[10] ),
    .I4(\u1/ipsend_inst/ip_header_0[74] ),
    .O(N102)
  );
  LUT5 #(
    .INIT ( 32'h11011000 ))
  \u1/ipsend_inst/Mmux__n0571185_G  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/j [0]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/ip_header_0[66] ),
    .I4(\u1/ipsend_inst/ip_header_0[2] ),
    .O(N103)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571307  (
    .I0(N104),
    .I1(N105),
    .S(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/Mmux__n0571306 )
  );
  LUT5 #(
    .INIT ( 32'h19180908 ))
  \u1/ipsend_inst/Mmux__n0571307_F  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/j [0]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/ip_header_0[12] ),
    .I4(\u1/ipsend_inst/ip_header_0[76] ),
    .O(N104)
  );
  LUT5 #(
    .INIT ( 32'h19180908 ))
  \u1/ipsend_inst/Mmux__n0571307_G  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/j [0]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/ip_header_0[4] ),
    .I4(\u1/ipsend_inst/ip_header_0[68] ),
    .O(N105)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571182  (
    .I0(e_txer_OBUF_102),
    .I1(N107),
    .S(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/Mmux__n0571181 )
  );
  LUT6 #(
    .INIT ( 64'h01051114FFFFFFFF ))
  \u1/ipsend_inst/Mmux__n0571182_G  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/i [3]),
    .I2(\u1/ipsend_inst/i [2]),
    .I3(\u1/ipsend_inst/i [0]),
    .I4(\u1/ipsend_inst/i [1]),
    .I5(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(N107)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n057162  (
    .I0(e_txer_OBUF_102),
    .I1(N109),
    .S(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/Mmux__n057161 )
  );
  LUT6 #(
    .INIT ( 64'h01100010FFFFFFFF ))
  \u1/ipsend_inst/Mmux__n057162_G  (
    .I0(\u1/ipsend_inst/i [1]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/i [3]),
    .I3(\u1/ipsend_inst/i [2]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(N109)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n05713610  (
    .I0(N110),
    .I1(N111),
    .S(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/_n0571 [5])
  );
  LUT6 #(
    .INIT ( 64'h2220AAAA22202220 ))
  \u1/ipsend_inst/Mmux__n05713610_F  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/Mmux__n0571368_1438 ),
    .I3(\u1/ipsend_inst/Mmux__n0571367_1437 ),
    .I4(\u1/ipsend_inst/tx_state [0]),
    .I5(\u1/ipsend_inst/Mmux__n057136 ),
    .O(N110)
  );
  LUT5 #(
    .INIT ( 32'h8A880200 ))
  \u1/ipsend_inst/Mmux__n05713610_G  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/Mram_mac_addr41 ),
    .I4(\u1/ipsend_inst/Mmux__n0571367_1437 ),
    .O(N111)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571302  (
    .I0(e_txer_OBUF_102),
    .I1(N113),
    .S(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .O(\u1/ipsend_inst/Mmux__n0571301 )
  );
  LUT6 #(
    .INIT ( 64'h01000414FFFFFFFF ))
  \u1/ipsend_inst/Mmux__n0571302_G  (
    .I0(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I1(\u1/ipsend_inst/i [3]),
    .I2(\u1/ipsend_inst/i [2]),
    .I3(\u1/ipsend_inst/i [1]),
    .I4(\u1/ipsend_inst/i [0]),
    .I5(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .O(N113)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571127  (
    .I0(N114),
    .I1(N115),
    .S(\u1/ipsend_inst/i [0]),
    .O(\u1/ipsend_inst/Mmux__n0571126 )
  );
  LUT5 #(
    .INIT ( 32'h19180908 ))
  \u1/ipsend_inst/Mmux__n0571127_F  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [2]),
    .I2(\u1/ipsend_inst/j [1]),
    .I3(\u1/ipsend_inst/ip_header_0[9] ),
    .I4(\u1/ipsend_inst/ip_header_0[73] ),
    .O(N114)
  );
  LUT5 #(
    .INIT ( 32'h11DC1198 ))
  \u1/ipsend_inst/Mmux__n0571127_G  (
    .I0(\u1/ipsend_inst/j [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/ip_header_0[1] ),
    .I3(\u1/ipsend_inst/j [2]),
    .I4(\u1/ipsend_inst/ip_header_0[65] ),
    .O(N115)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n057165  (
    .I0(N116),
    .I1(N117),
    .S(\u1/ipsend_inst/j [2]),
    .O(\u1/ipsend_inst/Mmux__n057164 )
  );
  LUT5 #(
    .INIT ( 32'h54991099 ))
  \u1/ipsend_inst/Mmux__n057165_F  (
    .I0(\u1/ipsend_inst/j [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/ip_header_0[56] ),
    .I3(\u1/ipsend_inst/j [0]),
    .I4(\u1/ipsend_inst/ip_header_0[48] ),
    .O(N116)
  );
  LUT5 #(
    .INIT ( 32'hB931A820 ))
  \u1/ipsend_inst/Mmux__n057165_G  (
    .I0(\u1/ipsend_inst/j [1]),
    .I1(\u1/ipsend_inst/i [0]),
    .I2(\u1/ipsend_inst/ip_header_0[216] ),
    .I3(\u1/ipsend_inst/ip_header_0[208] ),
    .I4(\u1/ipsend_inst/j [0]),
    .O(N117)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571121  (
    .I0(N118),
    .I1(N119),
    .S(\u1/ipsend_inst/Mmux__n0571391 ),
    .O(\u1/ipsend_inst/Mmux__n057112 )
  );
  LUT5 #(
    .INIT ( 32'h88800800 ))
  \u1/ipsend_inst/Mmux__n0571121_F  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/ip_header_0[217] ),
    .I4(\u1/ipsend_inst/ip_header_0[209] ),
    .O(N118)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88800800 ))
  \u1/ipsend_inst/Mmux__n0571121_G  (
    .I0(\u1/ipsend_inst/j [2]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/i [0]),
    .I3(\u1/ipsend_inst/ip_header_0[217] ),
    .I4(\u1/ipsend_inst/ip_header_0[209] ),
    .I5(\u1/ipsend_inst/ip_header_0[57] ),
    .O(N119)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571308_SW0  (
    .I0(N120),
    .I1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .S(\u1/ipsend_inst/Mmux__n0571311 ),
    .O(N94)
  );
  LUT6 #(
    .INIT ( 64'hA888200020002000 ))
  \u1/ipsend_inst/Mmux__n0571308_SW0_F  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/ip_header_0[52] ),
    .I3(\u1/ipsend_inst/j [0]),
    .I4(\u1/ipsend_inst/ip_header_0[212] ),
    .I5(\u1/ipsend_inst/j [2]),
    .O(N120)
  );
  MUXF7   \u1/ipsend_inst/Mmux__n0571488  (
    .I0(N122),
    .I1(N123),
    .S(\u1/ipsend_inst/i [1]),
    .O(\u1/ipsend_inst/Mmux__n0571487_1461 )
  );
  LUT6 #(
    .INIT ( 64'h8228822800008228 ))
  \u1/ipsend_inst/Mmux__n0571488_F  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/tx_state_FSM_FFd2_852 ),
    .I2(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd1_851 ),
    .I4(\u1/ipsend_inst/j [1]),
    .I5(\u1/ipsend_inst/ip_header_0[215] ),
    .O(N122)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \u1/ipsend_inst/Mmux__n0571488_G  (
    .I0(\u1/ipsend_inst/i [0]),
    .I1(\u1/ipsend_inst/j [1]),
    .I2(\u1/ipsend_inst/j [0]),
    .I3(\u1/ipsend_inst/tx_state_FSM_FFd3_853 ),
    .O(N123)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_mymac_45  (
    .A0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mymac[5] ),
    .Q(\u1/iprecieve_inst/Mshreg_mymac_45_1795 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_mymac_45_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/mymac_45  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(\u1/iprecieve_inst/Mshreg_mymac_45_1795 ),
    .Q(\u1/iprecieve_inst/mymac[45] )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_mymac_47  (
    .A0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mymac[7] ),
    .Q(\u1/iprecieve_inst/Mshreg_mymac_47_1796 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_mymac_47_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/mymac_47  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(\u1/iprecieve_inst/Mshreg_mymac_47_1796 ),
    .Q(\u1/iprecieve_inst/mymac[47] )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_mymac_46  (
    .A0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mymac[6] ),
    .Q(\u1/iprecieve_inst/Mshreg_mymac_46_1797 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_mymac_46_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/mymac_46  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(\u1/iprecieve_inst/Mshreg_mymac_46_1797 ),
    .Q(\u1/iprecieve_inst/mymac[46] )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_mymac_42  (
    .A0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mymac[2] ),
    .Q(\u1/iprecieve_inst/Mshreg_mymac_42_1798 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_mymac_42_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/mymac_42  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(\u1/iprecieve_inst/Mshreg_mymac_42_1798 ),
    .Q(\u1/iprecieve_inst/mymac[42] )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_mymac_44  (
    .A0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mymac[4] ),
    .Q(\u1/iprecieve_inst/Mshreg_mymac_44_1799 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_mymac_44_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/mymac_44  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(\u1/iprecieve_inst/Mshreg_mymac_44_1799 ),
    .Q(\u1/iprecieve_inst/mymac[44] )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_mymac_43  (
    .A0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mymac[3] ),
    .Q(\u1/iprecieve_inst/Mshreg_mymac_43_1800 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_mymac_43_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/mymac_43  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(\u1/iprecieve_inst/Mshreg_mymac_43_1800 ),
    .Q(\u1/iprecieve_inst/mymac[43] )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myIP_layer_127  (
    .A0(e_txer_OBUF_102),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A3(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_7_IBUF_0),
    .Q(\u1/iprecieve_inst/Mshreg_myIP_layer_127_1801 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myIP_layer_127_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_127  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myIP_layer_127_1801 ),
    .Q(\u1/iprecieve_inst/myIP_layer [127])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_mymac_41  (
    .A0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mymac[1] ),
    .Q(\u1/iprecieve_inst/Mshreg_mymac_41_1802 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_mymac_41_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/mymac_41  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(\u1/iprecieve_inst/Mshreg_mymac_41_1802 ),
    .Q(\u1/iprecieve_inst/mymac[41] )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_mymac_40  (
    .A0(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(\u1/iprecieve_inst/mymac[0] ),
    .Q(\u1/iprecieve_inst/Mshreg_mymac_40_1803 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_mymac_40_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/mymac_40  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0736_inv ),
    .D(\u1/iprecieve_inst/Mshreg_mymac_40_1803 ),
    .Q(\u1/iprecieve_inst/mymac[40] )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myIP_layer_124  (
    .A0(e_txer_OBUF_102),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A3(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_4_IBUF_3),
    .Q(\u1/iprecieve_inst/Mshreg_myIP_layer_124_1804 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myIP_layer_124_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_124  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myIP_layer_124_1804 ),
    .Q(\u1/iprecieve_inst/myIP_layer [124])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myIP_layer_126  (
    .A0(e_txer_OBUF_102),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A3(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_6_IBUF_1),
    .Q(\u1/iprecieve_inst/Mshreg_myIP_layer_126_1805 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myIP_layer_126_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_126  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myIP_layer_126_1805 ),
    .Q(\u1/iprecieve_inst/myIP_layer [126])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myIP_layer_125  (
    .A0(e_txer_OBUF_102),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A3(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_5_IBUF_2),
    .Q(\u1/iprecieve_inst/Mshreg_myIP_layer_125_1806 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myIP_layer_125_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_125  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myIP_layer_125_1806 ),
    .Q(\u1/iprecieve_inst/myIP_layer [125])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myIP_layer_121  (
    .A0(e_txer_OBUF_102),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A3(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_1_IBUF_6),
    .Q(\u1/iprecieve_inst/Mshreg_myIP_layer_121_1807 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myIP_layer_121_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_121  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myIP_layer_121_1807 ),
    .Q(\u1/iprecieve_inst/myIP_layer [121])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myIP_layer_123  (
    .A0(e_txer_OBUF_102),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A3(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_3_IBUF_4),
    .Q(\u1/iprecieve_inst/Mshreg_myIP_layer_123_1808 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myIP_layer_123_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_123  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myIP_layer_123_1808 ),
    .Q(\u1/iprecieve_inst/myIP_layer [123])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myIP_layer_122  (
    .A0(e_txer_OBUF_102),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A3(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_2_IBUF_5),
    .Q(\u1/iprecieve_inst/Mshreg_myIP_layer_122_1809 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myIP_layer_122_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_122  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myIP_layer_122_1809 ),
    .Q(\u1/iprecieve_inst/myIP_layer [122])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myUDP_layer_14  (
    .A0(e_txer_OBUF_102),
    .A1(e_txer_OBUF_102),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_6_IBUF_1),
    .Q(\u1/iprecieve_inst/Mshreg_myUDP_layer_14_1810 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_14_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_14  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myUDP_layer_14_1810 ),
    .Q(\u1/iprecieve_inst/myUDP_layer [14])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myIP_layer_120  (
    .A0(e_txer_OBUF_102),
    .A1(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A2(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .A3(\Mram_i[2]_X_1_o_wide_mux_7_OUT20 ),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_0_IBUF_7),
    .Q(\u1/iprecieve_inst/Mshreg_myIP_layer_120_1811 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myIP_layer_120_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myIP_layer_120  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0700_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myIP_layer_120_1811 ),
    .Q(\u1/iprecieve_inst/myIP_layer [120])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myUDP_layer_15  (
    .A0(e_txer_OBUF_102),
    .A1(e_txer_OBUF_102),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_7_IBUF_0),
    .Q(\u1/iprecieve_inst/Mshreg_myUDP_layer_15_1812 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_15_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_15  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myUDP_layer_15_1812 ),
    .Q(\u1/iprecieve_inst/myUDP_layer [15])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myUDP_layer_11  (
    .A0(e_txer_OBUF_102),
    .A1(e_txer_OBUF_102),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_3_IBUF_4),
    .Q(\u1/iprecieve_inst/Mshreg_myUDP_layer_11_1813 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_11_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_11  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myUDP_layer_11_1813 ),
    .Q(\u1/iprecieve_inst/myUDP_layer [11])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myUDP_layer_13  (
    .A0(e_txer_OBUF_102),
    .A1(e_txer_OBUF_102),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_5_IBUF_2),
    .Q(\u1/iprecieve_inst/Mshreg_myUDP_layer_13_1814 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_13_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_13  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myUDP_layer_13_1814 ),
    .Q(\u1/iprecieve_inst/myUDP_layer [13])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myUDP_layer_12  (
    .A0(e_txer_OBUF_102),
    .A1(e_txer_OBUF_102),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_4_IBUF_3),
    .Q(\u1/iprecieve_inst/Mshreg_myUDP_layer_12_1815 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_12_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_12  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myUDP_layer_12_1815 ),
    .Q(\u1/iprecieve_inst/myUDP_layer [12])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myUDP_layer_8  (
    .A0(e_txer_OBUF_102),
    .A1(e_txer_OBUF_102),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_0_IBUF_7),
    .Q(\u1/iprecieve_inst/Mshreg_myUDP_layer_8_1816 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_8_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_8  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myUDP_layer_8_1816 ),
    .Q(\u1/iprecieve_inst/myUDP_layer [8])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myUDP_layer_10  (
    .A0(e_txer_OBUF_102),
    .A1(e_txer_OBUF_102),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_2_IBUF_5),
    .Q(\u1/iprecieve_inst/Mshreg_myUDP_layer_10_1817 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_10_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_10  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myUDP_layer_10_1817 ),
    .Q(\u1/iprecieve_inst/myUDP_layer [10])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \u1/iprecieve_inst/Mshreg_myUDP_layer_9  (
    .A0(e_txer_OBUF_102),
    .A1(e_txer_OBUF_102),
    .A2(e_txer_OBUF_102),
    .A3(e_txer_OBUF_102),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .CLK(e_gtxc_OBUF_BUFG_9),
    .D(e_rxd_1_IBUF_6),
    .Q(\u1/iprecieve_inst/Mshreg_myUDP_layer_9_1818 ),
    .Q15(\NLW_u1/iprecieve_inst/Mshreg_myUDP_layer_9_Q15_UNCONNECTED )
  );
  FDE   \u1/iprecieve_inst/myUDP_layer_9  (
    .C(e_gtxc_OBUF_BUFG_9),
    .CE(\u1/iprecieve_inst/_n0598_inv ),
    .D(\u1/iprecieve_inst/Mshreg_myUDP_layer_9_1818 ),
    .Q(\u1/iprecieve_inst/myUDP_layer [9])
  );
  ram   ram_inst_out (
    .clka(e_gtxc_OBUF_BUFG_9),
    .clkb(e_gtxc_OBUF_BUFG_9),
    .wea({\NLW_ram_inst_out_wea<0>_UNCONNECTED }),
    .addra({\NLW_ram_inst_out_addra<8>_UNCONNECTED , \NLW_ram_inst_out_addra<7>_UNCONNECTED , \NLW_ram_inst_out_addra<6>_UNCONNECTED , 
\NLW_ram_inst_out_addra<5>_UNCONNECTED , \NLW_ram_inst_out_addra<4>_UNCONNECTED , \NLW_ram_inst_out_addra<3>_UNCONNECTED , 
\NLW_ram_inst_out_addra<2>_UNCONNECTED , \NLW_ram_inst_out_addra<1>_UNCONNECTED , \NLW_ram_inst_out_addra<0>_UNCONNECTED }),
    .dina({\NLW_ram_inst_out_dina<31>_UNCONNECTED , \NLW_ram_inst_out_dina<30>_UNCONNECTED , \NLW_ram_inst_out_dina<29>_UNCONNECTED , 
\NLW_ram_inst_out_dina<28>_UNCONNECTED , \NLW_ram_inst_out_dina<27>_UNCONNECTED , \NLW_ram_inst_out_dina<26>_UNCONNECTED , 
\NLW_ram_inst_out_dina<25>_UNCONNECTED , \NLW_ram_inst_out_dina<24>_UNCONNECTED , \NLW_ram_inst_out_dina<23>_UNCONNECTED , 
\NLW_ram_inst_out_dina<22>_UNCONNECTED , \NLW_ram_inst_out_dina<21>_UNCONNECTED , \NLW_ram_inst_out_dina<20>_UNCONNECTED , 
\NLW_ram_inst_out_dina<19>_UNCONNECTED , \NLW_ram_inst_out_dina<18>_UNCONNECTED , \NLW_ram_inst_out_dina<17>_UNCONNECTED , 
\NLW_ram_inst_out_dina<16>_UNCONNECTED , \NLW_ram_inst_out_dina<15>_UNCONNECTED , \NLW_ram_inst_out_dina<14>_UNCONNECTED , 
\NLW_ram_inst_out_dina<13>_UNCONNECTED , \NLW_ram_inst_out_dina<12>_UNCONNECTED , \NLW_ram_inst_out_dina<11>_UNCONNECTED , 
\NLW_ram_inst_out_dina<10>_UNCONNECTED , \NLW_ram_inst_out_dina<9>_UNCONNECTED , \NLW_ram_inst_out_dina<8>_UNCONNECTED , 
\NLW_ram_inst_out_dina<7>_UNCONNECTED , \NLW_ram_inst_out_dina<6>_UNCONNECTED , \NLW_ram_inst_out_dina<5>_UNCONNECTED , 
\NLW_ram_inst_out_dina<4>_UNCONNECTED , \NLW_ram_inst_out_dina<3>_UNCONNECTED , \NLW_ram_inst_out_dina<2>_UNCONNECTED , 
\NLW_ram_inst_out_dina<1>_UNCONNECTED , \NLW_ram_inst_out_dina<0>_UNCONNECTED }),
    .addrb({\u1/ipsend_inst/ram_rd_addr [8], \u1/ipsend_inst/ram_rd_addr [7], \u1/ipsend_inst/ram_rd_addr [6], \u1/ipsend_inst/ram_rd_addr [5], 
\u1/ipsend_inst/ram_rd_addr [4], \u1/ipsend_inst/ram_rd_addr [3], \u1/ipsend_inst/ram_rd_addr [2], \u1/ipsend_inst/ram_rd_addr [1], 
\u1/ipsend_inst/ram_rd_addr [0]}),
    .doutb({ram_rd_data[31], ram_rd_data[30], ram_rd_data[29], ram_rd_data[28], ram_rd_data[27], ram_rd_data[26], ram_rd_data[25], ram_rd_data[24], 
ram_rd_data[23], ram_rd_data[22], ram_rd_data[21], ram_rd_data[20], ram_rd_data[19], ram_rd_data[18], ram_rd_data[17], ram_rd_data[16], 
ram_rd_data[15], ram_rd_data[14], ram_rd_data[13], ram_rd_data[12], ram_rd_data[11], ram_rd_data[10], ram_rd_data[9], ram_rd_data[8], ram_rd_data[7], 
ram_rd_data[6], ram_rd_data[5], ram_rd_data[4], ram_rd_data[3], ram_rd_data[2], ram_rd_data[1], ram_rd_data[0]})
  );
  ram   ram_inst_in (
    .clka(e_gtxc_OBUF_BUFG_9),
    .clkb(e_gtxc_OBUF_BUFG_9),
    .wea({wea}),
    .addra({addra[8], addra[7], addra[6], addra[5], addra[4], addra[3], addra[2], addra[1], addra[0]}),
    .dina({dina[31], dina[30], dina[29], dina[28], dina[27], dina[26], dina[25], dina[24], dina[23], dina[22], dina[21], dina[20], dina[19], dina[18]
, dina[17], dina[16], dina[15], dina[14], dina[13], dina[12], dina[11], dina[10], dina[9], dina[8], dina[7], dina[6], dina[5], dina[4], dina[3], 
dina[2], dina[1], dina[0]}),
    .addrb({\NLW_ram_inst_in_addrb<8>_UNCONNECTED , \NLW_ram_inst_in_addrb<7>_UNCONNECTED , \NLW_ram_inst_in_addrb<6>_UNCONNECTED , 
\NLW_ram_inst_in_addrb<5>_UNCONNECTED , \NLW_ram_inst_in_addrb<4>_UNCONNECTED , \NLW_ram_inst_in_addrb<3>_UNCONNECTED , 
\NLW_ram_inst_in_addrb<2>_UNCONNECTED , \NLW_ram_inst_in_addrb<1>_UNCONNECTED , \NLW_ram_inst_in_addrb<0>_UNCONNECTED }),
    .doutb({\NLW_ram_inst_in_doutb<31>_UNCONNECTED , \NLW_ram_inst_in_doutb<30>_UNCONNECTED , \NLW_ram_inst_in_doutb<29>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<28>_UNCONNECTED , \NLW_ram_inst_in_doutb<27>_UNCONNECTED , \NLW_ram_inst_in_doutb<26>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<25>_UNCONNECTED , \NLW_ram_inst_in_doutb<24>_UNCONNECTED , \NLW_ram_inst_in_doutb<23>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<22>_UNCONNECTED , \NLW_ram_inst_in_doutb<21>_UNCONNECTED , \NLW_ram_inst_in_doutb<20>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<19>_UNCONNECTED , \NLW_ram_inst_in_doutb<18>_UNCONNECTED , \NLW_ram_inst_in_doutb<17>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<16>_UNCONNECTED , \NLW_ram_inst_in_doutb<15>_UNCONNECTED , \NLW_ram_inst_in_doutb<14>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<13>_UNCONNECTED , \NLW_ram_inst_in_doutb<12>_UNCONNECTED , \NLW_ram_inst_in_doutb<11>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<10>_UNCONNECTED , \NLW_ram_inst_in_doutb<9>_UNCONNECTED , \NLW_ram_inst_in_doutb<8>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<7>_UNCONNECTED , \NLW_ram_inst_in_doutb<6>_UNCONNECTED , \NLW_ram_inst_in_doutb<5>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<4>_UNCONNECTED , \NLW_ram_inst_in_doutb<3>_UNCONNECTED , \NLW_ram_inst_in_doutb<2>_UNCONNECTED , 
\NLW_ram_inst_in_doutb<1>_UNCONNECTED , \NLW_ram_inst_in_doutb<0>_UNCONNECTED })
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
