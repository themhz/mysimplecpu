LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- USE ieee.numeric_std.all;

LIBRARY work;

ENTITY ALU_tb IS
END ENTITY ALU_tb;

architecture TB of ALU_tb IS

    COMPONENT ALU IS
        PORT (
            S4 :  IN  STD_LOGIC;
            S3 :  IN  STD_LOGIC;
            S2 :  IN  STD_LOGIC;
            S1 :  IN  STD_LOGIC;
            S0 :  IN  STD_LOGIC;
            A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            Cout :  OUT  STD_LOGIC;
            Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    signal S4,S3,S2,S1,S0,Cout : STD_LOGIC;
    signal A, B, Z: STD_LOGIC_VECTOR(7 DOWNTO 0);

begin 

-- TB : ALU PORT MAP(S4, S3, S2, S1, S0, A, B, Cout, Z);
-- S4<='0' AFTER 0 ps, '0' AFTER 100 ps, '0' AFTER 200 ps, '0' AFTER 300 ps, '1' AFTER 400 ps, '0' AFTER 500 ps, '0' AFTER 600 ps;
-- S3<='0' AFTER 0 ps, '1' AFTER 100 ps, '1' AFTER 200 ps, '0' AFTER 300 ps, '0' AFTER 400 ps, '0' AFTER 500 ps, '0' AFTER 600 ps;
-- S2<='0' AFTER 0 ps, '1' AFTER 100 ps, '1' AFTER 200 ps, '0' AFTER 300 ps, '1' AFTER 400 ps, '0' AFTER 500 ps, '0' AFTER 600 ps;
-- S1<='0' AFTER 0 ps, '0' AFTER 100 ps, '0' AFTER 200 ps, '0' AFTER 300 ps, '0' AFTER 400 ps, '1' AFTER 500 ps, '1' AFTER 600 ps;
-- S0<='0' AFTER 0 ps, '0' AFTER 100 ps, '0' AFTER 200 ps, '1' AFTER 300 ps, '0' AFTER 400 ps, '0' AFTER 500 ps, '1' AFTER 600 ps;

-- -- 63 + 15                 63 - 15                   63 - 100               63 & 35                increament 64             pass A=57 through          pass B=47 through
-- A<="00111111" AFTER 0 ps, "00111111" AFTER 100 ps, "00111111" AFTER 200 ps, "00111111" AFTER 300 ps, "01000000" AFTER 400 ps, "00111001" AFTER 500 ps, "00000000" AFTER 600 ps;
-- B<="00001111" AFTER 0 ps, "00001111" AFTER 100 ps, "01100100" AFTER 200 ps, "00100011" AFTER 300 ps, "00000000" AFTER 400 ps, "00000000" AFTER 500 ps, "00101111" AFTER 600 ps;


TB : ALU PORT MAP(S4, S3, S2, S1, S0, A, B, Cout, Z);
S4<='0' AFTER 0 ps, 'X' AFTER 100 ps, 'X' AFTER 200 ps, 'X' AFTER 300 ps, '0' AFTER 400 ps, '1' AFTER 500 ps, '0' AFTER 600 ps, '0' AFTER 700 ps;
S3<='0' AFTER 0 ps, 'X' AFTER 100 ps, 'X' AFTER 200 ps, 'X' AFTER 300 ps, '1' AFTER 400 ps, 'X' AFTER 500 ps, '0' AFTER 600 ps, '1' AFTER 700 ps;
S2<='0' AFTER 0 ps, 'X' AFTER 100 ps, 'X' AFTER 200 ps, 'X' AFTER 300 ps, '1' AFTER 400 ps, '1' AFTER 500 ps, '1' AFTER 600 ps, '0' AFTER 700 ps;
S1<='0' AFTER 0 ps, '0' AFTER 100 ps, '1' AFTER 200 ps, '1' AFTER 300 ps, '0' AFTER 400 ps, '0' AFTER 500 ps, '0' AFTER 600 ps, '0' AFTER 700 ps;
S0<='0' AFTER 0 ps, '1' AFTER 100 ps, '0' AFTER 200 ps, '1' AFTER 300 ps, '0' AFTER 400 ps, '0' AFTER 500 ps, '0' AFTER 600 ps, '0' AFTER 700 ps;

A<="10110011" AFTER 0 ps;
B<="01011001" AFTER 0 ps;


end TB;
