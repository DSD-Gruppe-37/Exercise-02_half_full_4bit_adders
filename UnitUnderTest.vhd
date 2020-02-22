LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.ALL;

ENTITY UnitUnderTest IS
    PORT (
        SW : IN std_logic_vector(8 DOWNTO 0);
        LEDR : OUT std_logic_vector(4 DOWNTO 0));
 		  END;
ARCHITECTURE structural OF UnitUnderTest IS

BEGIN


    UUT0 : ENTITY FourBitAdder

        PORT MAP
        (
            -- INPUTS
            Cin => SW(0),
            A(3 DOWNTO 0) => SW(4 DOWNTO 1),
            B(3 DOWNTO 0) => SW(8 DOWNTO 5),
            -- OUTPUTS
            SUM(3 DOWNTO 0) => LEDR(3 DOWNTO 0),
            Cout => LEDR(4)
        );
		  END structural; -- structural