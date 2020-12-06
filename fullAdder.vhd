LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY fullAdder IS
PORT (a,b,cIN : IN std_logic;
g,p,s : OUT std_logic);
END fullAdder;

ARCHITECTURE Behavior OF fullAdder IS
BEGIN
g <= a AND b;
p <= a OR b;
s <= a XOR b XOR cin;
END Behavior;