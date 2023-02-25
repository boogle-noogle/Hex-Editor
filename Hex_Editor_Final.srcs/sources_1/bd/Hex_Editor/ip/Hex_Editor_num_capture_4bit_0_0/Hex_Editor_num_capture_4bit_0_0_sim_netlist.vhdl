-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Dec 16 22:09:32 2021
-- Host        : DESKTOP-QGPIJ3S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/PsilosC/Desktop/Hex_Editor_Final/Hex_Editor_Final.srcs/sources_1/bd/Hex_Editor/ip/Hex_Editor_num_capture_4bit_0_0/Hex_Editor_num_capture_4bit_0_0_sim_netlist.vhdl
-- Design      : Hex_Editor_num_capture_4bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Hex_Editor_num_capture_4bit_0_0_num_capture_4bit is
  port (
    oData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oAddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oWe : out STD_LOGIC;
    oLEDs : out STD_LOGIC_VECTOR ( 3 downto 0 );
    iPush : in STD_LOGIC;
    iStop : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iSpace : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Hex_Editor_num_capture_4bit_0_0_num_capture_4bit : entity is "num_capture_4bit";
end Hex_Editor_num_capture_4bit_0_0_num_capture_4bit;

architecture STRUCTURE of Hex_Editor_num_capture_4bit_0_0_num_capture_4bit is
  signal \FSM_sequential_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \^oaddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^odata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^oleds\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^owe\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rAddr[9]_i_3_n_0\ : STD_LOGIC;
  signal \rCntCurr[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCntCurr[11]_i_1_n_0\ : STD_LOGIC;
  signal \rCntCurr[11]_i_2_n_0\ : STD_LOGIC;
  signal \rCntCurr[11]_i_4_n_0\ : STD_LOGIC;
  signal \rCntCurr[11]_i_6_n_0\ : STD_LOGIC;
  signal \rCntCurr[7]_i_3_n_0\ : STD_LOGIC;
  signal \rCntCurr[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCntCurr_reg[11]_i_5_n_1\ : STD_LOGIC;
  signal \rCntCurr_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \rCntCurr_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \rCntCurr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \rCntCurr_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \rCntCurr_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \rCntCurr_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal rFSM_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rLED[3]_i_1_n_0\ : STD_LOGIC;
  signal wAddr : STD_LOGIC;
  signal wCntNext : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal wFSM_Next : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_rCntCurr_reg[11]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_Current[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_Current[2]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[0]\ : label is "sInit:000,sIncr:010,sStop:100,sSpace:111,sRNumberToZero:110,sPushStop:101,sIdle:001,sPush:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[1]\ : label is "sInit:000,sIncr:010,sStop:100,sSpace:111,sRNumberToZero:110,sPushStop:101,sIdle:001,sPush:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[2]\ : label is "sInit:000,sIncr:010,sStop:100,sSpace:111,sRNumberToZero:110,sPushStop:101,sIdle:001,sPush:011";
  attribute SOFT_HLUTNM of \rAddr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rAddr[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rAddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rAddr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rAddr[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rAddr[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rAddr[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rAddr[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rCntCurr[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rCntCurr[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCntCurr[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rCntCurr[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCntCurr[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCntCurr[8]_i_1\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \rCntCurr_reg[11]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \rCntCurr_reg[7]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \rLED[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rLED[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rLED[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rLED[3]_i_2\ : label is "soft_lutpair2";
begin
  oAddr(9 downto 0) <= \^oaddr\(9 downto 0);
  oData(7 downto 0) <= \^odata\(7 downto 0);
  oLEDs(3 downto 0) <= \^oleds\(3 downto 0);
  oWe <= \^owe\;
\FSM_sequential_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF557"
    )
        port map (
      I0 => rFSM_Current(0),
      I1 => iPush,
      I2 => rFSM_Current(2),
      I3 => iStop,
      I4 => rFSM_Current(1),
      I5 => iRst,
      O => \FSM_sequential_rFSM_Current[0]_i_1_n_0\
    );
\FSM_sequential_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wFSM_Next(1),
      I1 => iRst,
      O => \FSM_sequential_rFSM_Current[1]_i_1_n_0\
    );
\FSM_sequential_rFSM_Current[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"515140CC515140C8"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(0),
      I2 => iPush,
      I3 => iStop,
      I4 => rFSM_Current(1),
      I5 => iSpace,
      O => wFSM_Next(1)
    );
\FSM_sequential_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wFSM_Next(2),
      I1 => iRst,
      O => \FSM_sequential_rFSM_Current[2]_i_1_n_0\
    );
\FSM_sequential_rFSM_Current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF000000E0"
    )
        port map (
      I0 => iSpace,
      I1 => iStop,
      I2 => rFSM_Current(0),
      I3 => iPush,
      I4 => rFSM_Current(1),
      I5 => rFSM_Current(2),
      O => wFSM_Next(2)
    );
\FSM_sequential_rFSM_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \FSM_sequential_rFSM_Current[0]_i_1_n_0\,
      Q => rFSM_Current(0),
      R => '0'
    );
\FSM_sequential_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \FSM_sequential_rFSM_Current[1]_i_1_n_0\,
      Q => rFSM_Current(1),
      R => '0'
    );
\FSM_sequential_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \FSM_sequential_rFSM_Current[2]_i_1_n_0\,
      Q => rFSM_Current(2),
      R => '0'
    );
oWe_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rFSM_Current(0),
      I2 => rFSM_Current(2),
      O => \^owe\
    );
\rAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^oaddr\(0),
      O => p_0_in(0)
    );
\rAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^oaddr\(0),
      I1 => \^oaddr\(1),
      O => p_0_in(1)
    );
\rAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^oaddr\(1),
      I1 => \^oaddr\(0),
      I2 => \^oaddr\(2),
      O => p_0_in(2)
    );
\rAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^oaddr\(2),
      I1 => \^oaddr\(0),
      I2 => \^oaddr\(1),
      I3 => \^oaddr\(3),
      O => p_0_in(3)
    );
\rAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^oaddr\(3),
      I1 => \^oaddr\(1),
      I2 => \^oaddr\(0),
      I3 => \^oaddr\(2),
      I4 => \^oaddr\(4),
      O => p_0_in(4)
    );
\rAddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^oaddr\(4),
      I1 => \^oaddr\(2),
      I2 => \^oaddr\(0),
      I3 => \^oaddr\(1),
      I4 => \^oaddr\(3),
      I5 => \^oaddr\(5),
      O => p_0_in(5)
    );
\rAddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rAddr[9]_i_3_n_0\,
      I1 => \^oaddr\(6),
      O => p_0_in(6)
    );
\rAddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^oaddr\(6),
      I1 => \rAddr[9]_i_3_n_0\,
      I2 => \^oaddr\(7),
      O => p_0_in(7)
    );
\rAddr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \rAddr[9]_i_3_n_0\,
      I1 => \^oaddr\(6),
      I2 => \^oaddr\(7),
      I3 => \^oaddr\(8),
      O => p_0_in(8)
    );
