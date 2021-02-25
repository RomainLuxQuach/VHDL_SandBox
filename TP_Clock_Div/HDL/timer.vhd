----------------------------------------------------------------------------------
-- Timer
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;   -- Used for unsigned type

entity timer is
    generic (
        MAX     : integer
    );
    Port ( 
        -- Inputs
        clk : in std_logic;
        rst : in std_logic;
        en  : in std_logic;

        -- Outputs
        timer_out   : out std_logic
    );
end entity;

architecture rtl of timer is
    -- Signal intermédiaire
    signal q : integer range 0 to MAX;
        
begin

    -- Fonctionnement du timer
    gestion_compteur : process(clk, rst)
    begin
        if rst = '1' then
            q <= 0;
            timer_out <= '0';
        elsif rising_edge(clk) then
            if en = '1' then
                if q > MAX-1 then
                    q <= 0;
                    timer_out <= '1';
                else 
                    q <= q + 1;
                    timer_out <= '0';
                end if; 
            end if;
        end if;
    end process;
end rtl;
