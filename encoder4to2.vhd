library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity encoder4to2 is
	port(a, b, c, d, e: in STD_LOGIC;
			x, y, z : out STD_LOGIC);
end encoder4to2;

architecture Behavior of encoder4to2 is
begin
	x <= e and(c or d);
	y <= e and((b and not c) or d);
	z <= e and(a or b or c or d);
end Behavior;