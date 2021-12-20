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
-- CREATED		"Sun Dec 19 17:12:54 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY bitwise_and IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END bitwise_and;

ARCHITECTURE bdf_type OF bitwise_and IS 

SIGNAL	Z_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



Z_ALTERA_SYNTHESIZED(0) <= A(0) AND B(0);


Z_ALTERA_SYNTHESIZED(1) <= A(1) AND B(1);


Z_ALTERA_SYNTHESIZED(2) <= A(2) AND B(2);


Z_ALTERA_SYNTHESIZED(3) <= A(3) AND B(3);


Z_ALTERA_SYNTHESIZED(4) <= A(4) AND B(4);


Z_ALTERA_SYNTHESIZED(5) <= A(5) AND B(5);


Z_ALTERA_SYNTHESIZED(6) <= A(6) AND B(6);


Z_ALTERA_SYNTHESIZED(7) <= A(7) AND B(7);

Z <= Z_ALTERA_SYNTHESIZED;

END bdf_type;