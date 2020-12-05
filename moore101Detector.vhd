Library IEEE;
USE IEEE.Std_logic_1164.all;

ENTITY mooreDetector IS
	PORT (X, clk : IN STD_LOGIC;
		Z : OUT STD_LOGIC);
END mooreDetector;

ARCHITECTURE Behavior OF mooreDetector IS
COMPONENT dFlipFlop IS
	PORT (D, reset, clk : IN STD_LOGIC;
		Q : OUT STD_LOGIC);
		END COMPONENT;
SIGNAL dA, dB, A, B : STD_LOGIC;
BEGIN
	dA <= ((NOT X AND B) OR (X AND A AND NOT B));
	dffA : dFlipFlop PORT MAP(dA,'0',clk,A);
	dffB : dFlipFlop PORT MAP(X,'0',clk,B);
	Z <= A AND B;
END Behavior;