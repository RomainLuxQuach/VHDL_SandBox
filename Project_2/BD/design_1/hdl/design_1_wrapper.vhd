--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri Feb 26 16:03:37 2021
--Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    INH : in STD_LOGIC;
    H : in STD_LOGIC;
    RAZ : in STD_LOGIC;
    PA1 : out STD_LOGIC;
    PA2 : out STD_LOGIC;
    PB1 : out STD_LOGIC;
    PB2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      H => H,
      INH => INH,
      PA1 => PA1,
      PA2 => PA2,
      PB1 => PB1,
      PB2 => PB2,
      Q(2 downto 0) => Q(2 downto 0),
      RAZ => RAZ
    );
end STRUCTURE;
