library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is
	port(
		d: in std_logic;
		clk: in std_logic;
		q: out std_logic
	);
end entity;

architecture one of d_flip_flop is
	signal n1 : std_logic;
	signal not_clk: std_logic;
begin
	latch1 : entity work.d_latch port map (
		d => d,
		clk => not_clk,
		q => n1
	);
	latch2 : entity work.d_latch port map (
		d => n1,
		clk => clk,
		q => q
	);

	not_clk <= not clk;
end architecture;
