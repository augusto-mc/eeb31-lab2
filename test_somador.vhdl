library ieee;
use ieee.std_logic_1164.all;

entity test_somador is
end entity;

architecture one of test_somador is
	component somador
		port (
			a : in std_logic;
			b : in std_logic;
			i : in std_logic;
			s : out std_logic;
			o : out std_logic
		);
	end component;

	signal a : std_logic;
	signal b : std_logic;
	signal i : std_logic;
	signal s : std_logic;
	signal o : std_logic;

	type map5 is array (0 to 7) of std_logic_vector(4 downto 0);
	constant test_data : map5 := (
		"00000",
		"00101",
		"01001",
		"01110",
		"10001",
		"10110",
		"11010",
		"11111"
	);

	signal current : std_logic_vector(4 downto 0);

begin
	instance : somador port map(
		a => a,
		b => b,
		i => i,
		s => s,
		o => o
	);

	process is
	begin
		report "running_test(somador)";
		for j in test_data'range loop

			a <= test_data(j)(4);
			b <= test_data(j)(3);
			i <= test_data(j)(2);
			wait for 100 ns;

			assert s = test_data(j)(0) and o = test_data(j)(1)
			report "FAIL(somador) { "
				& "a:" & std_logic'image(a)
				& "b:" & std_logic'image(b)
				& "i:" & std_logic'image(i)
				& "expected:" & std_logic'image(test_data(j)(0)) & std_logic'image(test_data(j)(1))
				& "output:  " & std_logic'image(o) & std_logic'image(s)
				& " }"
				severity error;

			current <= test_data(j);
		end loop;
		wait for 10 ms;
	end process;
end architecture;