----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2021 09:40:43
-- Design Name: 
-- Module Name: Test_Dec_3v8 - Behavioral
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

entity Test_Dec_3v8 is
--  Port ( );
end Test_Dec_3v8;

architecture Behavioral of Test_Dec_3v8 is

component Dec_3v8 is
    Port ( E : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end component Dec_3v8;

signal s_E : STD_LOGIC_VECTOR (2 downto 0);
signal s_S : STD_LOGIC_VECTOR (7 downto 0);


begin

U0 : Dec_3v8 
    Port map (  E => s_E,
                S => s_S );

stimuli : process

begin

s_E <= "000";
wait for 100ns;
s_E <= "001";
wait for 100ns;
s_E <= "010";
wait for 100ns;
s_E <= "011";
wait for 100ns;
s_E <= "100";
wait for 100ns;
s_E <= "101";
wait for 100ns;
s_E <= "110";
wait for 100ns;
s_E <= "111";
wait;

end process;

end Behavioral;
