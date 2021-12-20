LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY bitwise_and_tb IS
END ENTITY bitwise_and_tb;

architecture TB of bitwise_and_tb IS

    COMPONENT bitwise_and IS
        PORT (
            A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL A, B, Z :STD_LOGIC_VECTOR(7 DOWNTO 0);

begin 

TB : bitwise_and PORT MAP(A, B, Z);
A  <="00000000" AFTER 0 ps, "00000001" AFTER 100 ps, "00010011" AFTER 200 ps, "00001000" AFTER 300 ps;
B  <="00000001" AFTER 0 ps, "00000001" AFTER 100 ps, "00010001" AFTER 200 ps, "00001000" AFTER 300 ps;

end TB;
