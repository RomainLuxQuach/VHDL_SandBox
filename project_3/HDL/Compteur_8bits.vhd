----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2021 09:17:52
-- Design Name: 
-- Module Name: Compteur_8bits - Archi
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Compteur_8bits is
    Port ( Fosc : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end Compteur_8bits;

architecture Archi of Compteur_8bits is
signal tmp : std_logic_vector(7 downto 0);
begin

Count : process (rst, Fosc)
begin

if (rst = '1') then
    tmp <= (others => '0');
--else if (Fosc' event and Fosc = '1') then 
else if ( rising_edge(Fosc)) then -- Front montant de Fosc (fait la même chose que la ligne commenté juste au dessus)  
    tmp <= tmp + 1;
    end if;
end if;
    
end process Count;

q <= tmp;

end Archi;
