library ieee;
use ieee.std_logic_1164.all;

entity hex_to_7 is
    port (
        e : in std_logic_vector(3 downto 0);
        s : out std_logic_vector(6 downto 0) -- a->6, g->0
    );
end entity;

architecture um of hex_to_7 is
    signal a : std_logic;
    signal b : std_logic;
    signal c : std_logic;
    signal d : std_logic;
    signal na : std_logic;
    signal nb : std_logic;
    signal nc : std_logic;
    signal nd : std_logic;
begin
    a <= e(3);
    b <= e(2);
    c <= e(1);
    d <= e(0);
    na <= not a;
    nb <= not b;
    nc <= not c;
    nd <= not d;

    s(6) <= (na and nb and nc and d) or
    (na and b and nc and nd) or
    (a and nb and c and d) or
    (a and b and nc and d);

    s(5) <= (na and b and nc and d) or (b and c and nd) or (a and c and d) or (a and b and nd);
    s(4) <= (na and nb and c and nd) or (a and b and nd) or (a and b and c);
    s(3) <= (na and nb and nc and d) or (na and b and nc and nd) or (b and c and d) or (a and nb and c and nd);
    s(2) <= (na and d) or (na and b and nc) or (nb and nc and d);
    s(1) <= (na and nb and d) or (na and nb and c) or (na and c and d) or (a and b and nc and d);
    s(0) <= (na and nb and nc) or (na and b and c and d) or (a and b and nc and nd);

end architecture;