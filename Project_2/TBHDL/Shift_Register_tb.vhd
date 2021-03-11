


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Test_Shift_Register is
--  Port ( );
end Test_Shift_Register;

architecture Behavioral of Test_Shift_Register is

signal s_h, s_sens, s_sr, s_sl, s_raz : std_logic;
signal s_q : std_logic_vector (3 downto 0);
begin

Shift_inst : entity work.Shift_Register
port map (
    h => s_h,
    raz => s_raz,
    sens => s_sens,
    sr => s_sr,
    sl => s_sl,
    q => s_q
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
s_raz <= '1';
wait for 40 ns;
s_raz <= '0';
s_sens <= '1';
s_SR <= '1';
wait for 60 ns;
s_sr <= '0';
wait;

end process;





end Behavioral;
