--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri Mar  5 12:17:08 2021
--Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
--Command     : generate_target Graduateur_1.bd
--Design      : Graduateur_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Graduateur_1 is
  port (
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    -- Projet Gradateur
  MLI : out STD_LOGIC;
    Seuil : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Graduateur_1 : entity is "Graduateur_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Graduateur_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Graduateur_1 : entity is "Graduateur_1.hwdef";
end Graduateur_1;

architecture STRUCTURE of Graduateur_1 is
  component Graduateur_1_Compteur_0_0 is
  port (
    Fosc : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Graduateur_1_Compteur_0_0;
  component Graduateur_1_Comparateur_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A_inf_B : out STD_LOGIC
  );
  end component Graduateur_1_Comparateur_0_0;
  signal CLK_1 : STD_LOGIC;
  signal Comparateur_0_A_inf_B : STD_LOGIC;
  signal Compteur_0_Q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Seuil_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Graduateur_1_CLK, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  A(7 downto 0) <= Compteur_0_Q(7 downto 0);
  CLK_1 <= CLK;
  MLI <= Comparateur_0_A_inf_B;
  Seuil_1(7 downto 0) <= Seuil(7 downto 0);
  rst_1 <= rst;
Comparateur_0: component Graduateur_1_Comparateur_0_0
     port map (
      A(7 downto 0) => Compteur_0_Q(7 downto 0),
      A_inf_B => Comparateur_0_A_inf_B,
      B(7 downto 0) => Seuil_1(7 downto 0)
    );
Compteur_0: component Graduateur_1_Compteur_0_0
     port map (
      Fosc => CLK_1,
      Q(7 downto 0) => Compteur_0_Q(7 downto 0),
      rst => rst_1
    );
end STRUCTURE;