\rAddr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rFSM_Current(0),
      I2 => rFSM_Current(2),
      O => wAddr
    );
\rAddr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \rAddr[9]_i_3_n_0\,
      I1 => \^oaddr\(8),
      I2 => \^oaddr\(7),
      I3 => \^oaddr\(6),
      I4 => \^oaddr\(9),
      O => p_0_in(9)
    );
\rAddr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^oaddr\(4),
      I1 => \^oaddr\(2),
      I2 => \^oaddr\(0),
      I3 => \^oaddr\(1),
      I4 => \^oaddr\(3),
      I5 => \^oaddr\(5),
      O => \rAddr[9]_i_3_n_0\
    );
\rAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(0),
      Q => \^oaddr\(0),
      R => wAddr
    );
\rAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(1),
      Q => \^oaddr\(1),
      R => wAddr
    );
\rAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(2),
      Q => \^oaddr\(2),
      R => wAddr
    );
\rAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(3),
      Q => \^oaddr\(3),
      R => wAddr
    );
\rAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(4),
      Q => \^oaddr\(4),
      R => wAddr
    );
\rAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(5),
      Q => \^oaddr\(5),
      R => wAddr
    );
\rAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(6),
      Q => \^oaddr\(6),
      R => wAddr
    );
\rAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(7),
      Q => \^oaddr\(7),
      R => wAddr
    );
\rAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(8),
      Q => \^oaddr\(8),
      R => wAddr
    );
\rAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \^owe\,
      D => p_0_in(9),
      Q => \^oaddr\(9),
      R => wAddr
    );
\rCntCurr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(10),
      I1 => \rCntCurr[11]_i_4_n_0\,
      I2 => \rCntCurr[10]_i_2_n_0\,
      O => wCntNext(10)
    );
\rCntCurr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => \^odata\(5),
      I1 => \^odata\(6),
      I2 => \^odata\(4),
      I3 => \^odata\(3),
      I4 => \^odata\(2),
      I5 => \^odata\(1),
      O => \rCntCurr[10]_i_2_n_0\
    );
\rCntCurr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A1"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(0),
      I2 => rFSM_Current(1),
      O => \rCntCurr[11]_i_1_n_0\
    );
\rCntCurr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rFSM_Current(0),
      O => \rCntCurr[11]_i_2_n_0\
    );
\rCntCurr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntCurr[11]_i_4_n_0\,
      I1 => data0(11),
      O => wCntNext(11)
    );
\rCntCurr[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEB"
    )
        port map (
      I0 => \rCntCurr[11]_i_6_n_0\,
      I1 => \^odata\(3),
      I2 => \^odata\(4),
      I3 => \^odata\(0),
      I4 => \^odata\(7),
      O => \rCntCurr[11]_i_4_n_0\
    );
\rCntCurr[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBEFFFFFFFFFF7DF"
    )
        port map (
      I0 => \^odata\(6),
      I1 => \^odata\(3),
      I2 => \^odata\(1),
      I3 => \^odata\(2),
      I4 => \^odata\(4),
      I5 => \^odata\(5),
      O => \rCntCurr[11]_i_6_n_0\
    );
\rCntCurr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntCurr[11]_i_4_n_0\,
      I1 => data0(4),
      O => wCntNext(4)
    );
\rCntCurr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(5),
      I1 => \rCntCurr[11]_i_4_n_0\,
      I2 => \rCntCurr[10]_i_2_n_0\,
      O => wCntNext(5)
    );
\rCntCurr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntCurr[11]_i_4_n_0\,
      I1 => data0(6),
      O => wCntNext(6)
    );
\rCntCurr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntCurr[11]_i_4_n_0\,
      I1 => data0(7),
      O => wCntNext(7)
    );
\rCntCurr[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^odata\(1),
      O => \rCntCurr[7]_i_3_n_0\
    );
\rCntCurr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntCurr[11]_i_4_n_0\,
      I1 => data0(8),
      O => wCntNext(8)
    );
\rCntCurr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAF22A3"
    )
        port map (
      I0 => \^odata\(5),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(0),
      I3 => rFSM_Current(2),
      I4 => wCntNext(9),
      O => \rCntCurr[9]_i_1_n_0\
    );
\rCntCurr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFFFFD1FF"
    )
        port map (
      I0 => \rCntCurr[10]_i_2_n_0\,
      I1 => \rCntCurr[11]_i_4_n_0\,
      I2 => data0(9),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(0),
      I5 => rFSM_Current(2),
      O => wCntNext(9)
    );
\rCntCurr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCntCurr[11]_i_2_n_0\,
      D => wCntNext(10),
      Q => \^odata\(6),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rCntCurr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCntCurr[11]_i_2_n_0\,
      D => wCntNext(11),
      Q => \^odata\(7),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rCntCurr_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rCntCurr_reg[7]_i_2_n_0\,
      CO(3) => \NLW_rCntCurr_reg[11]_i_5_CO_UNCONNECTED\(3),
      CO(2) => \rCntCurr_reg[11]_i_5_n_1\,
      CO(1) => \rCntCurr_reg[11]_i_5_n_2\,
      CO(0) => \rCntCurr_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(11 downto 8),
      S(3 downto 0) => \^odata\(7 downto 4)
    );
