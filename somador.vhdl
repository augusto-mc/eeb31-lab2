library IEEE;
use IEEE.std_logic_1164.all;

entity somador is
	port (
		a : in std_logic;
		b : in std_logic;
		i : in std_logic;
		s : out std_logic;
		o : out std_logic
	);
end entity;

architecture one of somador is
begin
	o <= (not a and b and i) or (a and (b or i));
	s <= a xor b xor i;
end architecture;