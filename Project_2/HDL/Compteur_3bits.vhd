-- Company:
-- Engineer:
--
-- Create Date: 26.02.2021 10:58:46
-- Design Name:
-- Module Name: Compteur_4bits - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Compteur_3bits is
Port ( S : out STD_LOGIC_VECTOR (2 downto 0);
    RAZ : in STD_LOGIC;
    H : in STD_LOGIC);
    end Compteur_3bits;

architecture Behavioral of Compteur_3bits is
signal count : STD_LOGIC_VECTOR (2 downto 0);
begin
Compteur : process(H, RAZ) -- Liste de sensibiltité du process : RAZ --> remise à zéro asynchrone
-- H --> horloge du compteur
begin
    if ( RAZ = '1' ) then -- Remise à zéro sur niveau logique bas
        count <= "000";
        count <= (others => '0');

    else if ( H'event and H = '1') then
        count <= count + 1; -- Compteur sur front montant de H
        end if;
    end if;


end process Compteur;

S <= count;

end Behavioral;