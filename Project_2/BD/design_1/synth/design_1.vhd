--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri Feb 26 16:03:37 2021
--Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    H : in STD_LOGIC;
    INH : in STD_LOGIC;
    PA1 : out STD_LOGIC;
    PA2 : out STD_LOGIC;
    PB1 : out STD_LOGIC;
    PB2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    RAZ : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_Compteur_3bits_0_0 is
  port (
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    RAZ : in STD_LOGIC;
    H : in STD_LOGIC
  );
  end component design_1_Compteur_3bits_0_0;
  component design_1_Encodeur_0_0 is
  port (
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PA1 : out STD_LOGIC;
    PA2 : out STD_LOGIC;
    PB1 : out STD_LOGIC;
    PB2 : out STD_LOGIC;
    INH : in STD_LOGIC
  );
  end component design_1_Encodeur_0_0;
  signal Compteur_3bits_0_S : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Encodeur_0_PA1 : STD_LOGIC;
  signal Encodeur_0_PA2 : STD_LOGIC;
  signal Encodeur_0_PB1 : STD_LOGIC;
  signal Encodeur_0_PB2 : STD_LOGIC;
  signal H_1 : STD_LOGIC;
  signal INH_1 : STD_LOGIC;
  signal RAZ_1 : STD_LOGIC;
begin
  H_1 <= H;
  INH_1 <= INH;
  PA1 <= Encodeur_0_PA1;
  PA2 <= Encodeur_0_PA2;
  PB1 <= Encodeur_0_PB1;
  PB2 <= Encodeur_0_PB2;
  Q(2 downto 0) <= Compteur_3bits_0_S(2 downto 0);
  RAZ_1 <= RAZ;
Compteur_3bits_0: component design_1_Compteur_3bits_0_0
     port map (
      H => H_1,
      RAZ => RAZ_1,
      S(2 downto 0) => Compteur_3bits_0_S(2 downto 0)
    );
Encodeur_0: component design_1_Encodeur_0_0
     port map (
      INH => INH_1,
      PA1 => Encodeur_0_PA1,
      PA2 => Encodeur_0_PA2,
      PB1 => Encodeur_0_PB1,
      PB2 => Encodeur_0_PB2,
      Q(2 downto 0) => Compteur_3bits_0_S(2 downto 0)
    );
end STRUCTURE;
