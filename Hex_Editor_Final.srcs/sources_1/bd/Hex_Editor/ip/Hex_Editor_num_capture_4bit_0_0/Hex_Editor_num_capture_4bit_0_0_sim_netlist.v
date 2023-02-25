// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Dec 16 22:09:32 2021
// Host        : DESKTOP-QGPIJ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/PsilosC/Desktop/Hex_Editor_Final/Hex_Editor_Final.srcs/sources_1/bd/Hex_Editor/ip/Hex_Editor_num_capture_4bit_0_0/Hex_Editor_num_capture_4bit_0_0_sim_netlist.v
// Design      : Hex_Editor_num_capture_4bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Hex_Editor_num_capture_4bit_0_0,num_capture_4bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "num_capture_4bit,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module Hex_Editor_num_capture_4bit_0_0
   (iClk,
    iRst,
    iPush,
    iStop,
    iSpace,
    oAddr,
    oData,
    oWe,
    oLEDs);
  input iClk;
  input iRst;
  input iPush;
  input iStop;
  input iSpace;
  output [9:0]oAddr;
  output [11:0]oData;
  output oWe;
  output [3:0]oLEDs;

  wire \<const0> ;
  wire iClk;
  wire iPush;
  wire iRst;
  wire iSpace;
  wire iStop;
  wire [9:0]oAddr;
  wire [11:4]\^oData ;
  wire [3:0]oLEDs;
  wire oWe;

  assign oData[11:4] = \^oData [11:4];
  assign oData[3] = \<const0> ;
  assign oData[2] = \<const0> ;
  assign oData[1] = \<const0> ;
  assign oData[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Hex_Editor_num_capture_4bit_0_0_num_capture_4bit inst
       (.iClk(iClk),
        .iPush(iPush),
        .iRst(iRst),
        .iSpace(iSpace),
        .iStop(iStop),
        .oAddr(oAddr),
        .oData(\^oData ),
        .oLEDs(oLEDs),
        .oWe(oWe));
endmodule

(* ORIG_REF_NAME = "num_capture_4bit" *) 
module Hex_Editor_num_capture_4bit_0_0_num_capture_4bit
   (oData,
    oAddr,
    oWe,
    oLEDs,
    iPush,
    iStop,
    iRst,
    iClk,
    iSpace);
  output [7:0]oData;
  output [9:0]oAddr;
  output oWe;
  output [3:0]oLEDs;
  input iPush;
  input iStop;
  input iRst;
  input iClk;
  input iSpace;

  wire \FSM_sequential_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_sequential_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_sequential_rFSM_Current[2]_i_1_n_0 ;
  wire [11:4]data0;
  wire iClk;
  wire iPush;
  wire iRst;
  wire iSpace;
  wire iStop;
  wire [9:0]oAddr;
  wire [7:0]oData;
  wire [3:0]oLEDs;
  wire oWe;
  wire [9:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire \rAddr[9]_i_3_n_0 ;
  wire \rCntCurr[10]_i_2_n_0 ;
  wire \rCntCurr[11]_i_1_n_0 ;
  wire \rCntCurr[11]_i_2_n_0 ;
  wire \rCntCurr[11]_i_4_n_0 ;
  wire \rCntCurr[11]_i_6_n_0 ;
  wire \rCntCurr[7]_i_3_n_0 ;
  wire \rCntCurr[9]_i_1_n_0 ;
  wire \rCntCurr_reg[11]_i_5_n_1 ;
  wire \rCntCurr_reg[11]_i_5_n_2 ;
  wire \rCntCurr_reg[11]_i_5_n_3 ;
  wire \rCntCurr_reg[7]_i_2_n_0 ;
  wire \rCntCurr_reg[7]_i_2_n_1 ;
  wire \rCntCurr_reg[7]_i_2_n_2 ;
  wire \rCntCurr_reg[7]_i_2_n_3 ;
  wire [2:0]rFSM_Current;
  wire \rLED[3]_i_1_n_0 ;
  wire wAddr;
  wire [11:4]wCntNext;
  wire [2:1]wFSM_Next;
  wire [3:3]\NLW_rCntCurr_reg[11]_i_5_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFFFF557)) 
    \FSM_sequential_rFSM_Current[0]_i_1 
       (.I0(rFSM_Current[0]),
        .I1(iPush),
        .I2(rFSM_Current[2]),
        .I3(iStop),
        .I4(rFSM_Current[1]),
        .I5(iRst),
        .O(\FSM_sequential_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rFSM_Current[1]_i_1 
       (.I0(wFSM_Next[1]),
        .I1(iRst),
        .O(\FSM_sequential_rFSM_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h515140CC515140C8)) 
    \FSM_sequential_rFSM_Current[1]_i_2 
       (.I0(rFSM_Current[2]),
        .I1(rFSM_Current[0]),
        .I2(iPush),
        .I3(iStop),
        .I4(rFSM_Current[1]),
        .I5(iSpace),
        .O(wFSM_Next[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rFSM_Current[2]_i_1 
       (.I0(wFSM_Next[2]),
        .I1(iRst),
        .O(\FSM_sequential_rFSM_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF000000E0)) 
    \FSM_sequential_rFSM_Current[2]_i_2 
       (.I0(iSpace),
        .I1(iStop),
        .I2(rFSM_Current[0]),
        .I3(iPush),
        .I4(rFSM_Current[1]),
        .I5(rFSM_Current[2]),
        .O(wFSM_Next[2]));
  (* FSM_ENCODED_STATES = "sInit:000,sIncr:010,sStop:100,sSpace:111,sRNumberToZero:110,sPushStop:101,sIdle:001,sPush:011" *) 
  FDRE \FSM_sequential_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_sequential_rFSM_Current[0]_i_1_n_0 ),
        .Q(rFSM_Current[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sInit:000,sIncr:010,sStop:100,sSpace:111,sRNumberToZero:110,sPushStop:101,sIdle:001,sPush:011" *) 
  FDRE \FSM_sequential_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_sequential_rFSM_Current[1]_i_1_n_0 ),
        .Q(rFSM_Current[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sInit:000,sIncr:010,sStop:100,sSpace:111,sRNumberToZero:110,sPushStop:101,sIdle:001,sPush:011" *) 
  FDRE \FSM_sequential_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_sequential_rFSM_Current[2]_i_1_n_0 ),
        .Q(rFSM_Current[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    oWe_INST_0
       (.I0(rFSM_Current[1]),
        .I1(rFSM_Current[0]),
        .I2(rFSM_Current[2]),
        .O(oWe));
  LUT1 #(
    .INIT(2'h1)) 
    \rAddr[0]_i_1 
       (.I0(oAddr[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rAddr[1]_i_1 
       (.I0(oAddr[0]),
        .I1(oAddr[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rAddr[2]_i_1 
       (.I0(oAddr[1]),
        .I1(oAddr[0]),
        .I2(oAddr[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rAddr[3]_i_1 
       (.I0(oAddr[2]),
        .I1(oAddr[0]),
        .I2(oAddr[1]),
        .I3(oAddr[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rAddr[4]_i_1 
       (.I0(oAddr[3]),
        .I1(oAddr[1]),
        .I2(oAddr[0]),
        .I3(oAddr[2]),
        .I4(oAddr[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rAddr[5]_i_1 
       (.I0(oAddr[4]),
        .I1(oAddr[2]),
        .I2(oAddr[0]),
        .I3(oAddr[1]),
        .I4(oAddr[3]),
        .I5(oAddr[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rAddr[6]_i_1 
       (.I0(\rAddr[9]_i_3_n_0 ),
        .I1(oAddr[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rAddr[7]_i_1 
       (.I0(oAddr[6]),
        .I1(\rAddr[9]_i_3_n_0 ),
        .I2(oAddr[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rAddr[8]_i_1 
       (.I0(\rAddr[9]_i_3_n_0 ),
        .I1(oAddr[6]),
        .I2(oAddr[7]),
        .I3(oAddr[8]),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'h01)) 
    \rAddr[9]_i_1 
       (.I0(rFSM_Current[1]),
        .I1(rFSM_Current[0]),
        .I2(rFSM_Current[2]),
        .O(wAddr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rAddr[9]_i_2 
       (.I0(\rAddr[9]_i_3_n_0 ),
        .I1(oAddr[8]),
        .I2(oAddr[7]),
        .I3(oAddr[6]),
        .I4(oAddr[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rAddr[9]_i_3 
       (.I0(oAddr[4]),
        .I1(oAddr[2]),
        .I2(oAddr[0]),
        .I3(oAddr[1]),
        .I4(oAddr[3]),
        .I5(oAddr[5]),
        .O(\rAddr[9]_i_3_n_0 ));
  FDRE \rAddr_reg[0] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[0]),
        .Q(oAddr[0]),
        .R(wAddr));
  FDRE \rAddr_reg[1] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[1]),
        .Q(oAddr[1]),
        .R(wAddr));
  FDRE \rAddr_reg[2] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[2]),
        .Q(oAddr[2]),
        .R(wAddr));
  FDRE \rAddr_reg[3] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[3]),
        .Q(oAddr[3]),
        .R(wAddr));
  FDRE \rAddr_reg[4] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[4]),
        .Q(oAddr[4]),
        .R(wAddr));
  FDRE \rAddr_reg[5] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[5]),
        .Q(oAddr[5]),
        .R(wAddr));
  FDRE \rAddr_reg[6] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[6]),
        .Q(oAddr[6]),
        .R(wAddr));
  FDRE \rAddr_reg[7] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[7]),
        .Q(oAddr[7]),
        .R(wAddr));
  FDRE \rAddr_reg[8] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[8]),
        .Q(oAddr[8]),
        .R(wAddr));
  FDRE \rAddr_reg[9] 
       (.C(iClk),
        .CE(oWe),
        .D(p_0_in[9]),
        .Q(oAddr[9]),
        .R(wAddr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rCntCurr[10]_i_1 
       (.I0(data0[10]),
        .I1(\rCntCurr[11]_i_4_n_0 ),
        .I2(\rCntCurr[10]_i_2_n_0 ),
        .O(wCntNext[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \rCntCurr[10]_i_2 
       (.I0(oData[5]),
        .I1(oData[6]),
        .I2(oData[4]),
        .I3(oData[3]),
        .I4(oData[2]),
        .I5(oData[1]),
        .O(\rCntCurr[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA1)) 
    \rCntCurr[11]_i_1 
       (.I0(rFSM_Current[2]),
        .I1(rFSM_Current[0]),
        .I2(rFSM_Current[1]),
        .O(\rCntCurr[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rCntCurr[11]_i_2 
       (.I0(rFSM_Current[1]),
        .I1(rFSM_Current[0]),
        .O(\rCntCurr[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rCntCurr[11]_i_3 
       (.I0(\rCntCurr[11]_i_4_n_0 ),
        .I1(data0[11]),
        .O(wCntNext[11]));
  LUT5 #(
    .INIT(32'hFFFFFFEB)) 
    \rCntCurr[11]_i_4 
       (.I0(\rCntCurr[11]_i_6_n_0 ),
        .I1(oData[3]),
        .I2(oData[4]),
        .I3(oData[0]),
        .I4(oData[7]),
        .O(\rCntCurr[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBEFFFFFFFFFF7DF)) 
    \rCntCurr[11]_i_6 
       (.I0(oData[6]),
        .I1(oData[3]),
        .I2(oData[1]),
        .I3(oData[2]),
        .I4(oData[4]),
        .I5(oData[5]),
        .O(\rCntCurr[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rCntCurr[4]_i_1 
       (.I0(\rCntCurr[11]_i_4_n_0 ),
        .I1(data0[4]),
        .O(wCntNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rCntCurr[5]_i_1 
       (.I0(data0[5]),
        .I1(\rCntCurr[11]_i_4_n_0 ),
        .I2(\rCntCurr[10]_i_2_n_0 ),
        .O(wCntNext[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rCntCurr[6]_i_1 
       (.I0(\rCntCurr[11]_i_4_n_0 ),
        .I1(data0[6]),
        .O(wCntNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rCntCurr[7]_i_1 
       (.I0(\rCntCurr[11]_i_4_n_0 ),
        .I1(data0[7]),
        .O(wCntNext[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \rCntCurr[7]_i_3 
       (.I0(oData[1]),
        .O(\rCntCurr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rCntCurr[8]_i_1 
       (.I0(\rCntCurr[11]_i_4_n_0 ),
        .I1(data0[8]),
        .O(wCntNext[8]));
  LUT5 #(
    .INIT(32'hEEAF22A3)) 
    \rCntCurr[9]_i_1 
       (.I0(oData[5]),
        .I1(rFSM_Current[1]),
        .I2(rFSM_Current[0]),
        .I3(rFSM_Current[2]),
        .I4(wCntNext[9]),
        .O(\rCntCurr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFFFFD1FF)) 
    \rCntCurr[9]_i_2 
       (.I0(\rCntCurr[10]_i_2_n_0 ),
        .I1(\rCntCurr[11]_i_4_n_0 ),
        .I2(data0[9]),
        .I3(rFSM_Current[1]),
        .I4(rFSM_Current[0]),
        .I5(rFSM_Current[2]),
        .O(wCntNext[9]));
  FDRE \rCntCurr_reg[10] 
       (.C(iClk),
        .CE(\rCntCurr[11]_i_2_n_0 ),
        .D(wCntNext[10]),
        .Q(oData[6]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  FDRE \rCntCurr_reg[11] 
       (.C(iClk),
        .CE(\rCntCurr[11]_i_2_n_0 ),
        .D(wCntNext[11]),
        .Q(oData[7]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rCntCurr_reg[11]_i_5 
       (.CI(\rCntCurr_reg[7]_i_2_n_0 ),
        .CO({\NLW_rCntCurr_reg[11]_i_5_CO_UNCONNECTED [3],\rCntCurr_reg[11]_i_5_n_1 ,\rCntCurr_reg[11]_i_5_n_2 ,\rCntCurr_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[11:8]),
        .S(oData[7:4]));
  FDRE \rCntCurr_reg[4] 
       (.C(iClk),
        .CE(\rCntCurr[11]_i_2_n_0 ),
        .D(wCntNext[4]),
        .Q(oData[0]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  FDRE \rCntCurr_reg[5] 
       (.C(iClk),
        .CE(\rCntCurr[11]_i_2_n_0 ),
        .D(wCntNext[5]),
        .Q(oData[1]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  FDRE \rCntCurr_reg[6] 
       (.C(iClk),
        .CE(\rCntCurr[11]_i_2_n_0 ),
        .D(wCntNext[6]),
        .Q(oData[2]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  FDRE \rCntCurr_reg[7] 
       (.C(iClk),
        .CE(\rCntCurr[11]_i_2_n_0 ),
        .D(wCntNext[7]),
        .Q(oData[3]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rCntCurr_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\rCntCurr_reg[7]_i_2_n_0 ,\rCntCurr_reg[7]_i_2_n_1 ,\rCntCurr_reg[7]_i_2_n_2 ,\rCntCurr_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,oData[1],1'b0}),
        .O(data0[7:4]),
        .S({oData[3:2],\rCntCurr[7]_i_3_n_0 ,oData[0]}));
  FDRE \rCntCurr_reg[8] 
       (.C(iClk),
        .CE(\rCntCurr[11]_i_2_n_0 ),
        .D(wCntNext[8]),
        .Q(oData[4]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  FDRE \rCntCurr_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntCurr[9]_i_1_n_0 ),
        .Q(oData[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rLED[0]_i_1 
       (.I0(oLEDs[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rLED[1]_i_1 
       (.I0(oLEDs[0]),
        .I1(oLEDs[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rLED[2]_i_1 
       (.I0(oLEDs[1]),
        .I1(oLEDs[0]),
        .I2(oLEDs[2]),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \rLED[3]_i_1 
       (.I0(rFSM_Current[0]),
        .I1(rFSM_Current[1]),
        .I2(rFSM_Current[2]),
        .O(\rLED[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rLED[3]_i_2 
       (.I0(oLEDs[0]),
        .I1(oLEDs[1]),
        .I2(oLEDs[2]),
        .I3(oLEDs[3]),
        .O(p_0_in__0[3]));
  FDRE \rLED_reg[0] 
       (.C(iClk),
        .CE(\rLED[3]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(oLEDs[0]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  FDRE \rLED_reg[1] 
       (.C(iClk),
        .CE(\rLED[3]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(oLEDs[1]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  FDRE \rLED_reg[2] 
       (.C(iClk),
        .CE(\rLED[3]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(oLEDs[2]),
        .R(\rCntCurr[11]_i_1_n_0 ));
  FDRE \rLED_reg[3] 
       (.C(iClk),
        .CE(\rLED[3]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(oLEDs[3]),
        .R(\rCntCurr[11]_i_1_n_0 ));
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
