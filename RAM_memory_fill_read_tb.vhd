LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY work;

ENTITY RAM_memory_fill_read_tb IS
END ENTITY RAM_memory_fill_read_tb;

architecture TB of RAM_memory_fill_read_tb IS

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
we <= '1', '0' AFTER 990 ps;

din  <= "0000000000000001" AFTER 0 ps, 
        "0000000000000011" AFTER 100 ps, 
        "0000000000000101" AFTER 200 ps, 
        "0000000000000111" AFTER 300 ps,
        "0000000000001001" AFTER 400 ps,
        "0000000000001011" AFTER 500 ps,
        "0000000000001101" AFTER 600 ps,
        "0000000000001111" AFTER 700 ps,
        "0000000000010001" AFTER 800 ps,
        "0000000000010011" AFTER 900 ps
        ;

addr  <="00000000" AFTER 0 ps, 
        "00000001" AFTER 100 ps,  
        "00000010" AFTER 200 ps, 
        "00000011" AFTER 300 ps,
        "00000100" AFTER 400 ps,
        "00000101" AFTER 500 ps,
        "00000110" AFTER 600 ps,
        "00000111" AFTER 700 ps,
        "00001000" AFTER 800 ps,
        "00001001" AFTER 900 ps, --Τώρα θα διαβάσουμε την μνήμη από την αρχή
        "00000000" AFTER 1000 ps, 
        "00000001" AFTER 1100 ps,  
        "00000010" AFTER 1200 ps, 
        "00000011" AFTER 1300 ps,
        "00000100" AFTER 1400 ps,
        "00000101" AFTER 1500 ps,
        "00000110" AFTER 1600 ps,
        "00000111" AFTER 1700 ps,
        "00001000" AFTER 1800 ps,
        "00001001" AFTER 1900 ps,
        "00001010" AFTER 2000 ps
        ;


end TB;
