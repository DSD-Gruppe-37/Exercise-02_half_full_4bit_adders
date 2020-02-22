LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.ALL;

ENTITY HalfAdder IS
    PORT (
        hA, hB : IN std_logic;
        hS, hC : OUT std_logic);
END HalfAdder;

ARCHITECTURE dataflow OF HalfAdder IS
BEGIN
    hS <= hA XOR hB;
    hC <= hA AND hB;
END dataflow;

ARCHITECTURE behavioural OF HalfAdder IS
BEGIN
    hafa : PROCESS (hA, hB)
    BEGIN
        IF hA = '1' THEN
            hS <= NOT hB;
            hC <= hB;
        ELSE
            hS <= hB;
            hC <= '0';
        END IF;
    END PROCESS hafa;
END behavioural;

ARCHITECTURE structural OF HalfAdder IS
BEGIN
    u1 : ENTITY AND_GATE PORT MAP
        (i1 => hA, i2 => hB, o1 => hC);
    u2 : ENTITY XOR_GATE PORT MAP
        (i1 => hA, i2 => hB, o1 => hS);
END;