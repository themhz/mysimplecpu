-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
-- CREATED		"Sun Jan 09 23:40:51 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY bitwise_or_TB IS 
END bitwise_or_TB;

ARCHITECTURE TB OF bitwise_or_TB IS 

Component bitwise_or is
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
End Component;

SIGNAL	A :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	B :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	Z :  STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN 
TB: bitwise_or port map (A,B,Z);

A <="00000000", "00000000" after 100 ps, "00000001" after 200 ps, "00000001" after 300 ps; 
B <="00000000", "00000001" after 100 ps, "00000000" after 200 ps, "00000001" after 300 ps;
END TB;