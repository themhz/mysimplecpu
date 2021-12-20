LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY ripple_adder_8bit_tb IS
END ENTITY ripple_adder_8bit_tb;

architecture TB of ripple_adder_8bit_tb IS

    COMPONENT ripple_adder_8bit IS
        PORT (
            Cin : IN STD_LOGIC;
            A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            Cout : OUT STD_LOGIC;
            Sum : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    signal Cin, Cout : STD_LOGIC;
    signal A, B, Sum: STD_LOGIC_VECTOR(7 DOWNTO 0);

begin 

TB : ripple_adder_8bit PORT MAP(Cin, A, B, Cout, Sum);
Cin<='1';

A<="00000000" AFTER 0 ps, "00000010" AFTER 100 ps, "11111111" AFTER 200 ps;
B<="10010001" AFTER 0 ps, "00000001" AFTER 100 ps, "00000001" AFTER 200 ps;

end TB;
