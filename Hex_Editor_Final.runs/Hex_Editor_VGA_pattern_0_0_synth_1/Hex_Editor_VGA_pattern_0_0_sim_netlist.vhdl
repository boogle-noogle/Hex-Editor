-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Dec 11 22:33:11 2021
-- Host        : DESKTOP-QGPIJ3S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Hex_Editor_VGA_pattern_0_0_sim_netlist.vhdl
-- Design      : Hex_Editor_VGA_pattern_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_pattern is
  port (
    oAddrA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oAddrB0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    iCountH : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iCountV : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iDataA : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_pattern;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_pattern is
  signal \oAddrA[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_n_1\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_n_2\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_n_3\ : STD_LOGIC;
  signal \oAddrA[6]_INST_0_n_1\ : STD_LOGIC;
  signal \oAddrA[6]_INST_0_n_2\ : STD_LOGIC;
  signal \oAddrA[6]_INST_0_n_3\ : STD_LOGIC;
  signal \oAddrB[11]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \oAddrB[11]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \oAddrB[11]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \oAddrB[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oAddrB[3]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \oAddrB[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \oAddrB[3]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \oAddrB[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oAddrB[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oAddrB[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oAddrB[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oAddrB[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oAddrB[7]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \oAddrB[7]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \oAddrB[7]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \oAddrB[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \NLW_oAddrA[6]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_oAddrB[11]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \oAddrA[2]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \oAddrA[6]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \oAddrB[11]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \oAddrB[3]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \oAddrB[7]_INST_0_i_1\ : label is 35;
begin
\oAddrA[2]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \oAddrA[2]_INST_0_n_0\,
      CO(2) => \oAddrA[2]_INST_0_n_1\,
      CO(1) => \oAddrA[2]_INST_0_n_2\,
      CO(0) => \oAddrA[2]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => iCountH(3),
      DI(2 downto 1) => iCountV(6 downto 5),
      DI(0) => '0',
      O(3 downto 0) => oAddrA(3 downto 0),
      S(3) => \oAddrA[2]_INST_0_i_1_n_0\,
      S(2) => \oAddrA[2]_INST_0_i_2_n_0\,
      S(1) => \oAddrA[2]_INST_0_i_3_n_0\,
      S(0) => iCountH(0)
    );
\oAddrA[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountV(7),
      I2 => iCountH(3),
      O => \oAddrA[2]_INST_0_i_1_n_0\
    );
\oAddrA[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iCountV(6),
      I1 => iCountH(2),
      O => \oAddrA[2]_INST_0_i_2_n_0\
    );
\oAddrA[2]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountH(1),
      O => \oAddrA[2]_INST_0_i_3_n_0\
    );
\oAddrA[6]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \oAddrA[2]_INST_0_n_0\,
      CO(3) => \NLW_oAddrA[6]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \oAddrA[6]_INST_0_n_1\,
      CO(1) => \oAddrA[6]_INST_0_n_2\,
      CO(0) => \oAddrA[6]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => oAddrA(7 downto 4),
      S(3 downto 0) => S(3 downto 0)
    );
\oAddrB[11]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oAddrB[7]_INST_0_i_1_n_0\,
      CO(3) => \NLW_oAddrB[11]_INST_0_i_1_CO_UNCONNECTED\(3),
      CO(2) => \oAddrB[11]_INST_0_i_1_n_1\,
      CO(1) => \oAddrB[11]_INST_0_i_1_n_2\,
      CO(0) => \oAddrB[11]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => oAddrB0(11 downto 8),
      S(3 downto 0) => iDataA(11 downto 8)
    );
\oAddrB[3]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \oAddrB[3]_INST_0_i_1_n_0\,
      CO(2) => \oAddrB[3]_INST_0_i_1_n_1\,
      CO(1) => \oAddrB[3]_INST_0_i_1_n_2\,
      CO(0) => \oAddrB[3]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => iDataA(3 downto 0),
      O(3 downto 0) => oAddrB0(3 downto 0),
      S(3) => \oAddrB[3]_INST_0_i_2_n_0\,
      S(2) => \oAddrB[3]_INST_0_i_3_n_0\,
      S(1) => \oAddrB[3]_INST_0_i_4_n_0\,
      S(0) => \oAddrB[3]_INST_0_i_5_n_0\
    );
\oAddrB[3]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(3),
      I1 => iCountV(3),
      O => \oAddrB[3]_INST_0_i_2_n_0\
    );
\oAddrB[3]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(2),
      I1 => iCountV(2),
      O => \oAddrB[3]_INST_0_i_3_n_0\
    );
\oAddrB[3]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(1),
      I1 => iCountV(1),
      O => \oAddrB[3]_INST_0_i_4_n_0\
    );
\oAddrB[3]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(0),
      I1 => iCountV(0),
      O => \oAddrB[3]_INST_0_i_5_n_0\
    );
\oAddrB[7]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oAddrB[3]_INST_0_i_1_n_0\,
      CO(3) => \oAddrB[7]_INST_0_i_1_n_0\,
      CO(2) => \oAddrB[7]_INST_0_i_1_n_1\,
      CO(1) => \oAddrB[7]_INST_0_i_1_n_2\,
      CO(0) => \oAddrB[7]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => iDataA(4),
      O(3 downto 0) => oAddrB0(7 downto 4),
      S(3 downto 1) => iDataA(7 downto 5),
      S(0) => \oAddrB[7]_INST_0_i_2_n_0\
    );
