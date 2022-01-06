LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY RAM_tb IS
END ENTITY RAM_tb;

architecture TB of RAM_tb IS

    COMPONENT RAM IS
        PORT (
			din : In std_logic_vector (15 downto 0);
            addr: In std_logic_vector (7 downto 0);
            we, clk : In std_logic;
            dout: Out std_logic_vector (15 downto 0)
        );
    END COMPONENT;
	
    SIGNAL din, dout: std_logic_vector (15 downto 0);
    SIGNAL addr: std_logic_vector (7 downto 0);
    SIGNAL we : std_logic;    
    SIGNAL clk : std_logic:= '0';    

begin 

TB : RAM PORT MAP(din, addr, we, clk, dout);
clk <= Not clk after 50 ps;

we <= '1';

din  <= "0000000000000000" AFTER 0 ps, 
        "0000000000000001" AFTER 50 ps, 
        "0000000000000010" AFTER 100 ps, 
        "0000000000000011" AFTER 150 ps,
        "0000000000000100" AFTER 200 ps,
        "0000000000000101" AFTER 250 ps,
        "0000000000000110" AFTER 300 ps,
        "0000000000000111" AFTER 350 ps,
        "0000000000001000" AFTER 400 ps,
        "0000000000001001" AFTER 450 ps
        ;

addr  <="00000000" AFTER 0 ps, 
        "00000001" AFTER 50 ps,  
        "00000010" AFTER 100 ps, 
        "00000011" AFTER 150 ps,
        "00000100" AFTER 200 ps,
        "00000101" AFTER 250 ps,
        "00000110" AFTER 300 ps,
        "00000111" AFTER 350 ps,
        "00001000" AFTER 400 ps,
        "00001001" AFTER 450 ps
        ;

end TB;
