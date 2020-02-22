LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE work.ALL;

ENTITY FourBitAdder IS
    PORT (
        A, B : IN std_logic_vector(3 DOWNTO 0);
        Cin : IN std_logic;
        SUM : OUT std_logic_vector(3 DOWNTO 0);
        Cout : OUT std_logic);

END FourBitAdder;

ARCHITECTURE Structural OF FourBitAdder IS

    SIGNAL carry1, carry2, carry3 : std_logic;

BEGIN
    f1 : ENTITY FullAdder(structural) PORT MAP
        (fA => A(0), fB => B(0), fCarryIn => Cin, fSum => SUM(0), fCarryOut => carry1);

    f2 : ENTITY FullAdder(structural) PORT MAP
        (fA => A(1), fB => B(1), fCarryIn => carry1, fSum => SUM(1), fCarryOut => carry2);

    f3 : ENTITY FullAdder(structural) PORT MAP
        (fA => A(2), fB => B(2), fCarryIn => carry2, fSum => SUM(2), fCarryOut => carry3);

    f4 : ENTITY FullAdder(structural) PORT MAP
        (fA => A(3), fB => B(3), fCarryIn => carry3, fSum => SUM(3), fCarryOut => Cout);
END;