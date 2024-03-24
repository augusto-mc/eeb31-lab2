library ieee;
use ieee.std_logic_1164.all;

entity test_somador4 is
end entity;

architecture one of test_somador4 is
	signal a : std_logic_vector(3 downto 0);
	signal b : std_logic_vector(3 downto 0);
	signal i : std_logic;
	signal o : std_logic;
	signal s : std_logic_vector(3 downto 0);
begin
	instance : entity work.somador4
		port map(
			a => a,
			b => b,
			i => i,
			o => o,
			s => s
		);

	process
	begin
		report "running_test(somador4)";
		-- teste básico
		a <= "0001";
		b <= "0001";
		i <= '0';
		wait for 100 ns;
		assert s = "0010" and o = '0'
		report "FAIL(somador4, teste básico)"
			severity error;

		-- teste zerado
		a <= "0000";
		b <= "0000";
		i <= '0';
		wait for 100 ns;
		assert s = "0000" and o = '0'
		report "FAIL(somador4, teste zerado)"
			severity error;

		-- teste overflow
		a <= "1111";
		b <= "0001";
		i <= '0';
		wait for 100 ns;
		assert s = "0000" and o = '1'
		report "FAIL(somador4, teste overflow)"
			severity error;

		-- teste carry in
		a <= "0000";
		b <= "0000";
		i <= '1';
		wait for 100 ns;
		assert s = "0001" and o = '0'
		report "FAIL(somador4, teste carry in)"
			severity error;

		wait for 10 ms;
	end process;
end architecture;