Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;

Entity RAM is 
Port(din: In std_logic_vector (15 downto 0);
    addr: In std_logic_vector (7 downto 0);
    we, clk : In std_logic;
    dout: Out std_logic_vector (15 downto 0));
End RAM;

Architecture mem256x16_v2_rtl of RAM is
    
Type vector_array is array (0 to 255) of std_logic_vector (15 downto 0);

-- signal memory : vector_array:=(
--     0=> "1010000000001010",
--     1=> "0100000000001010",
--     2=> "1001110000000100",
--     3=> "0000000011111111",
--     4=> "1110000000001010",
--     5=> "1000000000000000",
--     6=> "0000000000000000",
--     7=> "0000000000000000",
--     8=> "0000000000000000",
--     9=> "0000000000000000",
--     10=> "0000000010000000",
--     others => "0000000000000000");

-- signal memory : vector_array:=(
--     0=> "0000000000000010",    
--     1=> "0100000000000001",
--     2=> "0100000000000001",    
--     others=> "0000000000000000");

signal memory : vector_array:=(
    0=> "0000000000000001",
    1=> "0100000010000001",
    2=> "1001110000000001",
    3=> "0000000000000000",
    4=> "0000000000000000",
    5=> "0000000000000000",
    others=> "0000000000000000");

Begin
Process (clk)
Begin
IF rising_edge(clk) then
    IF (we = '1') then
        memory(conv_integer(addr)) <= din;
    End IF;
End IF;
End Process;

dout <= memory(conv_integer(addr));

End mem256x16_v2_rtl;

