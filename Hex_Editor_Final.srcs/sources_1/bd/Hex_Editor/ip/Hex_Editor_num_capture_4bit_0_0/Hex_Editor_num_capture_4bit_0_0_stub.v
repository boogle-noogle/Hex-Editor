// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Dec 16 22:09:32 2021
// Host        : DESKTOP-QGPIJ3S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/PsilosC/Desktop/Hex_Editor_Final/Hex_Editor_Final.srcs/sources_1/bd/Hex_Editor/ip/Hex_Editor_num_capture_4bit_0_0/Hex_Editor_num_capture_4bit_0_0_stub.v
// Design      : Hex_Editor_num_capture_4bit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "num_capture_4bit,Vivado 2020.1" *)
module Hex_Editor_num_capture_4bit_0_0(iClk, iRst, iPush, iStop, iSpace, oAddr, oData, oWe, 
  oLEDs)
/* synthesis syn_black_box black_box_pad_pin="iClk,iRst,iPush,iStop,iSpace,oAddr[9:0],oData[11:0],oWe,oLEDs[3:0]" */;
  input iClk;
  input iRst;
  input iPush;
  input iStop;
  input iSpace;
  output [9:0]oAddr;
  output [11:0]oData;
  output oWe;
  output [3:0]oLEDs;
endmodule
