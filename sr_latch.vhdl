library ieee;
use ieee.std_logic_1164.all;

entity sr_latch is
	port (
	  set: in std_logic;
	  reset: in std_logic;
	  q: inout std_logic;
	  not_q: inout std_logic
	);
end entity;

architecture one of sr_latch is
	  signal signal_q: std_logic;
	  signal signal_not_q: std_logic;
begin
	q <= signal_q;
	signal_q <= reset nor not_q;

	not_q <= signal_not_q;
	signal_not_q <= set nor q;
end architecture;
