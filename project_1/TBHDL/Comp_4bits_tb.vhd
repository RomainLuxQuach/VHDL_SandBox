----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2021 16:04:45
-- Design Name: 
-- Module Name: Test_Comp_4bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

 

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

 

entity Test_Comp_4bits is
--  Port ( );
end Test_Comp_4bits;

 

architecture Behavioral of Test_Comp_4bits is
component Comp_4bits is
    Port ( A            : in    STD_LOGIC_VECTOR (3 downto 0);
           B            : in    STD_LOGIC_VECTOR (3 downto 0);
           A_inf_B_in   : in    STD_LOGIC;
           A_eg_B_in    : in    STD_LOGIC;
           A_sup_B_in   : in    STD_LOGIC;
           A_inf_b_out  : out   STD_LOGIC;
           A_eg_B_out   : out   STD_LOGIC;
           A_sup_B_out  : out   STD_LOGIC);
           
end component Comp_4bits;

 

signal s_A              :    STD_LOGIC_VECTOR (3 downto 0);      
signal s_B              :    STD_LOGIC_VECTOR (3 downto 0); 
signal s_A_inf_B_in     :    STD_LOGIC;                     
signal s_A_eg_B_in      :    STD_LOGIC;                     
signal s_A_sup_B_in     :    STD_LOGIC;                     
signal s_A_inf_b_out    :    STD_LOGIC;                     
signal s_A_eg_B_out     :    STD_LOGIC;                     
signal s_A_sup_B_out    :    STD_LOGIC;    
                           

 

begin
U0:  Comp_4bits 
    Port map ( A         => s_a,
               B         => s_b,
           A_inf_B_in   => s_A_inf_B_in,
           A_eg_B_in    => s_A_eg_B_in,
           A_sup_B_in   => s_A_sup_B_in,
           A_inf_b_out  => s_A_inf_b_out,
           A_eg_B_out   => s_A_eg_B_out,
           A_sup_B_out  => s_A_sup_B_out);

stimuli : process
begin

s_A <= "0011";
s_B <= "1001";

s_A_inf_B_in <= '0';
s_A_eg_B_in <= '1';
s_A_sup_B_in <= '0';
wait for 200 ns;

s_A_inf_B_in <= '1';
s_A_eg_B_in <= '0';
s_A_sup_B_in <= '0';
wait for 200 ns;

s_A_inf_B_in <= '0';
s_A_eg_B_in <= '0';
s_A_sup_B_in <= '1';
wait;


end process;
end Behavioral;