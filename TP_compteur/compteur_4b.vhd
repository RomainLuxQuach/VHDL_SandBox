----------------------------------------------------------------------------------
-- Compteur 4 bits
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;   -- Used for unsigned type

entity compteur_4b is
    generic (
        MAX     : integer;
        NB_BITS : integer
    );
    Port ( 
        -- Inputs
        clk : in std_logic;
        rst : in std_logic;
        en  : in std_logic;
        inc : in std_logic;

        -- Outputs
        s   : out std_logic_vector(NB_BITS-1 downto 0)
    );
end entity;

architecture rtl of compteur_4b is
    -- Signaux intermédiaires
    signal q : unsigned (NB_BITS-1 downto 0) := (others=>'0');
    -- Constants
    constant VMAX : integer range (0 to NB_BITS) := 2**NB_BITS;
        
begin

    -- Fonctionnement du compteur synchrone
    gestion_compteur : process(clk, rst)
    begin
        if rst = '1' then
            q <= (others=>'0');
        elsif rising_edge(clk) then
            if en = '1' then
                if inc = '1' then
                    -- if q > to_unsigned(VMAX,NB_BITS)
                    if q > (others=>'1')-1 then
                        q <= (others=>'0');
                    else 
                        q <= q + 1;
                        -- q <= q + to_unsigned(1,NB_BITS);
                    end if; 
                else
                    -- if q > to_unsigned(VMAX,NB_BITS)
                    if q < (others=>'0')+1 then
                        q <= (others=>'1');
                    else 
                        q <= q - 1;
                        -- q <= q + to_unsigned(1,NB_BITS);
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Assignation du signal de sortie
    s <= std_logic_vector(q);
    
end rtl;
