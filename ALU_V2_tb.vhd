LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- USE ieee.numeric_std.all;

LIBRARY work;

ENTITY ALU_V2_tb IS
END ENTITY ALU_V2_tb;

architecture TB of ALU_V2_tb IS

    COMPONENT ALU_V2 IS
        PORT (
            S5 :  IN  STD_LOGIC;
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

    signal S5,S4,S3,S2,S1,S0,Cout : STD_LOGIC;
    signal A, B, Z: STD_LOGIC_VECTOR(7 DOWNTO 0);

begin 

TB : ALU_V2 PORT MAP(S5 ,S4, S3, S2, S1, S0, A, B, Cout, Z);
S5<='0' AFTER 0 ps, '0' AFTER 100 ps, '0' AFTER 200 ps, '0' AFTER 300 ps, '0' AFTER 400 ps, '0' AFTER 500 ps, '0' AFTER 600 ps, '0' AFTER 700 ps, '0' AFTER 800 ps, '1' AFTER 900 ps;
S4<='0' AFTER 0 ps, 'X' AFTER 100 ps, 'X' AFTER 200 ps, 'X' AFTER 300 ps, '0' AFTER 400 ps, '1' AFTER 500 ps, '1' AFTER 600 ps, '0' AFTER 700 ps, '0' AFTER 800 ps, 'X' AFTER 900 ps;
S3<='0' AFTER 0 ps, 'X' AFTER 100 ps, 'X' AFTER 200 ps, 'X' AFTER 300 ps, '1' AFTER 400 ps, 'X' AFTER 500 ps, 'X' AFTER 600 ps, '0' AFTER 700 ps, '1' AFTER 800 ps, 'X' AFTER 900 ps;
S2<='0' AFTER 0 ps, 'X' AFTER 100 ps, 'X' AFTER 200 ps, 'X' AFTER 300 ps, '1' AFTER 400 ps, '1' AFTER 500 ps, '0' AFTER 600 ps, '1' AFTER 700 ps, '0' AFTER 800 ps, 'X' AFTER 900 ps;
S1<='0' AFTER 0 ps, '0' AFTER 100 ps, '1' AFTER 200 ps, '1' AFTER 300 ps, '0' AFTER 400 ps, '0' AFTER 500 ps, '0' AFTER 600 ps, '0' AFTER 700 ps, '0' AFTER 800 ps, 'X' AFTER 900 ps;
S0<='0' AFTER 0 ps, '1' AFTER 100 ps, '0' AFTER 200 ps, '1' AFTER 300 ps, '0' AFTER 400 ps, '0' AFTER 500 ps, '0' AFTER 600 ps, '0' AFTER 700 ps, '0' AFTER 800 ps, 'X' AFTER 900 ps;

A<="00001010" AFTER 0 ps;
B<="01011001" AFTER 0 ps;


end TB;
