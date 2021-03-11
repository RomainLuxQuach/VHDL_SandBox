-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Feb 26 15:58:36 2021
-- Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Travail/ProjetVHDL/Project_2/Project_2.srcs/sources_1/bd/design_1/ip/design_1_Compteur_3bits_0_0/design_1_Compteur_3bits_0_0_sim_netlist.vhdl
-- Design      : design_1_Compteur_3bits_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Compteur_3bits_0_0_Compteur_3bits is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    H : in STD_LOGIC;
    RAZ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Compteur_3bits_0_0_Compteur_3bits : entity is "Compteur_3bits";
end design_1_Compteur_3bits_0_0_Compteur_3bits;

architecture STRUCTURE of design_1_Compteur_3bits_0_0_Compteur_3bits is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RAZ,
      D => plusOp(0),
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RAZ,
      D => plusOp(1),
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => H,
      CE => '1',
      CLR => RAZ,
      D => plusOp(2),
      Q => \^q\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Compteur_3bits_0_0 is
  port (
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    RAZ : in STD_LOGIC;
    H : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Compteur_3bits_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Compteur_3bits_0_0 : entity is "design_1_Compteur_3bits_0_0,Compteur_3bits,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Compteur_3bits_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Compteur_3bits_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Compteur_3bits_0_0 : entity is "Compteur_3bits,Vivado 2019.1";
end design_1_Compteur_3bits_0_0;

architecture STRUCTURE of design_1_Compteur_3bits_0_0 is
begin
U0: entity work.design_1_Compteur_3bits_0_0_Compteur_3bits
     port map (
      H => H,
      Q(2 downto 0) => S(2 downto 0),
      RAZ => RAZ
    );
end STRUCTURE;
