library ieee;
use ieee.std_logic_1164.all;

entity test_mux is
end entity;

architecture one of test_mux is
	signal new_test: std_logic;
	signal s: std_logic;
	signal d0: std_logic;
	signal d1: std_logic;
	signal y: std_logic;
begin
	est: entity work.mux port map(
		s => s,
		d0 => d0,
		d1 => d1,
		y => y
	);
	process
	begin
		report "testing mux";

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "test 000";
		s <= '0';
		d0 <= '0';
		d1 <= '0';
		wait for 10 ns;
		assert y = '0';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "test 001";
		s <= '0';
		d0 <= '1';
		d1 <= '0';
		wait for 10 ns;
		assert y = '1';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "test 010";
		s <= '0';
		d0 <= '0';
		d1 <= '1';
		wait for 10 ns;
		assert y = '0';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "test 011";
		s <= '0';
		d0 <= '1';
		d1 <= '1';
		wait for 10 ns;
		assert y = '1';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "test 100";
		s <= '1';
		d0 <= '0';
		d1 <= '0';
		wait for 10 ns;
		assert y = '0';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "test 101";
		s <= '1';
		d0 <= '1';
		d1 <= '0';
		wait for 10 ns;
		assert y = '0';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "test 110";
		s <= '1';
		d0 <= '0';
		d1 <= '1';
		wait for 10 ns;
		assert y = '1';

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';
		report "test 111";
		s <= '1';
		d0 <= '1';
		d1 <= '1';
		wait for 10 ns;
		assert y = '1';

		wait for 10 ms;
	end process;
end architecture;
