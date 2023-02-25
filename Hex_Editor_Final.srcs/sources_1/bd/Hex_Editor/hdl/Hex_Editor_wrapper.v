//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Thu Dec 16 22:08:44 2021
//Host        : DESKTOP-QGPIJ3S running 64-bit major release  (build 9200)
//Command     : generate_target Hex_Editor_wrapper.bd
//Design      : Hex_Editor_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Hex_Editor_wrapper
   (iClk,
    iPush,
    iRst,
    iSpace,
    iStop,
    oBlue,
    oGreen,
    oHS,
    oLEDs,
    oRed,
    oVS);
  input iClk;
  input iPush;
  input iRst;
  input iSpace;
  input iStop;
  output [3:0]oBlue;
  output [3:0]oGreen;
  output oHS;
  output [3:0]oLEDs;
  output [3:0]oRed;
  output oVS;

  wire iClk;
  wire iPush;
  wire iRst;
  wire iSpace;
  wire iStop;
  wire [3:0]oBlue;
  wire [3:0]oGreen;
  wire oHS;
  wire [3:0]oLEDs;
  wire [3:0]oRed;
  wire oVS;

  Hex_Editor Hex_Editor_i
       (.iClk(iClk),
        .iPush(iPush),
        .iRst(iRst),
        .iSpace(iSpace),
        .iStop(iStop),
        .oBlue(oBlue),
        .oGreen(oGreen),
        .oHS(oHS),
        .oLEDs(oLEDs),
        .oRed(oRed),
        .oVS(oVS));
endmodule