\rCntCurr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCntCurr[11]_i_2_n_0\,
      D => wCntNext(4),
      Q => \^odata\(0),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rCntCurr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCntCurr[11]_i_2_n_0\,
      D => wCntNext(5),
      Q => \^odata\(1),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rCntCurr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCntCurr[11]_i_2_n_0\,
      D => wCntNext(6),
      Q => \^odata\(2),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rCntCurr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCntCurr[11]_i_2_n_0\,
      D => wCntNext(7),
      Q => \^odata\(3),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rCntCurr_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rCntCurr_reg[7]_i_2_n_0\,
      CO(2) => \rCntCurr_reg[7]_i_2_n_1\,
      CO(1) => \rCntCurr_reg[7]_i_2_n_2\,
      CO(0) => \rCntCurr_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^odata\(1),
      DI(0) => '0',
      O(3 downto 0) => data0(7 downto 4),
      S(3 downto 2) => \^odata\(3 downto 2),
      S(1) => \rCntCurr[7]_i_3_n_0\,
      S(0) => \^odata\(0)
    );
\rCntCurr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCntCurr[11]_i_2_n_0\,
      D => wCntNext(8),
      Q => \^odata\(4),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rCntCurr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntCurr[9]_i_1_n_0\,
      Q => \^odata\(5),
      R => '0'
    );
\rLED[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^oleds\(0),
      O => \p_0_in__0\(0)
    );
\rLED[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^oleds\(0),
      I1 => \^oleds\(1),
      O => \p_0_in__0\(1)
    );
\rLED[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^oleds\(1),
      I1 => \^oleds\(0),
      I2 => \^oleds\(2),
      O => \p_0_in__0\(2)
    );
\rLED[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rFSM_Current(0),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(2),
      O => \rLED[3]_i_1_n_0\
    );
\rLED[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^oleds\(0),
      I1 => \^oleds\(1),
      I2 => \^oleds\(2),
      I3 => \^oleds\(3),
      O => \p_0_in__0\(3)
    );
\rLED_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rLED[3]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \^oleds\(0),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rLED_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rLED[3]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \^oleds\(1),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rLED_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rLED[3]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \^oleds\(2),
      R => \rCntCurr[11]_i_1_n_0\
    );
\rLED_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rLED[3]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \^oleds\(3),
      R => \rCntCurr[11]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Hex_Editor_num_capture_4bit_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iPush : in STD_LOGIC;
    iStop : in STD_LOGIC;
    iSpace : in STD_LOGIC;
    oAddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 11 downto 0 );
    oWe : out STD_LOGIC;
    oLEDs : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Hex_Editor_num_capture_4bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Hex_Editor_num_capture_4bit_0_0 : entity is "Hex_Editor_num_capture_4bit_0_0,num_capture_4bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Hex_Editor_num_capture_4bit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Hex_Editor_num_capture_4bit_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Hex_Editor_num_capture_4bit_0_0 : entity is "num_capture_4bit,Vivado 2020.1";
end Hex_Editor_num_capture_4bit_0_0;

architecture STRUCTURE of Hex_Editor_num_capture_4bit_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^odata\ : STD_LOGIC_VECTOR ( 11 downto 4 );
begin
  oData(11 downto 4) <= \^odata\(11 downto 4);
  oData(3) <= \<const0>\;
  oData(2) <= \<const0>\;
  oData(1) <= \<const0>\;
  oData(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Hex_Editor_num_capture_4bit_0_0_num_capture_4bit
     port map (
      iClk => iClk,
      iPush => iPush,
      iRst => iRst,
      iSpace => iSpace,
      iStop => iStop,
      oAddr(9 downto 0) => oAddr(9 downto 0),
      oData(7 downto 0) => \^odata\(11 downto 4),
      oLEDs(3 downto 0) => oLEDs(3 downto 0),
      oWe => oWe
    );
end STRUCTURE;
