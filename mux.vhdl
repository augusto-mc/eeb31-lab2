library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port (
		s : in std_logic;
		d : in std_logic_vector(1 downto 0);
		y : out std_logic
	);
end entity;

architecture one of mux is
begin
	y <= ((not s) and d(0)) or (s and d(1));
end architecture;
