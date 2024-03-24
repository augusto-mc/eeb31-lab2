library ieee;
use ieee.std_logic_1164.all;

entity lab1 is 
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		sel : in std_logic;
		sa : out std_logic_vector(6 downto 0);
		sb : out std_logic_vector(6 downto 0);
		ss : out std_logic_vector(6 downto 0);
		so : out std_logic_vector(6 downto 0)
	);
end entity;

architecture um of lab1 is
	signal ss_sig : std_logic_vector(3 downto 0);
	signal so_sig : std_logic_vector(3 downto 0);
	signal so_aux : std_logic;
begin
	so_sig(0) <= sel xor so_aux;
	so_sig(1) <= '0';
	so_sig(2) <= '0';
	so_sig(3) <= '0';

	a_7 : entity work.hex_to_7
		port map(
			e => a,
			s => sa
		);

	b_7 : entity work.hex_to_7
		port map (
			e => b,
			s => sb
		);

	ss_7 : entity work.hex_to_7
		port map (
			e => ss_sig,
			s => ss
		);

	so_7 : entity work.hex_to_7
		port map (
			e => so_sig,
			s => so
		);

	sumsub : entity work.sumsub
		port map (
			a  => a,
			b  => b,
			sel  => sel,
			s  => ss_sig,
			o  => so_aux
		);

end architecture;