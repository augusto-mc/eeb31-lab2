library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port (
		s : in std_logic;
		d0 : in std_logic;
		d1 : in std_logic;
		y : out std_logic
	);
end entity;

architecture one of mux is
begin
	y <= ((not s) and d0) or (s and d1);
end architecture;
