--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri Mar  5 12:17:08 2021
--Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
--Command     : generate_target Graduateur_1_wrapper.bd
--Design      : Graduateur_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Graduateur_1_wrapper is
  port (
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    MLI : out STD_LOGIC;
    Seuil : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
end Graduateur_1_wrapper;

architecture STRUCTURE of Graduateur_1_wrapper is
  component Graduateur_1 is
  port (
    rst : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Seuil : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MLI : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Graduateur_1;
begin
Graduateur_1_i: component Graduateur_1
     port map (
      A(7 downto 0) => A(7 downto 0),
      CLK => CLK,
      MLI => MLI,
      Seuil(7 downto 0) => Seuil(7 downto 0),
      rst => rst
    );
end STRUCTURE;
