-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Feb 26 15:58:05 2021
-- Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Travail/ProjetVHDL/Project_2/Project_2.srcs/sources_1/bd/design_1/ip/design_1_Encodeur_0_0/design_1_Encodeur_0_0_sim_netlist.vhdl
-- Design      : design_1_Encodeur_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Encodeur_0_0_Encodeur is
  port (
    PA2 : out STD_LOGIC;
    PA1 : out STD_LOGIC;
    PB2 : out STD_LOGIC;
    PB1 : out STD_LOGIC;
    INH : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Encodeur_0_0_Encodeur : entity is "Encodeur";
end design_1_Encodeur_0_0_Encodeur;

architecture STRUCTURE of design_1_Encodeur_0_0_Encodeur is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of PA1_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of PA2_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of PB1_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of PB2_INST_0 : label is "soft_lutpair1";
begin
PA1_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88A2"
    )
        port map (
      I0 => INH,
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => PA1
    );
PA2_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22A8"
    )
        port map (
      I0 => INH,
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => PA2
    );
PB1_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => INH,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => PB1
    );
PB2_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => INH,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => PB2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Encodeur_0_0 is
  port (
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PA1 : out STD_LOGIC;
    PA2 : out STD_LOGIC;
    PB1 : out STD_LOGIC;
    PB2 : out STD_LOGIC;
    INH : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Encodeur_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Encodeur_0_0 : entity is "design_1_Encodeur_0_0,Encodeur,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Encodeur_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Encodeur_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Encodeur_0_0 : entity is "Encodeur,Vivado 2019.1";
end design_1_Encodeur_0_0;

architecture STRUCTURE of design_1_Encodeur_0_0 is
begin
U0: entity work.design_1_Encodeur_0_0_Encodeur
     port map (
      INH => INH,
      PA1 => PA1,
      PA2 => PA2,
      PB1 => PB1,
      PB2 => PB2,
      Q(2 downto 0) => Q(2 downto 0)
    );
end STRUCTURE;
