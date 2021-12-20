LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY full_adder_tb IS
END ENTITY full_adder_tb;

architecture TB of full_adder_tb IS

    COMPONENT full_adder IS
        PORT (
            A :  IN  STD_LOGIC;
			B :  IN  STD_LOGIC;
			Cin :  IN  STD_LOGIC;
			Sum :  OUT  STD_LOGIC;
			Cout :  OUT  STD_LOGIC
        );
    END COMPONENT;

    SIGNAL A, B, Cin, Sum, Cout : STD_LOGIC;    

begin 

TB : full_adder PORT MAP(A, B, Cin, Sum, Cout);
A  <='0' AFTER 0 ps, '1' AFTER 100 ps, '0' AFTER 200 ps, '1' AFTER 300 ps, '0' AFTER 400 ps, '1' AFTER 500 ps, '0' AFTER 600 ps, '1' AFTER 700 ps;
B  <='0' AFTER 0 ps, '0' AFTER 100 ps, '1' AFTER 200 ps, '1' AFTER 300 ps, '0' AFTER 400 ps, '0' AFTER 500 ps, '1' AFTER 600 ps, '1' AFTER 700 ps;
Cin<='0' AFTER 0 ps, '0' AFTER 100 ps, '0' AFTER 200 ps, '0' AFTER 300 ps, '1' AFTER 400 ps, '1' AFTER 500 ps, '1' AFTER 600 ps, '1' AFTER 700 ps;

end TB;
