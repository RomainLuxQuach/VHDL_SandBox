-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Feb 26 15:58:36 2021
-- Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Travail/ProjetVHDL/Project_2/Project_2.srcs/sources_1/bd/design_1/ip/design_1_Compteur_3bits_0_0/design_1_Compteur_3bits_0_0_stub.vhdl
-- Design      : design_1_Compteur_3bits_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Compteur_3bits_0_0 is
  Port ( 
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    RAZ : in STD_LOGIC;
    H : in STD_LOGIC
  );

end design_1_Compteur_3bits_0_0;

architecture stub of design_1_Compteur_3bits_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S[2:0],RAZ,H";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Compteur_3bits,Vivado 2019.1";
begin
end;
