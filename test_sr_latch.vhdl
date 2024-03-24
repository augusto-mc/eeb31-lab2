library ieee;
use ieee.std_logic_1164.all;

entity test_sr_latch is
end entity;

architecture one of test_sr_latch is
	signal reset: std_logic;
	signal set: std_logic;
	signal q: std_logic;
	signal not_q: std_logic;
	signal new_test: std_logic;
begin
	instance : entity work.sr_latch port map(
		reset => reset,
		set => set,
		q => q,
		not_q => not_q
	);
	process
	begin
		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "reset = 1, set = 1";

		reset <= '1';
		set <= '1';
		wait for 10 ns;
		assert q = '0';
		assert not_q = '0';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
	
		report "reset = 0, set = 1";
		reset <= '0';
		set <= '1';
		wait for 10 ns;
		assert q = '1';
		assert not_q = '0';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
	
		report "reset = 1, set = 0";
		reset <= '1';
		set <= '0';
		wait for 10 ns;
		assert q = '0';
		assert not_q = '1';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
	
		report "testing remeber one";
		reset <= '0';
		set <= '1';
		wait for 10 ns;
		set <= '0';
		wait for 10 ns;
		assert q = '1';
		assert not_q = '0';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
	
		report "testing remember zero";
		reset <= '1';
		set <= '0';
		wait for 10 ns;
		reset <= '0';
		wait for 10 ns;
		assert q = '0';
		assert not_q = '1';

		wait for 10 ms;
	end process;
end architecture;
