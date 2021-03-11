----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2021 14:08:36
-- Design Name: 
-- Module Name: Encodeur - Behavioral
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

entity Encodeur is
    Port ( e0 : in STD_LOGIC;
           e1 : in STD_LOGIC;
           e2 : in STD_LOGIC;
           e3 : in STD_LOGIC;
           V : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (1 downto 0));
end Encodeur;

architecture Behavioral of Encodeur is

begin

V <= e0 or E1 or E2 or E3; 

S <= "11" when (e3 = '1')
    else "10" when (e2 = '1')
    else "01" when (e1 = '1')
    else "00" when (e0 = '1')
    else "--";



end Behavioral;
