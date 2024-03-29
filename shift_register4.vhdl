library ieee;
use ieee.std_logic_1164.all;

entity shift_register4 is
	port(
		clk : in std_logic;
		load : in std_logic;
		s_in : in std_logic;
	  s_out : out std_logic;
	  d_in : in std_logic_vector(3 downto 0);
		d_out : out std_logic_vector(3 downto 0)
	);
end entity;

architecture one of shift_register4 is
begin
	sr0: entity work.shift_register port map (
		load => load,
		clk => clk,
		s => s_in,
		p => d_in(0),
		q => d_out(0)
	);
	sr1: entity work.shift_register port map (
		load => load,
		clk => clk,
		s => d_out(0),
		p => d_in(1),
		q => d_out(1)
	);
	sr2: entity work.shift_register port map (
		load => load,
		clk => clk,
		s => d_out(1),
		p => d_in(2),
		q => d_out(2)
	);
	sr3: entity work.shift_register port map (
		load => load,
		clk => clk,
		s => d_out(2),
		p => d_in(3),
		q => d_out(3)
	);

	s_out <= d_out(3);

end architecture;
