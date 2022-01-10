LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY work;

ENTITY decoder_tb IS
END ENTITY decoder_tb;

ARCHITECTURE TB OF decoder_tb IS

    COMPONENT decoder IS
        PORT(            
                CLK :  IN  STD_LOGIC;
                CE :  IN  STD_LOGIC;
                CLR :  IN  STD_LOGIC;
                Carry :  IN  STD_LOGIC;
                Zero :  IN  STD_LOGIC;
                IR :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
                EN_IN :  OUT  STD_LOGIC;
                RAM :  OUT  STD_LOGIC;
                ALU_S2 :  OUT  STD_LOGIC;
                ALU_S4 :  OUT  STD_LOGIC;
                MUXA :  OUT  STD_LOGIC;
                MUXC :  OUT  STD_LOGIC;
                ALU_S1 :  OUT  STD_LOGIC;
                ALU_S0 :  OUT  STD_LOGIC;
                MUXB :  OUT  STD_LOGIC;
                EN_PC :  OUT  STD_LOGIC;
                ALU_S3 :  OUT  STD_LOGIC;
                EN_DA :  OUT  STD_LOGIC
            );
    END COMPONENT;

       


    signal Carry, Zero, EN_IN, RAM, ALU_S0, ALU_S1, ALU_S2, ALU_S3, ALU_S4, MUXA, MUXB, MUXC, EN_PC, EN_DA : STD_LOGIC;
    signal IR :  STD_LOGIC_VECTOR(7 DOWNTO 0);
   
    signal CLK  : STD_LOGIC := '0';
    signal CE  : STD_LOGIC := '0';
    signal CLR  : STD_LOGIC := '1';      
    

begin
    TB : decoder port map(CLR, CE, CLR, Carry, Zero, IR, EN_IN, RAM, ALU_S2, ALU_S4, MUXA, MUXC, ALU_S1, ALU_S0, MUXB, EN_PC, ALU_S3, EN_DA);
    
    --Carry, Zero, IR
    CLR <= '1', '0' AFTER 100 ps;
    CLK <= NOT CLK AFTER 50 ps;
    CE <= NOT CLK AFTER 50 ps;

    Carry <= '0';
    Zero <= '0';
    IR  <="00000000", "00000000" AFTER 100 ps, "00000000" AFTER 200 ps, "00000000" AFTER 300 ps, "00000000" AFTER 400 ps --LOAD
    ,"01000000" AFTER 500 ps, "01000000" AFTER 600 ps, "01000000" AFTER 700 ps, "01000000" AFTER 800 ps     --ADD
    ,"00010000" AFTER 900 ps, "00010000" AFTER 1000 ps, "00010000" AFTER 1100 ps, "00010000" AFTER 1200 ps  --AND
    ,"01100000" AFTER 1300 ps, "01100000" AFTER 1400 ps, "01100000" AFTER 1500 ps, "01100000" AFTER 1600 ps --SUB
    ,"10100000" AFTER 1700 ps, "10100000" AFTER 1800 ps, "10100000" AFTER 1900 ps, "10100000" AFTER 2000 ps --INPUT
    ,"11100000" AFTER 2100 ps, "11100000" AFTER 2200 ps, "11100000" AFTER 2300 ps, "11100000" AFTER 2400 ps --OUTPUT
    ,"10000000" AFTER 2500 ps, "10000000" AFTER 2600 ps, "10000000" AFTER 2700 ps, "10000000" AFTER 2800 ps --JUMP U
    ,"10010000" AFTER 2900 ps, "10010000" AFTER 3000 ps, "10010000" AFTER 3100 ps, "10010000" AFTER 3200 ps --JUMP Z
    ,"10011000" AFTER 3300 ps, "10011000" AFTER 3400 ps, "10011000" AFTER 3500 ps, "10011000" AFTER 3600 ps --JUMP C
    ,"10010100" AFTER 3700 ps, "10010100" AFTER 3800 ps, "10010100" AFTER 3900 ps, "10010100" AFTER 4000 ps --JUMP NZ
    ,"10011100" AFTER 4100 ps, "10011100" AFTER 4200 ps, "10011100" AFTER 4300 ps, "10011100" AFTER 4400 ps; --JUMP NC

end TB;