\oAddrB[7]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(4),
      I1 => iCountV(4),
      O => \oAddrB[7]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iCountH : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iCountV : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iHS : in STD_LOGIC;
    iVS : in STD_LOGIC;
    iDataA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    iDataB : in STD_LOGIC_VECTOR ( 15 downto 0 );
    oAddrA : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oAddrB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    oHS : out STD_LOGIC;
    oVS : out STD_LOGIC;
    oRed : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oGreen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oBlue : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Hex_Editor_VGA_pattern_0_0,VGA_pattern,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "VGA_pattern,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^icounth\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^oaddra\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal oAddrA0 : STD_LOGIC_VECTOR ( 9 downto 6 );
  signal oAddrB0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \oAddrB[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oAddrB[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oAddrB[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oBlue[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oBlue[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oBlue[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oBlue[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oBlue[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oBlue[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \oBlue[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal oHS_INST_0_i_1_n_0 : STD_LOGIC;
  signal oHS_INST_0_i_2_n_0 : STD_LOGIC;
  signal \^ored\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal oVS_INST_0_i_1_n_0 : STD_LOGIC;
  signal oVS_INST_0_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oAddrB[11]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \oBlue[0]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of oHS_INST_0_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of oVS_INST_0_i_2 : label is "soft_lutpair0";
begin
  \^icounth\(9 downto 0) <= iCountH(9 downto 0);
  oAddrA(9 downto 2) <= \^oaddra\(9 downto 2);
  oAddrA(1 downto 0) <= \^icounth\(5 downto 4);
  oBlue(3) <= \^ored\(3);
  oBlue(2) <= \^ored\(3);
  oBlue(1) <= \^ored\(3);
  oBlue(0) <= \^ored\(3);
  oGreen(3) <= \^ored\(3);
  oGreen(2) <= \^ored\(3);
  oGreen(1) <= \^ored\(3);
  oGreen(0) <= \^ored\(3);
  oRed(3) <= \^ored\(3);
  oRed(2) <= \^ored\(3);
  oRed(1) <= \^ored\(3);
  oRed(0) <= \^ored\(3);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_pattern
     port map (
      S(3 downto 0) => oAddrA0(9 downto 6),
      iCountH(3 downto 0) => \^icounth\(9 downto 6),
      iCountV(7 downto 0) => iCountV(7 downto 0),
      iDataA(11 downto 0) => iDataA(11 downto 0),
      oAddrA(7 downto 0) => \^oaddra\(9 downto 2),
      oAddrB0(11 downto 0) => oAddrB0(11 downto 0)
    );
\oAddrA[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26CC24CC"
    )
        port map (
      I0 => iCountV(7),
      I1 => iCountV(9),
      I2 => iCountV(6),
      I3 => iCountV(8),
      I4 => iCountV(5),
      O => oAddrA0(9)
    );
\oAddrA[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"013FF800"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountV(6),
      I2 => iCountV(9),
      I3 => iCountV(7),
      I4 => iCountV(8),
      O => oAddrA0(8)
    );
\oAddrA[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8173FC0"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountV(8),
      I2 => iCountV(6),
      I3 => iCountV(9),
      I4 => iCountV(7),
      O => oAddrA0(7)
    );
\oAddrA[6]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountV(7),
      I2 => iCountV(8),
      I3 => iCountV(6),
      O => oAddrA0(6)
    );
\oAddrB[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(0),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(0)
    );
\oAddrB[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(10),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(10)
    );
\oAddrB[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(11),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(11)
    );
\oAddrB[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \oAddrB[11]_INST_0_i_4_n_0\,
      I1 => iCountV(4),
      I2 => iCountV(2),
      I3 => iCountV(3),
      I4 => iCountV(1),
      I5 => iCountV(0),
      O => \oAddrB[11]_INST_0_i_2_n_0\
    );
\oAddrB[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \^icounth\(4),
      I1 => \^icounth\(5),
      I2 => \^icounth\(6),
      I3 => \^icounth\(3),
      I4 => oHS_INST_0_i_1_n_0,
      I5 => \^icounth\(7),
      O => \oAddrB[11]_INST_0_i_3_n_0\
    );
\oAddrB[11]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountV(7),
      I2 => iCountV(8),
      I3 => iCountV(6),
      O => \oAddrB[11]_INST_0_i_4_n_0\
    );
\oAddrB[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(1),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(1)
    );
\oAddrB[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(2),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(2)
    );
\oAddrB[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(3),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(3)
    );
\oAddrB[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(4),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(4)
    );
\oAddrB[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(5),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(5)
    );
\oAddrB[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(6),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(6)
    );
\oAddrB[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(7),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(7)
    );
\oAddrB[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(8),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(8)
    );
\oAddrB[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020200020002"
    )
        port map (
      I0 => oAddrB0(9),
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => oAddrB(9)
    );
\oBlue[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010100010001"
    )
        port map (
      I0 => \oBlue[0]_INST_0_i_1_n_0\,
      I1 => iCountV(9),
      I2 => \oAddrB[11]_INST_0_i_2_n_0\,
      I3 => \^icounth\(9),
      I4 => \^icounth\(8),
      I5 => \oAddrB[11]_INST_0_i_3_n_0\,
      O => \^ored\(3)
    );
\oBlue[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \oBlue[0]_INST_0_i_2_n_0\,
      I1 => \oBlue[0]_INST_0_i_3_n_0\,
      I2 => \oBlue[0]_INST_0_i_4_n_0\,
      I3 => \oBlue[0]_INST_0_i_5_n_0\,
      I4 => \oBlue[0]_INST_0_i_6_n_0\,
      I5 => \oBlue[0]_INST_0_i_7_n_0\,
      O => \oBlue[0]_INST_0_i_1_n_0\
    );
\oBlue[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550055FF0F330F33"
    )
        port map (
      I0 => iDataB(0),
      I1 => iDataB(15),
      I2 => iDataB(2),
      I3 => \^icounth\(0),
      I4 => iDataB(1),
      I5 => \^icounth\(1),
      O => \oBlue[0]_INST_0_i_2_n_0\
    );
\oBlue[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550055FF0F330F33"
    )
        port map (
      I0 => iDataB(4),
      I1 => iDataB(3),
      I2 => iDataB(6),
      I3 => \^icounth\(0),
      I4 => iDataB(5),
      I5 => \^icounth\(1),
      O => \oBlue[0]_INST_0_i_3_n_0\
    );
\oBlue[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^icounth\(3),
      I1 => \^icounth\(1),
      I2 => \^icounth\(0),
      I3 => \^icounth\(2),
      O => \oBlue[0]_INST_0_i_4_n_0\
    );
\oBlue[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550055FF0F330F33"
    )
        port map (
      I0 => iDataB(8),
      I1 => iDataB(7),
      I2 => iDataB(10),
      I3 => \^icounth\(0),
      I4 => iDataB(9),
      I5 => \^icounth\(1),
      O => \oBlue[0]_INST_0_i_5_n_0\
    );
\oBlue[0]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^icounth\(1),
      I1 => \^icounth\(0),
      I2 => \^icounth\(2),
      O => \oBlue[0]_INST_0_i_6_n_0\
    );
\oBlue[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550055FF0F330F33"
    )
        port map (
      I0 => iDataB(12),
      I1 => iDataB(11),
      I2 => iDataB(14),
      I3 => \^icounth\(0),
      I4 => iDataB(13),
      I5 => \^icounth\(1),
      O => \oBlue[0]_INST_0_i_7_n_0\
    );
oHS_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => \^icounth\(4),
      I1 => \^icounth\(5),
      I2 => \^icounth\(6),
      I3 => \^icounth\(3),
      I4 => oHS_INST_0_i_1_n_0,
      I5 => oHS_INST_0_i_2_n_0,
      O => oHS
    );
oHS_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^icounth\(2),
      I1 => \^icounth\(0),
      I2 => \^icounth\(1),
      O => oHS_INST_0_i_1_n_0
    );
oHS_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FFFFFFFFFF"
    )
        port map (
      I0 => \^icounth\(6),
      I1 => \^icounth\(5),
      I2 => \^icounth\(4),
      I3 => \^icounth\(7),
      I4 => \^icounth\(8),
      I5 => \^icounth\(9),
      O => oHS_INST_0_i_2_n_0
    );
oVS_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFDFDFF"
    )
        port map (
      I0 => iCountV(3),
      I1 => iCountV(4),
      I2 => iCountV(9),
      I3 => iCountV(2),
      I4 => iCountV(1),
      I5 => oVS_INST_0_i_1_n_0,
      O => oVS
    );
oVS_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7FFF7F7F7F"
    )
        port map (
      I0 => iCountV(6),
      I1 => iCountV(8),
      I2 => oVS_INST_0_i_2_n_0,
      I3 => iCountV(2),
      I4 => iCountV(1),
      I5 => iCountV(0),
      O => oVS_INST_0_i_1_n_0
    );
oVS_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iCountV(7),
      I1 => iCountV(5),
      O => oVS_INST_0_i_2_n_0
    );
end STRUCTURE;
