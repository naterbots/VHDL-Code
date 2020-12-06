library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity decoder2to4 is
port( A,B,C: in STD_LOGIC; D0,D1,D2,D3 : out STD_LOGIC);
end decoder2to4;

architecture Behavior of decoder2to4 is
begin
D0 <= C AND((NOT A) AND (NOT B));
D1 <= C AND(A and (NOT B));
D2 <= C AND((NOT A) and B);
D3 <= C AND(A and B);
end Behavior;