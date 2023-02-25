-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Dec 11 18:39:01 2021
-- Host        : DESKTOP-QGPIJ3S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/PsilosC/Desktop/Hex_Editor_Final/Hex_Editor_Final.srcs/sources_1/bd/Hex_Editor/ip/Hex_Editor_ScreenBufferMem_0_0/Hex_Editor_ScreenBufferMem_0_0_stub.vhdl
-- Design      : Hex_Editor_ScreenBufferMem_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Hex_Editor_ScreenBufferMem_0_0 is
  Port ( 
    iClk : in STD_LOGIC;
    iAddrA : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iAddrB : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iDataB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    iWeB : in STD_LOGIC;
    iRst : in STD_LOGIC;
    oDataA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    oDataB : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end Hex_Editor_ScreenBufferMem_0_0;

architecture stub of Hex_Editor_ScreenBufferMem_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iClk,iAddrA[9:0],iAddrB[9:0],iDataB[11:0],iWeB,iRst,oDataA[11:0],oDataB[11:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ScreenBufferMem,Vivado 2020.1";
begin
end;
