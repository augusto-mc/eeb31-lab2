library ieee;
use ieee.std_logic_1164.all;

entity shift_register is
	port(
		load: in std_logic;
	  clk: in std_logic;
		s: in std_logic;
	  p: in std_logic;
	  q: out std_logic
	);
end entity;

architecture one of shift_register is
	signal mux_bus : std_logic_vector(1 downto 0);
	signal y_d : std_logic;
begin
	mux0 : entity work.mux port map (
		s => load,
		d => mux_bus,
		y => y_d
	);
	ffd0 : entity work.d_flip_flop port map (
		d => y_d,
		clk => clk,
		q => q
	);
	mux_bus(0) <= s;
	mux_bus(1) <= p;
end architecture;