LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY RAM_er52_tb IS
END ENTITY RAM_er52_tb;

architecture TB of RAM_er52_tb IS

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

--Τώρα θα γράψουμε στην μνήμη
we <= '1', '0' AFTER 790 ps;

din  <= "1010000001100100" AFTER 0 ps, 
        "0100000000000010" AFTER 100 ps, 
        "1110000001111001" AFTER 200 ps, 
        "1001110000000001" AFTER 300 ps,
        "1010000010010111" AFTER 400 ps,
        "1110000010010101" AFTER 500 ps,   
        "0000000010010111" AFTER 600 ps,
        "0000000001100100" AFTER 700 ps
        ;

addr  <="00000000" AFTER 0 ps, 
        "00000001" AFTER 100 ps,  
        "00000010" AFTER 200 ps, 
        "00000011" AFTER 300 ps,
        "00000100" AFTER 400 ps,
        "00000101" AFTER 500 ps,
        "01001011" AFTER 600 ps,
        "11101001" AFTER 700 ps,
        "00000000" AFTER 800 ps, --Τώρα θα διαβάσουμε την μνήμη από την αρχή
        "00000001" AFTER 900 ps,
        "00000010" AFTER 1000 ps,
        "00000011" AFTER 1100 ps, 
        "01001011" AFTER 1200 ps,
        "11101001" AFTER 1300 ps           
        ;


end TB;
