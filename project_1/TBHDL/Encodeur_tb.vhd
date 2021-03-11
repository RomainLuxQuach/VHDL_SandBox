----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2021 14:42:21
-- Design Name: 
-- Module Name: Test_Encodeur - Behavioral
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

entity Test_Encodeur is
--  Port ( );
end Test_Encodeur;

architecture Behavioral of Test_Encodeur is
-- Declaration du composant
component Encodeur is 
    Port ( e0 : in STD_LOGIC;
           e1 : in STD_LOGIC;
           e2 : in STD_LOGIC;
           e3 : in STD_LOGIC;
           V : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR(1 downto 0));
end component Encodeur;
--Declaration des signaux internes
signal s_e0, s_e1, s_e2, s_e3, s_V : std_logic;
signal s_S : std_logic_vector(1 downto 0);

begin
U0 : Encodeur
port map ( e0 => s_e0, e1 => s_e1, e2 => s_e2, e3 => s_e3, V => s_V, S => s_S );

--Affectation des entrées du composant

stimuli : process
begin
s_e0 <= '0';
s_e1 <= '0';
s_e2 <= '0';
s_e3 <= '0';
wait for 50 ns;

s_e0 <= '1';
s_e1 <= '0';
s_e2 <= '0';
s_e3 <= '0';
wait for 50 ns;

s_e0 <= '0';
s_e1 <= '1';
s_e2 <= '0';
s_e3 <= '0';
wait for 50 ns;

s_e0 <= '1';
s_e1 <= '1';
s_e2 <= '0';
s_e3 <= '0';
wait for 50 ns;

s_e0 <= '0';
s_e1 <= '0';
s_e2 <= '1';
s_e3 <= '0';
wait for 50 ns;

s_e0 <= '1';
s_e1 <= '0';
s_e2 <= '1';
s_e3 <= '0';
wait for 50 ns;

s_e0 <= '0';
s_e1 <= '1';
s_e2 <= '1';
s_e3 <= '0';
wait for 50 ns;

s_e0 <= '1';
s_e1 <= '1';
s_e2 <= '1';
s_e3 <= '0';
wait for 50 ns;

s_e0 <= '0';
s_e1 <= '0';
s_e2 <= '0';
s_e3 <= '1';
wait for 50 ns;

s_e0 <= '1';
s_e1 <= '0';
s_e2 <= '0';
s_e3 <= '1';
wait for 50 ns;

s_e0 <= '0';
s_e1 <= '1';
s_e2 <= '0';
s_e3 <= '1';
wait for 50 ns;

s_e0 <= '1';
s_e1 <= '1';
s_e2 <= '0';
s_e3 <= '1';
wait for 50 ns;

s_e0 <= '0';
s_e1 <= '0';
s_e2 <= '1';
s_e3 <= '1';
wait for 50 ns;

s_e0 <= '1';
s_e1 <= '0';
s_e2 <= '1';
s_e3 <= '1';
wait for 50 ns;

s_e0 <= '0';
s_e1 <= '1';
s_e2 <= '1';
s_e3 <= '1';
wait for 50 ns;

s_e0 <= '1';
s_e1 <= '1';
s_e2 <= '1';
s_e3 <= '1';
wait for 50 ns;
wait;

end process stimuli;

end Behavioral;
