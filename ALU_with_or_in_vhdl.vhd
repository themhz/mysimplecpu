LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY ALU_with_or_in_vhdl IS
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

END ENTITY ALU_with_or_in_vhdl;

architecture ALU of ALU_with_or_in_vhdl IS

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

    SIGNAL vS4, vS3, vS2, vS1, vS0, vCout : STD_LOGIC;
    SIGNAL vA, vB, vZ :STD_LOGIC_VECTOR(7 DOWNTO 0);

begin 

NEWALU : ALU PORT MAP(vS4, vS3, vS2, vS1, vS0, vA, vB, vCout, vZ);

vS4 <= S4; 
vS3 <= S3;
vS2 <= S2;
vS1 <= S1; 
vS0 <= S0;
vA <= A;
vB <= B; 

Z <= (A OR B) when S5 = '1' else vZ;
Cout <= '0' when S5 = '1' else vCout;

end ALU;
