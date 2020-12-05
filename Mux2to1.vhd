library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity mux is
    Port ( Z , I0, I1 : in  STD_LOGIC;
           S : out STD_LOGIC);
end mux;
architecture Behavior of mux is
begin
    S <= ((not Z)and I0) or (Z and I1);
end Behavior;