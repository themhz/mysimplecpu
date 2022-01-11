LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY ALU2 IS
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

END ENTITY ALU2;


architecture ALU of ALU2 IS
-- Χρήση του component ALU για την αρχιεκτονική της καινούργια ALU
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

    COMPONENT bitwise_or_custom IS
        PORT (
            A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		    B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		    Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT mux2x1_8bit IS
        PORT (
            SEL :  IN  STD_LOGIC;
            A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            Yout :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL NEWALUS4, NEWALUS3, NEWALUS2, NEWALUS1, NEWALUS0, NEWALUCout : STD_LOGIC;
    SIGNAL NEWALUA, NEWALUB, NEWALUZ :STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL NEWbitwise_or_customA, NEWbitwise_or_customB, NEWbitwise_or_customZ :STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL NEWmux2x1_8bitA, NEWmux2x1_8bitB, NEWmux2x1_8bitYout :STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL NEWmux2x1_8bitSEL : STD_LOGIC;

begin 

-- αντιστοιχία των τιμών των εξωτερικών σημάτων με την ALU
NEWALU : ALU PORT MAP(NEWALUS4, NEWALUS3, NEWALUS2, NEWALUS1, NEWALUS0, NEWALUA, NEWALUB, NEWALUCout, NEWALUZ);
NEWbitwise_or_custom : bitwise_or_custom PORT MAP(NEWbitwise_or_customA, NEWbitwise_or_customB, NEWbitwise_or_customZ);
NEWmux2x1_8bit : mux2x1_8bit PORT MAP(NEWmux2x1_8bitSEL, NEWmux2x1_8bitA, NEWmux2x1_8bitB, NEWmux2x1_8bitYout);

NEWALUS4 <= S4; 
NEWALUS3 <= S3;
NEWALUS2 <= S2;
NEWALUS1 <= S1; 
NEWALUS0 <= S0;
NEWALUA <= A;
NEWALUB <= B; 
NEWbitwise_or_customA <=A;
NEWbitwise_or_customB <=B;


NEWmux2x1_8bitA <=NEWALUZ;
NEWmux2x1_8bitB <=NEWbitwise_or_customZ;
NEWmux2x1_8bitSEL<=S5;

Z <= NEWmux2x1_8bitYout;

end ALU;
