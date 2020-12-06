LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY halfAdder IS
PORT(x,y: IN std_logic;
s,cout: OUT std_logic);
END halfAdder;

ARCHITECTURE Behavior OF halfAdder IS
BEGIN
s <= (x XOR y);
cout <= (x AND y);
END Behavior;