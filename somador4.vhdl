library ieee;
use ieee.std_logic_1164.all;

entity somador4 is
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		i : in std_logic;
		o : out std_logic;
		s : out std_logic_vector(3 downto 0)
	);
end entity;

architecture one of somador4 is
	signal i_o : std_logic_vector(2 downto 0);
begin
	s0 : entity work.somador
		port map(
			a => a(0),
			b => b(0),
			i => i,
			s => s(0),
			o => i_o(0)
		);
	s1 : entity work.somador
		port map(
			a => a(1),
			b => b(1),
			i => i_o(0),
			s => s(1),
			o => i_o(1)
		);
	s2 : entity work.somador
		port map(
			a => a(2),
			b => b(2),
			i => i_o(1),
			s => s(2),
			o => i_o(2)
		);
	s3 : entity work.somador
		port map(
			a => a(3),
			b => b(3),
			i => i_o(2),
			s => s(3),
			o => o
		);
end architecture;