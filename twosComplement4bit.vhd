LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY twosComplement4bit IS
PORT(A: IN std_logic_vector(3 downto 0);
S : OUT std_logic_vector(3 downto 0);
Cout : OUT std_logic);
END twosComplement4bit;

ARCHITECTURE Behavior OF twosComplement4bit IS
COMPONENT HA IS
PORT(x,y: IN std_logic;
S, cout : OUT std_logic);
END COMPONENT;
signal C1 : std_logic;
signal C2 : std_logic;
signal C3: std_logic;
signal B0 : std_logic;
signal B1 : std_logic;
signal B2: std_logic;
signal B3: std_logic;
BEGIN
B0<=NOT (A(0));
B1<= NOT (A(1));
B2<= NOT (A(2));
B3<= NOT (A(3));
HA0 : HA PORT MAP(B0,'1',S(0),C1);
HA1 : HA PORT MAP(B1,C1,S(1),C2);
HA2 : HA PORT MAP(B2,C2,S(2),C3);
HA3 : HA PORT MAP(B3,C3,S(3),cout);
END Behavior;