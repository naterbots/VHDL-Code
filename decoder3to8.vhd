library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity decoder3to8 is
port(a,b,c: in STD_LOGIC; d: out STD_LOGIC_VECTOR(7 downto 0));
end decoder3to8;

architecture Behavior of decoder3to8 is
component decoder2to4 is
port( A,B,C: in STD_LOGIC; D0,D1,D2,D3 : out STD_LOGIC);
end component;
signal cnot : STD_LOGIC;
begin
cnot <= NOT c;
decoderA : decoder2to4 port map(a,b,cnot,d(0),d(1),d(2),d(3));
decoderB : decoder2to4 port map(a,b,c,d(4),d(5),d(6),d(7));
end Behavior;