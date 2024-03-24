library ieee;
use ieee.std_logic_1164.all;

entity test_inversor is
end entity;

architecture one of test_inversor is
	signal a : std_logic;
	signal s : std_logic;
	signal en : std_logic;
begin
	instance : entity work.inversor port map(
		a => a,
		s => s,
		en => en
		);
	process
	begin

		report "running_test(test_inversor)";
		en <= '1';
		a <= '0';
		wait for 100 ns;
		assert s = '1' report "failed(test_inversor)" severity error;

		en <= '1';
		a <= '1';
		wait for 100 ns;
		assert s = '0' report "failed(test_inversor)" severity error;


		en <= '0';
		a <= '0';
		wait for 100 ns;
		assert s = '0';

		en <= '0';
		a <= '1';
		wait for 100 ns;
		assert s = '1';

		wait for 10 ms;
	end process;
end architecture;