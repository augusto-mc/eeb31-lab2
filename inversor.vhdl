--en a s
-- 0 0 0
-- 0 1 1
-- 1 0 1
-- 1 1 0
-- xor

library ieee;
use ieee.std_logic_1164.all;

entity inversor is
	port (
		a : in std_logic;
		s : out std_logic;
		en : in std_logic
	);
end entity;

architecture one of inversor is
begin
	s <= en xor a;
end architecture;
