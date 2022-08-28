LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY sequence_generator_tb IS
END ENTITY sequence_generator_tb;

architecture TB of sequence_generator_tb IS

    COMPONENT sequence_generator_no_devider IS
        PORT (
            CLK :  IN  STD_LOGIC;
            CE :  IN  STD_LOGIC;
            CLR :  IN  STD_LOGIC;
            FETCH :  OUT  STD_LOGIC;
            DECODE :  OUT  STD_LOGIC;
            EXECUTE :  OUT  STD_LOGIC;
            INCREMENT :  OUT  STD_LOGIC
        );
    END COMPONENT;

    SIGNAL FETCH, DECODE, EXECUTE, INCREMENT: STD_LOGIC;    

    signal CLK  : STD_LOGIC := '0';
    signal CE  : STD_LOGIC := '0';
    signal CLR  : STD_LOGIC := '1';     

begin 
TB : sequence_generator_no_devider PORT MAP(CLK, CE, CLR, FETCH, DECODE, EXECUTE, INCREMENT);


CLR <= '1', '0' AFTER 100 ps;
CLK <= NOT CLK AFTER 50 ps;
CE <= '1';

end TB;
