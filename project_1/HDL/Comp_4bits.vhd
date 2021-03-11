----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2021 15:40:46
-- Design Name: 
-- Module Name: Comp_4bits - Behavioral
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

entity Comp_4bits is
    Port ( A            : in STD_LOGIC_VECTOR (3 downto 0);
           B            : in STD_LOGIC_VECTOR (3 downto 0);
           A_inf_B_in   : in STD_LOGIC;
           A_eg_B_in    : in STD_LOGIC;
           A_sup_B_in   : in STD_LOGIC;
           A_inf_B_out  : out STD_LOGIC;
           A_eg_B_out   : out STD_LOGIC;
           A_sup_B_out  : out STD_LOGIC);
end Comp_4bits;

architecture Behavioral of Comp_4bits is

begin

A_eg_B_out <= '1' when (A = B) and (A_eg_B_in = '1') else '0';

A_sup_b_out <= '1' when (( A > B) and (A_eg_B_in = '1')) or ( A_sup_B_in = '1') else '0';

A_inf_b_out <= '1' when (( A < B) and (A_eg_B_in = '1')) or ( A_inf_B_in = '1') else '0';

end Behavioral;
