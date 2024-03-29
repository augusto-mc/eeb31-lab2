library ieee;
use ieee.std_logic_1164.all;

entity test_d_flip_flop is
end entity;

architecture one of test_d_flip_flop is
	signal clk: std_logic;
	signal d: std_logic;
	signal q: std_logic;
	signal new_test: std_logic;
begin
	instance : entity work.d_flip_flop port map(
		clk => clk,
		d => d,
		q => q
	);
	process
	begin

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';

		clk <= '0';
		d <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		assert q = d;
		d <= not d;
		wait for 10 ns;
		assert q = not d;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		assert q = d;
		clk <= '0';
		wait for 10 ns;
		assert q = d;


		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';

		clk <= '0';
		d <= '1';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		assert q = d;
		d <= not d;
		wait for 10 ns;
		assert q = not d;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		assert q = d;
		clk <= '0';
		wait for 10 ns;
		assert q = d;




		wait for 10 ms;
	end process;
end architecture;
