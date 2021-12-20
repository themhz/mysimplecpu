LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY bitwise_inv_tb IS
END ENTITY bitwise_inv_tb;

architecture TB of bitwise_inv_tb IS

    COMPONENT bitwise_inv IS
        PORT (
			EN :  IN  STD_LOGIC;
			A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

	SIGNAL EN :STD_LOGIC;
    SIGNAL A, Z :STD_LOGIC_VECTOR(7 DOWNTO 0);

begin 

TB : bitwise_inv PORT MAP(EN, A, Z);
EN <= '0'AFTER 0 ps, '1'AFTER 100 ps, '1'AFTER 200 ps, '0'AFTER 300 ps;
A  <="00000000" AFTER 0 ps, "00000001" AFTER 100 ps, "00010011" AFTER 200 ps, "00010011" AFTER 300 ps;


end TB;
