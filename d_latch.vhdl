library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
	port(
		d: in std_logic;
		clk: in std_logic;
		q: out std_logic
	);
end entity;

architecture one of d_latch is
	signal reset: std_logic;
	signal set: std_logic;
	signal not_q: std_logic;
begin
	sr_latch : entity work.sr_latch port map (
		reset => reset,
		set => set,
		q => q,
		not_q => not_q
	);

	reset <= clk and not d;
	set <= clk and d;
end architecture;
