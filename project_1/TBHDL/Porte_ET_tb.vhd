----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2021 13:26:12
-- Design Name: 
-- Module Name: Test_Porte_ET - Behavioral
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

entity Test_Porte_ET is
--  Port ( );
end Test_Porte_ET;

architecture Behavioral of Test_Porte_ET is
--Declaration du composant Porte_ET à tester
component Porte_ET is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           a_et_b : out STD_LOGIC);
end component Porte_ET;
-- Declaration des signaux internes
signal s_a, s_b, s_a_et_b : std_logic;


begin
-- Relier les signaux internes aux composants
U0: Porte_ET
port map ( a => s_a, b => s_b, a_et_b => s_a_et_b );


-- Affectation des signaux d'entrées du composant
stimuli : process
begin

s_a <= '0';
s_b <= '0';
wait for 100 ns;
s_a <= '1';
wait for 200 ns;
s_b <= '1';
wait;
end process stimuli;

end Behavioral;
