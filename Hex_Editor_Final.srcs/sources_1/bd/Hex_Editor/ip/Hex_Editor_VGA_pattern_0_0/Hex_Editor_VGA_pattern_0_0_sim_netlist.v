// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Dec 11 22:33:11 2021
// Host        : DESKTOP-QGPIJ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/PsilosC/Desktop/Hex_Editor_Final/Hex_Editor_Final.srcs/sources_1/bd/Hex_Editor/ip/Hex_Editor_VGA_pattern_0_0/Hex_Editor_VGA_pattern_0_0_sim_netlist.v
// Design      : Hex_Editor_VGA_pattern_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Hex_Editor_VGA_pattern_0_0,VGA_pattern,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "VGA_pattern,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module Hex_Editor_VGA_pattern_0_0
   (iClk,
    iRst,
    iCountH,
    iCountV,
    iHS,
    iVS,
    iDataA,
    iDataB,
    oAddrA,
    oAddrB,
    oHS,
    oVS,
    oRed,
    oGreen,
    oBlue);
  input iClk;
  input iRst;
  input [9:0]iCountH;
  input [9:0]iCountV;
  input iHS;
  input iVS;
  input [11:0]iDataA;
  input [15:0]iDataB;
  output [9:0]oAddrA;
  output [11:0]oAddrB;
  output oHS;
  output oVS;
  output [3:0]oRed;
  output [3:0]oGreen;
  output [3:0]oBlue;

  wire [9:0]iCountH;
  wire [9:0]iCountV;
  wire [11:0]iDataA;
  wire [15:0]iDataB;
  wire [9:2]\^oAddrA ;
  wire [9:6]oAddrA0;
  wire [11:0]oAddrB;
  wire [11:0]oAddrB0;
  wire \oAddrB[11]_INST_0_i_2_n_0 ;
  wire \oAddrB[11]_INST_0_i_3_n_0 ;
  wire \oAddrB[11]_INST_0_i_4_n_0 ;
  wire \oBlue[0]_INST_0_i_1_n_0 ;
  wire \oBlue[0]_INST_0_i_2_n_0 ;
  wire \oBlue[0]_INST_0_i_3_n_0 ;
  wire \oBlue[0]_INST_0_i_4_n_0 ;
  wire \oBlue[0]_INST_0_i_5_n_0 ;
  wire \oBlue[0]_INST_0_i_6_n_0 ;
  wire \oBlue[0]_INST_0_i_7_n_0 ;
  wire oHS;
  wire oHS_INST_0_i_1_n_0;
  wire oHS_INST_0_i_2_n_0;
  wire [3:3]\^oRed ;
  wire oVS;
  wire oVS_INST_0_i_1_n_0;
  wire oVS_INST_0_i_2_n_0;

  assign oAddrA[9:2] = \^oAddrA [9:2];
  assign oAddrA[1:0] = iCountH[5:4];
  assign oBlue[3] = \^oRed [3];
  assign oBlue[2] = \^oRed [3];
  assign oBlue[1] = \^oRed [3];
  assign oBlue[0] = \^oRed [3];
  assign oGreen[3] = \^oRed [3];
  assign oGreen[2] = \^oRed [3];
  assign oGreen[1] = \^oRed [3];
  assign oGreen[0] = \^oRed [3];
  assign oRed[3] = \^oRed [3];
  assign oRed[2] = \^oRed [3];
  assign oRed[1] = \^oRed [3];
  assign oRed[0] = \^oRed [3];
  Hex_Editor_VGA_pattern_0_0_VGA_pattern inst
       (.S(oAddrA0),
        .iCountH(iCountH[9:6]),
        .iCountV(iCountV[7:0]),
        .iDataA(iDataA),
        .oAddrA(\^oAddrA ),
        .oAddrB0(oAddrB0));
  LUT5 #(
    .INIT(32'h26CC24CC)) 
    \oAddrA[6]_INST_0_i_1 
       (.I0(iCountV[7]),
        .I1(iCountV[9]),
        .I2(iCountV[6]),
        .I3(iCountV[8]),
        .I4(iCountV[5]),
        .O(oAddrA0[9]));
  LUT5 #(
    .INIT(32'h013FF800)) 
    \oAddrA[6]_INST_0_i_2 
       (.I0(iCountV[5]),
        .I1(iCountV[6]),
        .I2(iCountV[9]),
        .I3(iCountV[7]),
        .I4(iCountV[8]),
        .O(oAddrA0[8]));
  LUT5 #(
    .INIT(32'hE8173FC0)) 
    \oAddrA[6]_INST_0_i_3 
       (.I0(iCountV[5]),
        .I1(iCountV[8]),
        .I2(iCountV[6]),
        .I3(iCountV[9]),
        .I4(iCountV[7]),
        .O(oAddrA0[7]));
  LUT4 #(
    .INIT(16'h8778)) 
    \oAddrA[6]_INST_0_i_4 
       (.I0(iCountV[5]),
        .I1(iCountV[7]),
        .I2(iCountV[8]),
        .I3(iCountV[6]),
        .O(oAddrA0[6]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[0]_INST_0 
       (.I0(oAddrB0[0]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[0]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[10]_INST_0 
       (.I0(oAddrB0[10]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[10]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[11]_INST_0 
       (.I0(oAddrB0[11]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \oAddrB[11]_INST_0_i_2 
       (.I0(\oAddrB[11]_INST_0_i_4_n_0 ),
        .I1(iCountV[4]),
        .I2(iCountV[2]),
        .I3(iCountV[3]),
        .I4(iCountV[1]),
        .I5(iCountV[0]),
        .O(\oAddrB[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \oAddrB[11]_INST_0_i_3 
       (.I0(iCountH[4]),
        .I1(iCountH[5]),
        .I2(iCountH[6]),
        .I3(iCountH[3]),
        .I4(oHS_INST_0_i_1_n_0),
        .I5(iCountH[7]),
        .O(\oAddrB[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \oAddrB[11]_INST_0_i_4 
       (.I0(iCountV[5]),
        .I1(iCountV[7]),
        .I2(iCountV[8]),
        .I3(iCountV[6]),
        .O(\oAddrB[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[1]_INST_0 
       (.I0(oAddrB0[1]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[1]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[2]_INST_0 
       (.I0(oAddrB0[2]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[2]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[3]_INST_0 
       (.I0(oAddrB0[3]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[3]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[4]_INST_0 
       (.I0(oAddrB0[4]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[4]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[5]_INST_0 
       (.I0(oAddrB0[5]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[5]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[6]_INST_0 
       (.I0(oAddrB0[6]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[6]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[7]_INST_0 
       (.I0(oAddrB0[7]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[7]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[8]_INST_0 
       (.I0(oAddrB0[8]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[8]));
  LUT6 #(
    .INIT(64'h0002020200020002)) 
    \oAddrB[9]_INST_0 
       (.I0(oAddrB0[9]),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(oAddrB[9]));
  LUT6 #(
    .INIT(64'h0001010100010001)) 
    \oBlue[0]_INST_0 
       (.I0(\oBlue[0]_INST_0_i_1_n_0 ),
        .I1(iCountV[9]),
        .I2(\oAddrB[11]_INST_0_i_2_n_0 ),
        .I3(iCountH[9]),
        .I4(iCountH[8]),
        .I5(\oAddrB[11]_INST_0_i_3_n_0 ),
        .O(\^oRed ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oBlue[0]_INST_0_i_1 
       (.I0(\oBlue[0]_INST_0_i_2_n_0 ),
        .I1(\oBlue[0]_INST_0_i_3_n_0 ),
        .I2(\oBlue[0]_INST_0_i_4_n_0 ),
        .I3(\oBlue[0]_INST_0_i_5_n_0 ),
        .I4(\oBlue[0]_INST_0_i_6_n_0 ),
        .I5(\oBlue[0]_INST_0_i_7_n_0 ),
        .O(\oBlue[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h550055FF0F330F33)) 
    \oBlue[0]_INST_0_i_2 
       (.I0(iDataB[0]),
        .I1(iDataB[15]),
        .I2(iDataB[2]),
        .I3(iCountH[0]),
        .I4(iDataB[1]),
        .I5(iCountH[1]),
        .O(\oBlue[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h550055FF0F330F33)) 
    \oBlue[0]_INST_0_i_3 
       (.I0(iDataB[4]),
        .I1(iDataB[3]),
        .I2(iDataB[6]),
        .I3(iCountH[0]),
        .I4(iDataB[5]),
        .I5(iCountH[1]),
        .O(\oBlue[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \oBlue[0]_INST_0_i_4 
       (.I0(iCountH[3]),
        .I1(iCountH[1]),
        .I2(iCountH[0]),
        .I3(iCountH[2]),
        .O(\oBlue[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h550055FF0F330F33)) 
    \oBlue[0]_INST_0_i_5 
       (.I0(iDataB[8]),
        .I1(iDataB[7]),
        .I2(iDataB[10]),
        .I3(iCountH[0]),
        .I4(iDataB[9]),
        .I5(iCountH[1]),
        .O(\oBlue[0]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \oBlue[0]_INST_0_i_6 
       (.I0(iCountH[1]),
        .I1(iCountH[0]),
        .I2(iCountH[2]),
        .O(\oBlue[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h550055FF0F330F33)) 
    \oBlue[0]_INST_0_i_7 
       (.I0(iDataB[12]),
        .I1(iDataB[11]),
        .I2(iDataB[14]),
        .I3(iCountH[0]),
        .I4(iDataB[13]),
        .I5(iCountH[1]),
        .O(\oBlue[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    oHS_INST_0
       (.I0(iCountH[4]),
        .I1(iCountH[5]),
        .I2(iCountH[6]),
        .I3(iCountH[3]),
        .I4(oHS_INST_0_i_1_n_0),
        .I5(oHS_INST_0_i_2_n_0),
        .O(oHS));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    oHS_INST_0_i_1
       (.I0(iCountH[2]),
        .I1(iCountH[0]),
        .I2(iCountH[1]),
        .O(oHS_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF01FFFFFFFFFF)) 
    oHS_INST_0_i_2
       (.I0(iCountH[6]),
        .I1(iCountH[5]),
        .I2(iCountH[4]),
        .I3(iCountH[7]),
        .I4(iCountH[8]),
        .I5(iCountH[9]),
        .O(oHS_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFDFDFF)) 
    oVS_INST_0
       (.I0(iCountV[3]),
        .I1(iCountV[4]),
        .I2(iCountV[9]),
        .I3(iCountV[2]),
        .I4(iCountV[1]),
        .I5(oVS_INST_0_i_1_n_0),
        .O(oVS));
  LUT6 #(
    .INIT(64'hFF7FFF7FFF7F7F7F)) 
    oVS_INST_0_i_1
       (.I0(iCountV[6]),
        .I1(iCountV[8]),
        .I2(oVS_INST_0_i_2_n_0),
        .I3(iCountV[2]),
        .I4(iCountV[1]),
        .I5(iCountV[0]),
        .O(oVS_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oVS_INST_0_i_2
       (.I0(iCountV[7]),
        .I1(iCountV[5]),
        .O(oVS_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "VGA_pattern" *) 
module Hex_Editor_VGA_pattern_0_0_VGA_pattern
   (oAddrA,
    oAddrB0,
    iCountH,
    iCountV,
    S,
    iDataA);
  output [7:0]oAddrA;
  output [11:0]oAddrB0;
  input [3:0]iCountH;
  input [7:0]iCountV;
  input [3:0]S;
  input [11:0]iDataA;

  wire [3:0]S;
  wire [3:0]iCountH;
  wire [7:0]iCountV;
  wire [11:0]iDataA;
  wire [7:0]oAddrA;
  wire \oAddrA[2]_INST_0_i_1_n_0 ;
  wire \oAddrA[2]_INST_0_i_2_n_0 ;
  wire \oAddrA[2]_INST_0_i_3_n_0 ;
  wire \oAddrA[2]_INST_0_n_0 ;
  wire \oAddrA[2]_INST_0_n_1 ;
  wire \oAddrA[2]_INST_0_n_2 ;
  wire \oAddrA[2]_INST_0_n_3 ;
  wire \oAddrA[6]_INST_0_n_1 ;
  wire \oAddrA[6]_INST_0_n_2 ;
  wire \oAddrA[6]_INST_0_n_3 ;
  wire [11:0]oAddrB0;
  wire \oAddrB[11]_INST_0_i_1_n_1 ;
  wire \oAddrB[11]_INST_0_i_1_n_2 ;
  wire \oAddrB[11]_INST_0_i_1_n_3 ;
  wire \oAddrB[3]_INST_0_i_1_n_0 ;
  wire \oAddrB[3]_INST_0_i_1_n_1 ;
  wire \oAddrB[3]_INST_0_i_1_n_2 ;
  wire \oAddrB[3]_INST_0_i_1_n_3 ;
  wire \oAddrB[3]_INST_0_i_2_n_0 ;
  wire \oAddrB[3]_INST_0_i_3_n_0 ;
  wire \oAddrB[3]_INST_0_i_4_n_0 ;
  wire \oAddrB[3]_INST_0_i_5_n_0 ;
  wire \oAddrB[7]_INST_0_i_1_n_0 ;
  wire \oAddrB[7]_INST_0_i_1_n_1 ;
  wire \oAddrB[7]_INST_0_i_1_n_2 ;
  wire \oAddrB[7]_INST_0_i_1_n_3 ;
  wire \oAddrB[7]_INST_0_i_2_n_0 ;
  wire [3:3]\NLW_oAddrA[6]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_oAddrB[11]_INST_0_i_1_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrA[2]_INST_0 
       (.CI(1'b0),
        .CO({\oAddrA[2]_INST_0_n_0 ,\oAddrA[2]_INST_0_n_1 ,\oAddrA[2]_INST_0_n_2 ,\oAddrA[2]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({iCountH[3],iCountV[6:5],1'b0}),
        .O(oAddrA[3:0]),
        .S({\oAddrA[2]_INST_0_i_1_n_0 ,\oAddrA[2]_INST_0_i_2_n_0 ,\oAddrA[2]_INST_0_i_3_n_0 ,iCountH[0]}));
  LUT3 #(
    .INIT(8'h96)) 
    \oAddrA[2]_INST_0_i_1 
       (.I0(iCountV[5]),
        .I1(iCountV[7]),
        .I2(iCountH[3]),
        .O(\oAddrA[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA[2]_INST_0_i_2 
       (.I0(iCountV[6]),
        .I1(iCountH[2]),
        .O(\oAddrA[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA[2]_INST_0_i_3 
       (.I0(iCountV[5]),
        .I1(iCountH[1]),
        .O(\oAddrA[2]_INST_0_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrA[6]_INST_0 
       (.CI(\oAddrA[2]_INST_0_n_0 ),
        .CO({\NLW_oAddrA[6]_INST_0_CO_UNCONNECTED [3],\oAddrA[6]_INST_0_n_1 ,\oAddrA[6]_INST_0_n_2 ,\oAddrA[6]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(oAddrA[7:4]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrB[11]_INST_0_i_1 
       (.CI(\oAddrB[7]_INST_0_i_1_n_0 ),
        .CO({\NLW_oAddrB[11]_INST_0_i_1_CO_UNCONNECTED [3],\oAddrB[11]_INST_0_i_1_n_1 ,\oAddrB[11]_INST_0_i_1_n_2 ,\oAddrB[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(oAddrB0[11:8]),
        .S(iDataA[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrB[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\oAddrB[3]_INST_0_i_1_n_0 ,\oAddrB[3]_INST_0_i_1_n_1 ,\oAddrB[3]_INST_0_i_1_n_2 ,\oAddrB[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(iDataA[3:0]),
        .O(oAddrB0[3:0]),
        .S({\oAddrB[3]_INST_0_i_2_n_0 ,\oAddrB[3]_INST_0_i_3_n_0 ,\oAddrB[3]_INST_0_i_4_n_0 ,\oAddrB[3]_INST_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrB[3]_INST_0_i_2 
       (.I0(iDataA[3]),
        .I1(iCountV[3]),
        .O(\oAddrB[3]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrB[3]_INST_0_i_3 
       (.I0(iDataA[2]),
        .I1(iCountV[2]),
        .O(\oAddrB[3]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrB[3]_INST_0_i_4 
       (.I0(iDataA[1]),
        .I1(iCountV[1]),
        .O(\oAddrB[3]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrB[3]_INST_0_i_5 
       (.I0(iDataA[0]),
        .I1(iCountV[0]),
        .O(\oAddrB[3]_INST_0_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrB[7]_INST_0_i_1 
       (.CI(\oAddrB[3]_INST_0_i_1_n_0 ),
        .CO({\oAddrB[7]_INST_0_i_1_n_0 ,\oAddrB[7]_INST_0_i_1_n_1 ,\oAddrB[7]_INST_0_i_1_n_2 ,\oAddrB[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,iDataA[4]}),
        .O(oAddrB0[7:4]),
        .S({iDataA[7:5],\oAddrB[7]_INST_0_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrB[7]_INST_0_i_2 
       (.I0(iDataA[4]),
        .I1(iCountV[4]),
        .O(\oAddrB[7]_INST_0_i_2_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
