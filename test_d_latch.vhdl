library ieee;
use ieee.std_logic_1164.all;

entity test_d_latch is
end entity;

architecture one of test_d_latch is
	signal clk: std_logic;
	signal d: std_logic;
	signal q: std_logic;
	signal new_test: std_logic;
begin
	instance : entity work.d_latch port map(
		clk => clk,
		d => d,
		q => q
	);
	process
	begin

		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';

		clk <= '1';
		d <= '0';
		wait for 10 ns;
		assert d = q;
		clk <= '0';
		wait for 10 ns;
		assert d = q;
		d <= not d;
		wait for 10 ns;
		assert d = not q;
		clk <= '1';
		wait for 10 ns;
		assert d = q;


		new_test <= '1';
		wait for 5 ns;
		new_test <= '0';

		clk <= '1';
		d <= '1';
		wait for 10 ns;
		assert d = q;
		clk <= '0';
		wait for 10 ns;
		assert d = q;
		d <= not d;
		wait for 10 ns;
		assert d = not q;
		clk <= '1';
		wait for 10 ns;
		assert d = q;





		wait for 10 ms;
	end process;
end architecture;
