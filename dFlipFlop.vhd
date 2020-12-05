Library IEEE;
USE IEEE.Std_logic_1164.all;

ENTITY dFlipflop IS
	PORT (D, reset, clk : IN STD_LOGIC;
		Q : OUT STD_LOGIC);
END dFlipflop;

ARCHITECTURE Behavior OF dFlipflop IS
BEGIN
	PROCESS (reset, clk)
	BEGIN
		IF reset = '1' THEN
			Q <= '0';
		ELSIF clk'EVENT AND clk = '1' THEN
			Q <= D;
		END IF;
	END PROCESS;
END Behavior;