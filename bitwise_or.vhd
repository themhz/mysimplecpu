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

ENTITY bitwise_or IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END bitwise_or;

ARCHITECTURE bdf_type OF bitwise_or IS 

SIGNAL	Z_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



Z_ALTERA_SYNTHESIZED(0) <= B(0) OR A(0);


Z_ALTERA_SYNTHESIZED(1) <= B(1) OR A(1);


Z_ALTERA_SYNTHESIZED(2) <= B(2) OR A(2);


Z_ALTERA_SYNTHESIZED(3) <= B(3) OR A(3);


Z_ALTERA_SYNTHESIZED(4) <= B(4) OR A(4);


Z_ALTERA_SYNTHESIZED(5) <= B(5) OR A(5);


Z_ALTERA_SYNTHESIZED(6) <= B(6) OR A(6);


Z_ALTERA_SYNTHESIZED(7) <= B(7) OR A(7);

Z <= Z_ALTERA_SYNTHESIZED;

END bdf_type;