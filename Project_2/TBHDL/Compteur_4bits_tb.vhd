----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.02.2021 11:28:54
-- Design Name: 
-- Module Name: Test_Compteur_4bits - Behavioral
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

entity Test_Compteur_4bits is
--  Port ( );
end Test_Compteur_4bits;

architecture Behavioral of Test_Compteur_4bits is
component Compteur_4bits is
    Port ( E : in STD_LOGIC_VECTOR (3 downto 0);
        S : out STD_LOGIC_VECTOR (3 downto 0);
        RAZ : in STD_LOGIC;
        PREP : in STD_LOGIC;
        H : in STD_LOGIC);
end component Compteur_4bits;

signal S_E, S_S : STD_LOGIC_VECTOR (3 downto 0);
signal s_raz, s_prep, s_h : STD_LOGIC;

begin

U0: Compteur_4bits
    Port map ( E => s_e,
        S => s_s,
        RAZ => s_raz,
        PREP => s_prep,
        H => s_h
        );

Horloge : process
begin 
    s_h <= '0';
    wait for 5 ns;
    s_h <= '1';
    wait for 5 ns;
end process;

stimuli : process

begin 
s_raz <= '0';
s_E <= "0011";
s_prep <= '1';
wait for 30ns;
s_raz <= '1';
wait for 100 ns;
s_prep <= '0';
wait for 45 ns;
s_prep <= '1';
wait;

end process;


end Behavioral;
