----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2021 09:43:28
-- Design Name: 
-- Module Name: Test_Compteur - Behavioral
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


entity Test_Compteur is
generic (M : integer range 1 to 64 := 13);
--  Port ( );
end Test_Compteur;

architecture Behavioral of Test_Compteur is

component Compteur is
    generic (N : integer range 1 to 64 := 64);
    Port ( Fosc : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (N-1 downto 0));
end component Compteur;

signal s_Fosc, s_rst : std_logic;
signal s_Q : std_logic_vector(M-1 downto 0);

begin
-- Instanciation du composant
U0 : Compteur
    generic map (N => M)
    Port map ( Fosc => s_Fosc,
           rst => s_rst,
           Q => s_Q);

-- Process horloge
Clock : process
begin
    s_Fosc <= '0';
    wait for 5 ns;
    s_Fosc <= '1';
    wait for 5 ns;
end process;

-- Process stimuli
process
begin 
    s_rst <= '1';
    wait for 100 ns;
    s_rst <= '0';
    wait;

end process;


end Behavioral;
