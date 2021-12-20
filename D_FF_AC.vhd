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
-- CREATED		"Fri Sep 17 23:48:03 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY D_FF_AC IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		CLR :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC
	);
END D_FF_AC;

ARCHITECTURE bdf_type OF D_FF_AC IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



PROCESS(CLK,SYNTHESIZED_WIRE_0)
BEGIN
IF (SYNTHESIZED_WIRE_0 = '0') THEN
	Q <= '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q <= D;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(CLR);



END bdf_type;