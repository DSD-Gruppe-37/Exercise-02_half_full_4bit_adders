LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY XOR_GATE IS
    PORT (
        i1, i2 : IN std_logic;
        o1 : OUT std_logic);
END XOR_GATE;

ARCHITECTURE dataflow OF XOR_GATE IS
BEGIN
    o1 <= i1 XOR i2;
END;