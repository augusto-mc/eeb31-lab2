library ieee;
use ieee.std_logic_1164.all;

entity sumsub is 
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		sel : in std_logic;
		s : out std_logic_vector(3 downto 0);
		o : out std_logic
	);
end entity;

architecture um of sumsub is
	signal b_sig : std_logic_vector(3 downto 0);
begin
	sum4 : entity work.somador4
		port map (
			a => a,
			b => b_sig,
			i => sel,
			o => o,
			s => s
		);

	inv4 : entity work.inversor4
		port map (
			a => b,
			s => b_sig,
			en => sel
		);
end architecture;