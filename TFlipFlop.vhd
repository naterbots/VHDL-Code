Library IEEE;
USE IEEE.Std_logic_1164.all;
ENTITY TFlipFlop IS
	PORT (T, CLK, RESET : IN STD_LOGIC;
		Q : OUT STD_LOGIC);
END TFlipFlop;

ARCHITECTURE Behavior OF TFlipFlop IS
	COMPONENT dFlipFlop IS
		PORT (D, reset, clk : IN STD_LOGIC;
			Q : OUT STD_LOGIC);
		END COMPONENT;
	SIGNAL sD, sQ : STD_LOGIC;
	BEGIN
		sD <= T XOR sQ;
		dFF: dFlipFlop PORT MAP(sD,RESET,CLK,sQ);
		Q <= sQ;
END Behavior;