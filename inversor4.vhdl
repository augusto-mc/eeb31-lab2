library ieee;
use ieee.std_logic_1164.all;

entity inversor4 is
	port (
		a : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		en : in std_logic
	);
end entity;

architecture one of inversor4 is
begin
	i0 : entity work.inversor
		port map(
			a => a(0),
			s => s(0),
			en => en
		);
	i1 : entity work.inversor
		port map(
			a => a(1),
			s => s(1),
			en => en
		);
	i2 : entity work.inversor
		port map(
			a => a(2),
			s => s(2),
			en => en
		);
	i3 : entity work.inversor
		port map(
			a => a(3),
			s => s(3),
			en => en
		);

end architecture;