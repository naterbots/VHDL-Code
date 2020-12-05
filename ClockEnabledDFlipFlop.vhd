Library IEEE;
USE IEEE.Std_logic_1164.all;

ENTITY ClockEnabledDFlipFlop IS
	PORT (DIN, RESET, CLK, CE : IN STD_LOGIC;
		Q : OUT STD_LOGIC);
END ClockEnabledDFlipFlop;

ARCHITECTURE Behavior OF ClockEnabledDFlipFlop IS
	COMPONENT mux IS
		PORT(z,i0,i1 : IN STD_LOGIC;
			s : OUT STD_LOGIC);
		END COMPONENT;
	COMPONENT FlipFlop IS
		PORT (D, reset, clk : IN STD_LOGIC;
			Q : OUT STD_LOGIC);
		END COMPONENT;
	SIGNAL sD, sQ : STD_LOGIC;
	BEGIN
		muxA: mux PORT MAP(CE,sQ,din,sD);
		dFF: FlipFlop PORT MAP(sD,RESET,CLK,sQ);
		Q <= sQ;
END Behavior;