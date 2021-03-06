LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY carryLookaheadAdder IS
	PORT (A,B : IN std_logic_vectOR (7 downto 0);
		s: OUT std_logic_vectOR (7 downto 0);
		cout : OUT std_logic);
END carryLookaheadAdder;

ARCHITECTURE Behavior of carryLookaheadAdder IS
COMPONENT FA IS
	PORT (A,B,cin : IN std_logic;
	G,P,S : OUT std_logic);
END COMPONENT;
SIGNAL C0,C1,C2,C3,C4,C5,C6,C7, G0,G1,G2,G3,G4,G5,G6,G7, P0,P1,P2,P3,P4,P5,P6,P7 : std_logic;
BEGIN
	FA0: FA PORT MAP(A(0),B(0),C0,G0,P0,S(0));
	FA1: FA PORT MAP(A(1),B(1),C1,G1,P1,S(1));
	FA2: FA PORT MAP(A(2),B(2),C2,G2,P2,S(2));
	FA3: FA PORT MAP(A(3),B(3),C3,G3,P3,S(3));
	FA4: FA PORT MAP(A(4),B(4),C4,G4,P4,S(4));
	FA5: FA PORT MAP(A(5),B(5),C5,G5,P5,S(5));
	FA6: FA PORT MAP(A(6),B(6),C6,G6,P6,S(6));
	FA7: FA PORT MAP(A(7),B(7),C7,G7,P7,S(7));
	C0 <= '0';
	C1 <= G0 OR (C0 AND P0);
	C2 <= G1 OR (P1 AND G0) OR (C0 AND P0 AND P1);
	C3 <= G2 OR (P2 AND G1) OR (P2 AND P1 AND G0) OR (C0 AND P0 AND P1 AND P2);
	C4 <= G3 OR (P3 AND G2) OR (P3 AND P2 AND G1) OR (P3 AND P2 AND P1 AND G0) OR (C0 AND P3 AND P2 AND P1 AND P0);
	C5 <= G4 OR (P4 AND G3)OR (P4 AND P3 AND G2) OR (P4 AND P3 AND P2 AND G1) OR (P4 AND P3 AND P2 AND P1 AND G0) OR (C0 AND P4 AND P3 AND P2 AND P1 AND P0);
	C6 <= G5 OR (P5 AND G4)OR (P5 AND P4 AND G3)OR (P5 AND P4 AND P3 AND G2) OR (P5 AND P4 AND P3 AND P2 AND G1) OR (P5 AND P4 AND P3 AND P2 AND P1 AND G0) OR (C0 AND P5 AND P4 AND P3 AND P2 AND P1 AND P0);
	C7 <= G6 OR (P6 AND G5)OR (P6 AND P5 AND G4)OR (P6 AND P5 AND P4 AND G3)OR (P6 AND P5 AND P4 AND P3 AND G2) OR (P6 AND P5 AND P4 AND P3 AND P2 AND G1) OR (P6 AND P5 AND P4 AND P3 AND P2 AND P1 AND G0) OR (C0 AND P6 AND P5 AND P4 AND P3 AND P2 AND P1 AND P0);
END Behavior;