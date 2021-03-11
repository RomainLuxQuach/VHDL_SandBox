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

entity Compteur is
    generic (N : integer range 1 to 64 := 64); -- Taille du vecteur de sortie
    Port ( Fosc : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (N-1 downto 0));
end Compteur;

architecture Archi of Compteur is
signal tmp : std_logic_vector(N-1 downto 0);
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
