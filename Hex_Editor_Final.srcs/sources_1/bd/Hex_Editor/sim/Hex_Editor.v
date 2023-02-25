//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Thu Dec 16 22:08:44 2021
//Host        : DESKTOP-QGPIJ3S running 64-bit major release  (build 9200)
//Command     : generate_target Hex_Editor.bd
//Design      : Hex_Editor
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Hex_Editor,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Hex_Editor,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Hex_Editor.hwdef" *) 
module Hex_Editor
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN Hex_Editor_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input iClk;
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

  wire [15:0]AsciiCharsMem_0_oData;
  wire Debounce_Switch_0_o_Switch;
  wire Debounce_Switch_1_o_Switch;
  wire Debounce_Switch_2_o_Switch;
  wire [11:0]ScreenBufferMem_0_oDataA;
  wire [9:0]VGA_pattern_0_oAddrA;
  wire [11:0]VGA_pattern_0_oAddrB;
  wire [3:0]VGA_pattern_0_oBlue;
  wire [3:0]VGA_pattern_0_oGreen;
  wire VGA_pattern_0_oHS;
  wire [3:0]VGA_pattern_0_oRed;
  wire VGA_pattern_0_oVS;
  wire [9:0]VGA_timings_0_oCountH;
  wire [9:0]VGA_timings_0_oCountV;
  wire VGA_timings_0_oHS;
  wire VGA_timings_0_oVS;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire iRst_0_1;
  wire i_Switch_0_1;
  wire i_Switch_0_2;
  wire i_Switch_0_3;
  wire [9:0]num_capture_4bit_0_oAddr;
  wire [11:0]num_capture_4bit_0_oData;
  wire [3:0]num_capture_4bit_0_oLEDs;
  wire num_capture_4bit_0_oWe;

  assign clk_in1_0_1 = iClk;
  assign iRst_0_1 = iRst;
  assign i_Switch_0_1 = iPush;
  assign i_Switch_0_2 = iSpace;
  assign i_Switch_0_3 = iStop;
  assign oBlue[3:0] = VGA_pattern_0_oBlue;
  assign oGreen[3:0] = VGA_pattern_0_oGreen;
  assign oHS = VGA_pattern_0_oHS;
  assign oLEDs[3:0] = num_capture_4bit_0_oLEDs;
  assign oRed[3:0] = VGA_pattern_0_oRed;
  assign oVS = VGA_pattern_0_oVS;
  Hex_Editor_AsciiCharsMem_0_0 AsciiCharsMem_0
       (.iAddr(VGA_pattern_0_oAddrB),
        .iClk(clk_wiz_0_clk_out1),
        .oData(AsciiCharsMem_0_oData));
  Hex_Editor_Debounce_Switch_0_0 Debounce_Switch_0
       (.i_Clk(clk_in1_0_1),
        .i_Switch(i_Switch_0_1),
        .o_Switch(Debounce_Switch_0_o_Switch));
  Hex_Editor_Debounce_Switch_1_0 Debounce_Switch_1
       (.i_Clk(clk_in1_0_1),
        .i_Switch(i_Switch_0_3),
        .o_Switch(Debounce_Switch_1_o_Switch));
  Hex_Editor_Debounce_Switch_2_0 Debounce_Switch_2
       (.i_Clk(clk_in1_0_1),
        .i_Switch(i_Switch_0_2),
        .o_Switch(Debounce_Switch_2_o_Switch));
  Hex_Editor_ScreenBufferMem_0_0 ScreenBufferMem_0
       (.iAddrA(VGA_pattern_0_oAddrA),
        .iAddrB(num_capture_4bit_0_oAddr),
        .iClk(clk_wiz_0_clk_out1),
        .iDataB(num_capture_4bit_0_oData),
        .iRst(iRst_0_1),
        .iWeB(num_capture_4bit_0_oWe),
        .oDataA(ScreenBufferMem_0_oDataA));
  Hex_Editor_VGA_pattern_0_0 VGA_pattern_0
       (.iClk(clk_wiz_0_clk_out1),
        .iCountH(VGA_timings_0_oCountH),
        .iCountV(VGA_timings_0_oCountV),
        .iDataA(ScreenBufferMem_0_oDataA),
        .iDataB(AsciiCharsMem_0_oData),
        .iHS(VGA_timings_0_oHS),
        .iRst(iRst_0_1),
        .iVS(VGA_timings_0_oVS),
        .oAddrA(VGA_pattern_0_oAddrA),
        .oAddrB(VGA_pattern_0_oAddrB),
        .oBlue(VGA_pattern_0_oBlue),
        .oGreen(VGA_pattern_0_oGreen),
        .oHS(VGA_pattern_0_oHS),
        .oRed(VGA_pattern_0_oRed),
        .oVS(VGA_pattern_0_oVS));
  Hex_Editor_VGA_timings_0_0 VGA_timings_0
       (.iClk(clk_wiz_0_clk_out1),
        .iRst(iRst_0_1),
        .oCountH(VGA_timings_0_oCountH),
        .oCountV(VGA_timings_0_oCountV),
        .oHS(VGA_timings_0_oHS),
        .oVS(VGA_timings_0_oVS));
  Hex_Editor_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1));
  Hex_Editor_num_capture_4bit_0_0 num_capture_4bit_0
       (.iClk(clk_wiz_0_clk_out1),
        .iPush(Debounce_Switch_0_o_Switch),
        .iRst(iRst_0_1),
        .iSpace(Debounce_Switch_2_o_Switch),
        .iStop(Debounce_Switch_1_o_Switch),
        .oAddr(num_capture_4bit_0_oAddr),
        .oData(num_capture_4bit_0_oData),
        .oLEDs(num_capture_4bit_0_oLEDs),
        .oWe(num_capture_4bit_0_oWe));
endmodule
