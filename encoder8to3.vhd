library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity encoder8to3 is
	port(A, B, C, D, E, F, G, H, enabler0: in STD_LOGIC;
		Z : out STD_LOGIC_VECTOR(2 downto 0));
end encoder8to3;

architecture Behavior of encoder8to3 is
	component encoder4to2 is
		port(a, b, c, d, e: in STD_LOGIC;
			x, y, z : out STD_LOGIC);
		end component;
	signal x0,x1,y0,y1,z0,z1,enabler1 : STD_LOGIC;
	begin	
	encoderB : encoder4to2 port map(E,F,G,H,enabler0,x1,y1,z1);
	enabler1 <= not z1;
	encoderA : encoder4to2 port map(A,B,C,D,enabler1,x0,y0,z0);
	Z(2) <= z1;
	Z(0) <= (y0 or y1);
	Z(1) <= x0 or x1;		
end Behavior;