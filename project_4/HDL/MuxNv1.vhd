library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MuxNv1 is
    generic ( n : integer range 1 to 64 := 4; -- Largeur de l'entée 
              d : integer range 1 to 16 := 4); -- Coef de division (2^d)
    Port ( --SEL : in STD_LOGIC_VECTOR (n-1 downto 0);
           E : in STD_LOGIC_VECTOR (n-1 downto 0);
           S : out STD_LOGIC);
end MuxNv1;

architecture Archi of MuxNv1 is

begin

s <= E(d-1);
end Archi;
