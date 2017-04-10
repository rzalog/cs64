////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: blinky_led_synthesis.v
// /___/   /\     Timestamp: Mon Apr 10 10:54:09 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim blinky_led.ngc blinky_led_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: blinky_led.ngc
// Output file	: C:\Users\152\Desktop\group rsj\lab0\netgen\synthesis\blinky_led_synthesis.v
// # of Modules	: 1
// Design Name	: blinky_led
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
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

module blinky_led (
  clk, rst, led
);
  input clk;
  input rst;
  output led;
  wire clk_BUFGP_0;
  wire rst_IBUF_1;
  wire led_OBUF_30;
  wire N0;
  wire Mcount_a_val;
  wire \a[31]_GND_1_o_equal_4_o<31> ;
  wire \a[31]_GND_1_o_equal_4_o<31>1_88 ;
  wire \a[31]_GND_1_o_equal_4_o<31>2_89 ;
  wire \a[31]_GND_1_o_equal_4_o<31>3_90 ;
  wire \a[31]_GND_1_o_equal_4_o<31>4_91 ;
  wire \Mcount_a_cy<1>_rt_95 ;
  wire \Mcount_a_cy<2>_rt_96 ;
  wire \Mcount_a_cy<3>_rt_97 ;
  wire \Mcount_a_cy<4>_rt_98 ;
  wire \Mcount_a_cy<5>_rt_99 ;
  wire \Mcount_a_cy<6>_rt_100 ;
  wire \Mcount_a_cy<7>_rt_101 ;
  wire \Mcount_a_cy<8>_rt_102 ;
  wire \Mcount_a_cy<9>_rt_103 ;
  wire \Mcount_a_cy<10>_rt_104 ;
  wire \Mcount_a_cy<11>_rt_105 ;
  wire \Mcount_a_cy<12>_rt_106 ;
  wire \Mcount_a_cy<13>_rt_107 ;
  wire \Mcount_a_cy<14>_rt_108 ;
  wire \Mcount_a_cy<15>_rt_109 ;
  wire \Mcount_a_cy<16>_rt_110 ;
  wire \Mcount_a_cy<17>_rt_111 ;
  wire \Mcount_a_cy<18>_rt_112 ;
  wire \Mcount_a_cy<19>_rt_113 ;
  wire \Mcount_a_cy<20>_rt_114 ;
  wire \Mcount_a_cy<21>_rt_115 ;
  wire \Mcount_a_cy<22>_rt_116 ;
  wire \Mcount_a_cy<23>_rt_117 ;
  wire \Mcount_a_cy<24>_rt_118 ;
  wire \Mcount_a_cy<25>_rt_119 ;
  wire \Mcount_a_xor<26>_rt_120 ;
  wire led_rstpot_121;
  wire a_0_rstpot_122;
  wire N5;
  wire N6;
  wire a_1_rstpot_125;
  wire a_2_rstpot_126;
  wire a_3_rstpot_127;
  wire a_4_rstpot_128;
  wire a_5_rstpot_129;
  wire a_6_rstpot_130;
  wire a_7_rstpot_131;
  wire a_8_rstpot_132;
  wire a_9_rstpot_133;
  wire a_10_rstpot_134;
  wire a_11_rstpot_135;
  wire a_12_rstpot_136;
  wire a_13_rstpot_137;
  wire a_14_rstpot_138;
  wire a_15_rstpot_139;
  wire a_16_rstpot_140;
  wire a_17_rstpot_141;
  wire a_18_rstpot_142;
  wire a_19_rstpot_143;
  wire a_20_rstpot_144;
  wire a_21_rstpot_145;
  wire a_22_rstpot_146;
  wire a_23_rstpot_147;
  wire a_24_rstpot_148;
  wire a_25_rstpot_149;
  wire a_26_rstpot_150;
  wire Mcount_a_val321_151;
  wire [27 : 0] a;
  wire [26 : 0] Result;
  wire [0 : 0] Mcount_a_lut;
  wire [25 : 0] Mcount_a_cy;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(a[27])
  );
  MUXCY   \Mcount_a_cy<0>  (
    .CI(a[27]),
    .DI(N0),
    .S(Mcount_a_lut[0]),
    .O(Mcount_a_cy[0])
  );
  XORCY   \Mcount_a_xor<0>  (
    .CI(a[27]),
    .LI(Mcount_a_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_a_cy<1>  (
    .CI(Mcount_a_cy[0]),
    .DI(a[27]),
    .S(\Mcount_a_cy<1>_rt_95 ),
    .O(Mcount_a_cy[1])
  );
  XORCY   \Mcount_a_xor<1>  (
    .CI(Mcount_a_cy[0]),
    .LI(\Mcount_a_cy<1>_rt_95 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_a_cy<2>  (
    .CI(Mcount_a_cy[1]),
    .DI(a[27]),
    .S(\Mcount_a_cy<2>_rt_96 ),
    .O(Mcount_a_cy[2])
  );
  XORCY   \Mcount_a_xor<2>  (
    .CI(Mcount_a_cy[1]),
    .LI(\Mcount_a_cy<2>_rt_96 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_a_cy<3>  (
    .CI(Mcount_a_cy[2]),
    .DI(a[27]),
    .S(\Mcount_a_cy<3>_rt_97 ),
    .O(Mcount_a_cy[3])
  );
  XORCY   \Mcount_a_xor<3>  (
    .CI(Mcount_a_cy[2]),
    .LI(\Mcount_a_cy<3>_rt_97 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_a_cy<4>  (
    .CI(Mcount_a_cy[3]),
    .DI(a[27]),
    .S(\Mcount_a_cy<4>_rt_98 ),
    .O(Mcount_a_cy[4])
  );
  XORCY   \Mcount_a_xor<4>  (
    .CI(Mcount_a_cy[3]),
    .LI(\Mcount_a_cy<4>_rt_98 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_a_cy<5>  (
    .CI(Mcount_a_cy[4]),
    .DI(a[27]),
    .S(\Mcount_a_cy<5>_rt_99 ),
    .O(Mcount_a_cy[5])
  );
  XORCY   \Mcount_a_xor<5>  (
    .CI(Mcount_a_cy[4]),
    .LI(\Mcount_a_cy<5>_rt_99 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_a_cy<6>  (
    .CI(Mcount_a_cy[5]),
    .DI(a[27]),
    .S(\Mcount_a_cy<6>_rt_100 ),
    .O(Mcount_a_cy[6])
  );
  XORCY   \Mcount_a_xor<6>  (
    .CI(Mcount_a_cy[5]),
    .LI(\Mcount_a_cy<6>_rt_100 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_a_cy<7>  (
    .CI(Mcount_a_cy[6]),
    .DI(a[27]),
    .S(\Mcount_a_cy<7>_rt_101 ),
    .O(Mcount_a_cy[7])
  );
  XORCY   \Mcount_a_xor<7>  (
    .CI(Mcount_a_cy[6]),
    .LI(\Mcount_a_cy<7>_rt_101 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_a_cy<8>  (
    .CI(Mcount_a_cy[7]),
    .DI(a[27]),
    .S(\Mcount_a_cy<8>_rt_102 ),
    .O(Mcount_a_cy[8])
  );
  XORCY   \Mcount_a_xor<8>  (
    .CI(Mcount_a_cy[7]),
    .LI(\Mcount_a_cy<8>_rt_102 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_a_cy<9>  (
    .CI(Mcount_a_cy[8]),
    .DI(a[27]),
    .S(\Mcount_a_cy<9>_rt_103 ),
    .O(Mcount_a_cy[9])
  );
  XORCY   \Mcount_a_xor<9>  (
    .CI(Mcount_a_cy[8]),
    .LI(\Mcount_a_cy<9>_rt_103 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_a_cy<10>  (
    .CI(Mcount_a_cy[9]),
    .DI(a[27]),
    .S(\Mcount_a_cy<10>_rt_104 ),
    .O(Mcount_a_cy[10])
  );
  XORCY   \Mcount_a_xor<10>  (
    .CI(Mcount_a_cy[9]),
    .LI(\Mcount_a_cy<10>_rt_104 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_a_cy<11>  (
    .CI(Mcount_a_cy[10]),
    .DI(a[27]),
    .S(\Mcount_a_cy<11>_rt_105 ),
    .O(Mcount_a_cy[11])
  );
  XORCY   \Mcount_a_xor<11>  (
    .CI(Mcount_a_cy[10]),
    .LI(\Mcount_a_cy<11>_rt_105 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_a_cy<12>  (
    .CI(Mcount_a_cy[11]),
    .DI(a[27]),
    .S(\Mcount_a_cy<12>_rt_106 ),
    .O(Mcount_a_cy[12])
  );
  XORCY   \Mcount_a_xor<12>  (
    .CI(Mcount_a_cy[11]),
    .LI(\Mcount_a_cy<12>_rt_106 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_a_cy<13>  (
    .CI(Mcount_a_cy[12]),
    .DI(a[27]),
    .S(\Mcount_a_cy<13>_rt_107 ),
    .O(Mcount_a_cy[13])
  );
  XORCY   \Mcount_a_xor<13>  (
    .CI(Mcount_a_cy[12]),
    .LI(\Mcount_a_cy<13>_rt_107 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_a_cy<14>  (
    .CI(Mcount_a_cy[13]),
    .DI(a[27]),
    .S(\Mcount_a_cy<14>_rt_108 ),
    .O(Mcount_a_cy[14])
  );
  XORCY   \Mcount_a_xor<14>  (
    .CI(Mcount_a_cy[13]),
    .LI(\Mcount_a_cy<14>_rt_108 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_a_cy<15>  (
    .CI(Mcount_a_cy[14]),
    .DI(a[27]),
    .S(\Mcount_a_cy<15>_rt_109 ),
    .O(Mcount_a_cy[15])
  );
  XORCY   \Mcount_a_xor<15>  (
    .CI(Mcount_a_cy[14]),
    .LI(\Mcount_a_cy<15>_rt_109 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_a_cy<16>  (
    .CI(Mcount_a_cy[15]),
    .DI(a[27]),
    .S(\Mcount_a_cy<16>_rt_110 ),
    .O(Mcount_a_cy[16])
  );
  XORCY   \Mcount_a_xor<16>  (
    .CI(Mcount_a_cy[15]),
    .LI(\Mcount_a_cy<16>_rt_110 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_a_cy<17>  (
    .CI(Mcount_a_cy[16]),
    .DI(a[27]),
    .S(\Mcount_a_cy<17>_rt_111 ),
    .O(Mcount_a_cy[17])
  );
  XORCY   \Mcount_a_xor<17>  (
    .CI(Mcount_a_cy[16]),
    .LI(\Mcount_a_cy<17>_rt_111 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_a_cy<18>  (
    .CI(Mcount_a_cy[17]),
    .DI(a[27]),
    .S(\Mcount_a_cy<18>_rt_112 ),
    .O(Mcount_a_cy[18])
  );
  XORCY   \Mcount_a_xor<18>  (
    .CI(Mcount_a_cy[17]),
    .LI(\Mcount_a_cy<18>_rt_112 ),
    .O(Result[18])
  );
  MUXCY   \Mcount_a_cy<19>  (
    .CI(Mcount_a_cy[18]),
    .DI(a[27]),
    .S(\Mcount_a_cy<19>_rt_113 ),
    .O(Mcount_a_cy[19])
  );
  XORCY   \Mcount_a_xor<19>  (
    .CI(Mcount_a_cy[18]),
    .LI(\Mcount_a_cy<19>_rt_113 ),
    .O(Result[19])
  );
  MUXCY   \Mcount_a_cy<20>  (
    .CI(Mcount_a_cy[19]),
    .DI(a[27]),
    .S(\Mcount_a_cy<20>_rt_114 ),
    .O(Mcount_a_cy[20])
  );
  XORCY   \Mcount_a_xor<20>  (
    .CI(Mcount_a_cy[19]),
    .LI(\Mcount_a_cy<20>_rt_114 ),
    .O(Result[20])
  );
  MUXCY   \Mcount_a_cy<21>  (
    .CI(Mcount_a_cy[20]),
    .DI(a[27]),
    .S(\Mcount_a_cy<21>_rt_115 ),
    .O(Mcount_a_cy[21])
  );
  XORCY   \Mcount_a_xor<21>  (
    .CI(Mcount_a_cy[20]),
    .LI(\Mcount_a_cy<21>_rt_115 ),
    .O(Result[21])
  );
  MUXCY   \Mcount_a_cy<22>  (
    .CI(Mcount_a_cy[21]),
    .DI(a[27]),
    .S(\Mcount_a_cy<22>_rt_116 ),
    .O(Mcount_a_cy[22])
  );
  XORCY   \Mcount_a_xor<22>  (
    .CI(Mcount_a_cy[21]),
    .LI(\Mcount_a_cy<22>_rt_116 ),
    .O(Result[22])
  );
  MUXCY   \Mcount_a_cy<23>  (
    .CI(Mcount_a_cy[22]),
    .DI(a[27]),
    .S(\Mcount_a_cy<23>_rt_117 ),
    .O(Mcount_a_cy[23])
  );
  XORCY   \Mcount_a_xor<23>  (
    .CI(Mcount_a_cy[22]),
    .LI(\Mcount_a_cy<23>_rt_117 ),
    .O(Result[23])
  );
  MUXCY   \Mcount_a_cy<24>  (
    .CI(Mcount_a_cy[23]),
    .DI(a[27]),
    .S(\Mcount_a_cy<24>_rt_118 ),
    .O(Mcount_a_cy[24])
  );
  XORCY   \Mcount_a_xor<24>  (
    .CI(Mcount_a_cy[23]),
    .LI(\Mcount_a_cy<24>_rt_118 ),
    .O(Result[24])
  );
  MUXCY   \Mcount_a_cy<25>  (
    .CI(Mcount_a_cy[24]),
    .DI(a[27]),
    .S(\Mcount_a_cy<25>_rt_119 ),
    .O(Mcount_a_cy[25])
  );
  XORCY   \Mcount_a_xor<25>  (
    .CI(Mcount_a_cy[24]),
    .LI(\Mcount_a_cy<25>_rt_119 ),
    .O(Result[25])
  );
  XORCY   \Mcount_a_xor<26>  (
    .CI(Mcount_a_cy[25]),
    .LI(\Mcount_a_xor<26>_rt_120 ),
    .O(Result[26])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \a[31]_GND_1_o_equal_4_o<31>1  (
    .I0(a[21]),
    .I1(a[20]),
    .I2(a[23]),
    .I3(a[22]),
    .I4(a[26]),
    .I5(a[24]),
    .O(\a[31]_GND_1_o_equal_4_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \a[31]_GND_1_o_equal_4_o<31>2  (
    .I0(a[13]),
    .I1(a[8]),
    .I2(a[15]),
    .I3(a[14]),
    .I4(a[18]),
    .I5(a[16]),
    .O(\a[31]_GND_1_o_equal_4_o<31>1_88 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \a[31]_GND_1_o_equal_4_o<31>3  (
    .I0(a[1]),
    .I1(a[0]),
    .I2(a[2]),
    .I3(a[3]),
    .I4(a[4]),
    .I5(a[5]),
    .O(\a[31]_GND_1_o_equal_4_o<31>2_89 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \a[31]_GND_1_o_equal_4_o<31>4  (
    .I0(a[7]),
    .I1(a[6]),
    .I2(a[9]),
    .I3(a[10]),
    .I4(a[11]),
    .I5(a[12]),
    .O(\a[31]_GND_1_o_equal_4_o<31>3_90 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \a[31]_GND_1_o_equal_4_o<31>5  (
    .I0(a[19]),
    .I1(a[17]),
    .I2(a[25]),
    .O(\a[31]_GND_1_o_equal_4_o<31>4_91 )
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_1)
  );
  OBUF   led_OBUF (
    .I(led_OBUF_30),
    .O(led)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<1>_rt  (
    .I0(a[1]),
    .O(\Mcount_a_cy<1>_rt_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<2>_rt  (
    .I0(a[2]),
    .O(\Mcount_a_cy<2>_rt_96 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<3>_rt  (
    .I0(a[3]),
    .O(\Mcount_a_cy<3>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<4>_rt  (
    .I0(a[4]),
    .O(\Mcount_a_cy<4>_rt_98 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<5>_rt  (
    .I0(a[5]),
    .O(\Mcount_a_cy<5>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<6>_rt  (
    .I0(a[6]),
    .O(\Mcount_a_cy<6>_rt_100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<7>_rt  (
    .I0(a[7]),
    .O(\Mcount_a_cy<7>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<8>_rt  (
    .I0(a[8]),
    .O(\Mcount_a_cy<8>_rt_102 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<9>_rt  (
    .I0(a[9]),
    .O(\Mcount_a_cy<9>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<10>_rt  (
    .I0(a[10]),
    .O(\Mcount_a_cy<10>_rt_104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<11>_rt  (
    .I0(a[11]),
    .O(\Mcount_a_cy<11>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<12>_rt  (
    .I0(a[12]),
    .O(\Mcount_a_cy<12>_rt_106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<13>_rt  (
    .I0(a[13]),
    .O(\Mcount_a_cy<13>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<14>_rt  (
    .I0(a[14]),
    .O(\Mcount_a_cy<14>_rt_108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<15>_rt  (
    .I0(a[15]),
    .O(\Mcount_a_cy<15>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<16>_rt  (
    .I0(a[16]),
    .O(\Mcount_a_cy<16>_rt_110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<17>_rt  (
    .I0(a[17]),
    .O(\Mcount_a_cy<17>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<18>_rt  (
    .I0(a[18]),
    .O(\Mcount_a_cy<18>_rt_112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<19>_rt  (
    .I0(a[19]),
    .O(\Mcount_a_cy<19>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<20>_rt  (
    .I0(a[20]),
    .O(\Mcount_a_cy<20>_rt_114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<21>_rt  (
    .I0(a[21]),
    .O(\Mcount_a_cy<21>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<22>_rt  (
    .I0(a[22]),
    .O(\Mcount_a_cy<22>_rt_116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<23>_rt  (
    .I0(a[23]),
    .O(\Mcount_a_cy<23>_rt_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<24>_rt  (
    .I0(a[24]),
    .O(\Mcount_a_cy<24>_rt_118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_cy<25>_rt  (
    .I0(a[25]),
    .O(\Mcount_a_cy<25>_rt_119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_a_xor<26>_rt  (
    .I0(a[26]),
    .O(\Mcount_a_xor<26>_rt_120 )
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAAAAAAAAAA ))
  Mcount_a_val321 (
    .I0(rst_IBUF_1),
    .I1(\a[31]_GND_1_o_equal_4_o<31>4_91 ),
    .I2(\a[31]_GND_1_o_equal_4_o<31>3_90 ),
    .I3(\a[31]_GND_1_o_equal_4_o<31>2_89 ),
    .I4(\a[31]_GND_1_o_equal_4_o<31>1_88 ),
    .I5(\a[31]_GND_1_o_equal_4_o<31> ),
    .O(Mcount_a_val)
  );
  FD   led_90 (
    .C(clk_BUFGP_0),
    .D(led_rstpot_121),
    .Q(led_OBUF_30)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_0_rstpot (
    .I0(Result[0]),
    .I1(Mcount_a_val),
    .O(a_0_rstpot_122)
  );
  FD   a_0 (
    .C(clk_BUFGP_0),
    .D(a_0_rstpot_122),
    .Q(a[0])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  led_rstpot_SW1 (
    .I0(rst_IBUF_1),
    .I1(led_OBUF_30),
    .O(N5)
  );
  LUT5 #(
    .INIT ( 32'hFFFE5556 ))
  led_rstpot_SW2 (
    .I0(led_OBUF_30),
    .I1(a[25]),
    .I2(a[19]),
    .I3(a[17]),
    .I4(rst_IBUF_1),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h15555555D5555555 ))
  led_rstpot (
    .I0(N5),
    .I1(\a[31]_GND_1_o_equal_4_o<31>2_89 ),
    .I2(\a[31]_GND_1_o_equal_4_o<31>1_88 ),
    .I3(\a[31]_GND_1_o_equal_4_o<31> ),
    .I4(\a[31]_GND_1_o_equal_4_o<31>3_90 ),
    .I5(N6),
    .O(led_rstpot_121)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_1_rstpot (
    .I0(Result[1]),
    .I1(Mcount_a_val),
    .O(a_1_rstpot_125)
  );
  FD   a_1 (
    .C(clk_BUFGP_0),
    .D(a_1_rstpot_125),
    .Q(a[1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_2_rstpot (
    .I0(Result[2]),
    .I1(Mcount_a_val),
    .O(a_2_rstpot_126)
  );
  FD   a_2 (
    .C(clk_BUFGP_0),
    .D(a_2_rstpot_126),
    .Q(a[2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_3_rstpot (
    .I0(Result[3]),
    .I1(Mcount_a_val),
    .O(a_3_rstpot_127)
  );
  FD   a_3 (
    .C(clk_BUFGP_0),
    .D(a_3_rstpot_127),
    .Q(a[3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_4_rstpot (
    .I0(Result[4]),
    .I1(Mcount_a_val),
    .O(a_4_rstpot_128)
  );
  FD   a_4 (
    .C(clk_BUFGP_0),
    .D(a_4_rstpot_128),
    .Q(a[4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_5_rstpot (
    .I0(Result[5]),
    .I1(Mcount_a_val),
    .O(a_5_rstpot_129)
  );
  FD   a_5 (
    .C(clk_BUFGP_0),
    .D(a_5_rstpot_129),
    .Q(a[5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_6_rstpot (
    .I0(Result[6]),
    .I1(Mcount_a_val),
    .O(a_6_rstpot_130)
  );
  FD   a_6 (
    .C(clk_BUFGP_0),
    .D(a_6_rstpot_130),
    .Q(a[6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_7_rstpot (
    .I0(Result[7]),
    .I1(Mcount_a_val),
    .O(a_7_rstpot_131)
  );
  FD   a_7 (
    .C(clk_BUFGP_0),
    .D(a_7_rstpot_131),
    .Q(a[7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_8_rstpot (
    .I0(Result[8]),
    .I1(Mcount_a_val),
    .O(a_8_rstpot_132)
  );
  FD   a_8 (
    .C(clk_BUFGP_0),
    .D(a_8_rstpot_132),
    .Q(a[8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_9_rstpot (
    .I0(Result[9]),
    .I1(Mcount_a_val),
    .O(a_9_rstpot_133)
  );
  FD   a_9 (
    .C(clk_BUFGP_0),
    .D(a_9_rstpot_133),
    .Q(a[9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_10_rstpot (
    .I0(Result[10]),
    .I1(Mcount_a_val),
    .O(a_10_rstpot_134)
  );
  FD   a_10 (
    .C(clk_BUFGP_0),
    .D(a_10_rstpot_134),
    .Q(a[10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_11_rstpot (
    .I0(Result[11]),
    .I1(Mcount_a_val),
    .O(a_11_rstpot_135)
  );
  FD   a_11 (
    .C(clk_BUFGP_0),
    .D(a_11_rstpot_135),
    .Q(a[11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_12_rstpot (
    .I0(Result[12]),
    .I1(Mcount_a_val),
    .O(a_12_rstpot_136)
  );
  FD   a_12 (
    .C(clk_BUFGP_0),
    .D(a_12_rstpot_136),
    .Q(a[12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_13_rstpot (
    .I0(Result[13]),
    .I1(Mcount_a_val),
    .O(a_13_rstpot_137)
  );
  FD   a_13 (
    .C(clk_BUFGP_0),
    .D(a_13_rstpot_137),
    .Q(a[13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_14_rstpot (
    .I0(Result[14]),
    .I1(Mcount_a_val321_151),
    .O(a_14_rstpot_138)
  );
  FD   a_14 (
    .C(clk_BUFGP_0),
    .D(a_14_rstpot_138),
    .Q(a[14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_15_rstpot (
    .I0(Result[15]),
    .I1(Mcount_a_val321_151),
    .O(a_15_rstpot_139)
  );
  FD   a_15 (
    .C(clk_BUFGP_0),
    .D(a_15_rstpot_139),
    .Q(a[15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_16_rstpot (
    .I0(Result[16]),
    .I1(Mcount_a_val321_151),
    .O(a_16_rstpot_140)
  );
  FD   a_16 (
    .C(clk_BUFGP_0),
    .D(a_16_rstpot_140),
    .Q(a[16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_17_rstpot (
    .I0(Result[17]),
    .I1(Mcount_a_val321_151),
    .O(a_17_rstpot_141)
  );
  FD   a_17 (
    .C(clk_BUFGP_0),
    .D(a_17_rstpot_141),
    .Q(a[17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_18_rstpot (
    .I0(Result[18]),
    .I1(Mcount_a_val321_151),
    .O(a_18_rstpot_142)
  );
  FD   a_18 (
    .C(clk_BUFGP_0),
    .D(a_18_rstpot_142),
    .Q(a[18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_19_rstpot (
    .I0(Result[19]),
    .I1(Mcount_a_val321_151),
    .O(a_19_rstpot_143)
  );
  FD   a_19 (
    .C(clk_BUFGP_0),
    .D(a_19_rstpot_143),
    .Q(a[19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_20_rstpot (
    .I0(Result[20]),
    .I1(Mcount_a_val321_151),
    .O(a_20_rstpot_144)
  );
  FD   a_20 (
    .C(clk_BUFGP_0),
    .D(a_20_rstpot_144),
    .Q(a[20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_21_rstpot (
    .I0(Result[21]),
    .I1(Mcount_a_val321_151),
    .O(a_21_rstpot_145)
  );
  FD   a_21 (
    .C(clk_BUFGP_0),
    .D(a_21_rstpot_145),
    .Q(a[21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_22_rstpot (
    .I0(Result[22]),
    .I1(Mcount_a_val321_151),
    .O(a_22_rstpot_146)
  );
  FD   a_22 (
    .C(clk_BUFGP_0),
    .D(a_22_rstpot_146),
    .Q(a[22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_23_rstpot (
    .I0(Result[23]),
    .I1(Mcount_a_val321_151),
    .O(a_23_rstpot_147)
  );
  FD   a_23 (
    .C(clk_BUFGP_0),
    .D(a_23_rstpot_147),
    .Q(a[23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_24_rstpot (
    .I0(Result[24]),
    .I1(Mcount_a_val321_151),
    .O(a_24_rstpot_148)
  );
  FD   a_24 (
    .C(clk_BUFGP_0),
    .D(a_24_rstpot_148),
    .Q(a[24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_25_rstpot (
    .I0(Result[25]),
    .I1(Mcount_a_val321_151),
    .O(a_25_rstpot_149)
  );
  FD   a_25 (
    .C(clk_BUFGP_0),
    .D(a_25_rstpot_149),
    .Q(a[25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  a_26_rstpot (
    .I0(Result[26]),
    .I1(Mcount_a_val321_151),
    .O(a_26_rstpot_150)
  );
  FD   a_26 (
    .C(clk_BUFGP_0),
    .D(a_26_rstpot_150),
    .Q(a[26])
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAAAAAAAAAA ))
  Mcount_a_val321_1 (
    .I0(rst_IBUF_1),
    .I1(\a[31]_GND_1_o_equal_4_o<31>4_91 ),
    .I2(\a[31]_GND_1_o_equal_4_o<31>3_90 ),
    .I3(\a[31]_GND_1_o_equal_4_o<31>2_89 ),
    .I4(\a[31]_GND_1_o_equal_4_o<31>1_88 ),
    .I5(\a[31]_GND_1_o_equal_4_o<31> ),
    .O(Mcount_a_val321_151)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \Mcount_a_lut<0>_INV_0  (
    .I(a[0]),
    .O(Mcount_a_lut[0])
  );
endmodule


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

