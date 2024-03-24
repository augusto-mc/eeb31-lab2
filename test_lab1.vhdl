library ieee;
use ieee.std_logic_1164.all;

entity test_lab1 is
end entity;

architecture um of test_lab1 is
	signal a : std_logic_vector(3 downto 0);
	signal b : std_logic_vector(3 downto 0);
	signal sel : std_logic;
	signal sa : std_logic_vector(6 downto 0);
	signal sb : std_logic_vector(6 downto 0);
	signal ss : std_logic_vector(6 downto 0);
	signal so : std_logic_vector(6 downto 0);

	signal clk : std_logic;
	signal run : std_logic;

	signal ta : std_logic_vector(3 downto 0);
	signal tb : std_logic_vector(3 downto 0);
	signal tsel : std_logic;

	signal esa : std_logic_vector(6 downto 0);
	signal esb : std_logic_vector(6 downto 0);
	signal ess : std_logic_vector(6 downto 0);
	signal eso : std_logic_vector(6 downto 0);

begin
	lab1 : entity work.lab1 port map (
		a => a,
		b => b,
		sel => sel,
		sa => sa,
		sb => sb,
		ss => ss,
		so => so
		);

	process (clk)
	begin
		if rising_edge(clk) then
			a <= ta;
			b <= tb;
			sel <= tsel;
		end if;
	end process;

	process (clk)
	begin
		if falling_edge(clk) then
			assert sa = esa and sb = esb and ss = ess and so = eso
			report "failed when"
				& " a:"
				& to_string(a)

				& " b:"
				& to_string(b)

				& " sel:"
				& to_string(sel)

				& " esa:"
				& to_string(esa)
				& " sa:"
				& to_string(sa)

				& " esb:"
				& to_string(esb)
				& " sb:"
				& to_string(sb)

				& " ess:"
				& to_string(esb)
				& " ss:"
				& to_string(ss)

				& " eso"
				& to_string(eso)
				& " so:"
				& to_string(so)

				severity error;
		end if;
	end process;

	process
	begin
		clk <= '0';
		wait for 25 ns;

		report "test: 1 - 1 == 0";

		tsel <= '1';
		ta <= x"1";
		tb <= x"1";

		esa <= 7x"4f";
		esb <= 7x"4f";
		eso <= 7x"01";
		ess <= 7x"01";

		wait for 25 ns;
		clk <= not clk;
		wait for 50 ns;
		clk <= not clk;
		wait for 25 ns;
		report "test: 2 - 2 == 0";

		tsel <= '1';
		ta <= x"2";
		tb <= x"2";

		esa <= 7x"12";
		esb <= 7x"12";
		eso <= 7x"01";
		ess <= 7x"01";

		wait for 25 ns;
		clk <= not clk;
		wait for 50 ns;
		clk <= not clk;
		wait for 25 ns;
		report "test: 3 - 3 == 0";

		tsel <= '1';
		ta <= x"3";
		tb <= x"3";

		esa <= 7x"06";
		esb <= 7x"06";
		eso <= 7x"01";
		ess <= 7x"01";

		wait for 25 ns;
		clk <= not clk;
		wait for 50 ns;
		clk <= not clk;
		wait for 25 ns;
		report "test: 4 - 4 == 0";

		tsel <= '1';
		ta <= x"4";
		tb <= x"4";

		esa <= 7x"4c";
		esb <= 7x"4c";
		eso <= 7x"01";
		ess <= 7x"01";

		wait for 25 ns;
		clk <= not clk;
		wait for 50 ns;
		clk <= not clk;
		wait for 25 ns;
		report "test: 5 - 5 == 0";

		tsel <= '1';
		ta <= x"5";
		tb <= x"5";

		esa <= 7x"24";
		esb <= 7x"24";
		eso <= 7x"01";
		ess <= 7x"01";

		wait for 25 ns;
		clk <= not clk;
		wait for 50 ns;
		clk <= not clk;
		wait for 25 ns;
		report "test: 6 - 6 == 0";

		tsel <= '1';
		ta <= x"6";
		tb <= x"6";

		esa <= 7x"20";
		esb <= 7x"20";
		eso <= 7x"01";
		ess <= 7x"01";

		wait for 25 ns;
		clk <= not clk;
		wait for 50 ns;
		clk <= not clk;
		wait for 25 ns;
		report "test: 7 - 7 == 0";

		tsel <= '1';
		ta <= x"7";
		tb <= x"7";

		esa <= 7x"0f";
		esb <= 7x"0f";
		eso <= 7x"01";
		ess <= 7x"01";

		wait for 25 ns;
		clk <= not clk;
		wait for 50 ns;
		clk <= not clk;
		wait for 25 ns;
		wait for 100000000 ms;
	end process;
end architecture;