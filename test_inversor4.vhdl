library ieee;
use ieee.std_logic_1164.all;

entity test_inversor4 is
end entity;

architecture one of test_inversor4 is
	signal a : std_logic_vector(3 downto 0);
	signal s : std_logic_vector(3 downto 0);
	signal en : std_logic;
begin
	instance : entity work.inversor4
		port map(
			a => a,
			s => s,
			en => en
		);
	process
	begin
		report "running_test(test_inversor4)";
		en <= '1';
		report "enabled, output must be inverted";
		
		a <= "0000";
		wait for 100 ns;
		assert s = "1111" report "failed 1" severity error;

		a <= "1111";
		wait for 100 ns;
		assert s = "0000" report "failed 2" severity error;

		a <= "1010";
		wait for 100 ns;
		assert s = "0101" report "failed 3" severity error;

		a <= "0101";
		wait for 100 ns;
		assert s = "1010" report "failed 4" severity error;

		en <= '0';
		report "disabled, should bypass the input";

		a <= "0000";
		wait for 100 ns;
		assert s = "0000" report "failed 5" severity error;

		a <= "1111";
		wait for 100 ns;
		assert s = "1111" report "failed 6" severity error;

		a <= "1010";
		wait for 100 ns;
		assert s = "1010" report "failed 7" severity error;

		a <= "0101";
		wait for 100 ns;
		assert s = "0101" report "failed" severity error;

		wait for 1000 ms;
	end process;
end architecture;