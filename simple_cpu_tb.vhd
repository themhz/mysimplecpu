LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY work;

ENTITY simple_cpu_tb IS
END ENTITY simple_cpu_tb;

ARCHITECTURE TB OF simple_cpu_tb IS

    COMPONENT  simple_cpu IS
        PORT(
            CLR :  IN  STD_LOGIC;
		    CLK :  IN  STD_LOGIC;
		    -- CE :  IN  STD_LOGIC;
		    ACC :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		    dout :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)

            );
    END COMPONENT;
signal CLR  : STD_LOGIC := '1';
signal CLK  : STD_LOGIC := '0';
-- signal CE  : STD_LOGIC  := '0';
signal ACC  : STD_LOGIC_vector (7 downto 0);
signal dout : STD_LOGIC_vector (15 downto 0);
begin
    TB : simple_cpu port map(CLR, CLK, ACC, dout);
    CLR <= '1' AFTER 0 ps, '0' AFTER 50 ps;
    CLK <= NOT CLK AFTER 50 ps;
    -- CE <= '1' AFTER 1 ps;
end TB;