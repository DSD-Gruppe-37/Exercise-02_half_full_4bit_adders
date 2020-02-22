LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY AND_GATE IS
    PORT (
        i1, i2 : IN std_logic;
        o1 : OUT std_logic);
END AND_GATE;

ARCHITECTURE dataflow OF AND_GATE IS
BEGIN
    o1 <= i1 AND i2;
END;