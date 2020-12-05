Library IEEE;
USE IEEE.Std_logic_1164.all;

ENTITY mealyDectector IS
	PORT (X, clk : IN STD_LOGIC;
		Z : OUT STD_LOGIC);
END mealyDectector;

ARCHITECTURE Behavior OF mealyDectector IS
COMPONENT dFlipFlop IS
	PORT (D, reset, clk : IN STD_LOGIC;
		Q : OUT STD_LOGIC);
		END COMPONENT;
SIGNAL dA, A, B : STD_LOGIC;
BEGIN
	dffB : dFlipFlop PORT MAP(X, '0', clk, B);
	dA <= (NOT X) AND B;
	dffA : dFlipFlop PORT MAP(dA, '0', clk, A);
	Z <= X AND A;
END Behavior;