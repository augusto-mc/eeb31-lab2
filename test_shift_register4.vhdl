library ieee;
use ieee.std_logic_1164.all;

entity test_shift_register4 is
end entity;

architecture one of test_shift_register4 is
	signal new_test : std_logic;
	signal clk : std_logic;
	signal load : std_logic;
	signal s_in : std_logic;
	signal s_out : std_logic;
	signal d_in : std_logic_vector(3 downto 0);
	signal d_out : std_logic_vector(3 downto 0);
begin
	est: entity work.shift_register4 port map (
		load => load,
		clk => clk,
		s_in => s_in,
		s_out => s_out,
		d_in => d_in,
		d_out => d_out
	);
	process
	begin

		new_test <= '0';
		wait for 5 ns;
		new_test <= '1';
		report "test carregar 1111 serialmente";
		load <= '0';
		s_in <='1';
		d_in <= "0000";

		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		report "testando primeiro ciclo";
		assert d_out(0) = '1';

		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		report "testando segundo ciclo";
		assert d_out(0) = '1';
		assert d_out(1) = '1';

		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		report "testando terceiro ciclo";
		assert d_out(0) = '1';
		assert d_out(1) = '1';
		assert d_out(2) = '1';

		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		report "testando quarto ciclo";
		assert d_out(0) = '1';
		assert d_out(1) = '1';
		assert d_out(2) = '1';
		assert d_out(3) = '1';
		assert s_out = d_out(3);

		new_test <= '0';
		wait for 5 ns;
		new_test <= '1';
		report "test carregamento 0000 paralelo";
		load <= '1';
		s_in <= '1';
		d_in <= "0000";
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		assert d_out = "0000";

		new_test <= '0';
		wait for 5 ns;
		new_test <= '1';
		report "test carregamento 1001 paralelo";
		load <= '1';
		s_in <= '1';
		d_in <= "1001";
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		assert d_out = "1001";

		wait for 1 ms;
	end process;
end architecture;
