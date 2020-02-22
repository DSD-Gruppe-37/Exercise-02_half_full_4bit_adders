LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE work.ALL;

ENTITY FullAdder IS
    PORT (
        fA, fB, fCarryIn : IN std_logic;
        fSum, fCarryOut : OUT std_logic);
END FullAdder;

ARCHITECTURE structural OF FullAdder IS

    SIGNAL s1, c1, c2 : std_logic;

BEGIN
    h1 : ENTITY HalfAdder PORT MAP
        (hA => fA, hB => fB, hS => s1, hC => c1);
    h2 : ENTITY HalfAdder PORT MAP
        (hA => s1, hB => fcarryIn, hS => fSum, hC => c2);
    fCarryOut <= c1 OR c2;
END;