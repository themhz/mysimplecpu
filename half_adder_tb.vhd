LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY half_adder_tb IS
END ENTITY half_adder_tb;

architecture TB of half_adder_tb IS

    COMPONENT half_adder IS
        PORT (
            A : IN  STD_LOGIC;
			B : IN  STD_LOGIC;
			C : OUT  STD_LOGIC;
			S : OUT  STD_LOGIC
        );
    END COMPONENT;

    SIGNAL A, B, C, S : STD_LOGIC;    

begin 

TB : half_adder PORT MAP(A, B, C, S);
A<='0' AFTER 0 ps, '1' AFTER 100 ps, '0' AFTER 200 ps, '1' AFTER 300 ps;
B<='0' AFTER 0 ps, '0' AFTER 100 ps, '1' AFTER 200 ps, '1' AFTER 300 ps;

end TB;
