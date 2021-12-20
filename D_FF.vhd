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
-- CREATED		"Fri Sep 17 23:22:15 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY D_FF IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC
	);
END D_FF;

ARCHITECTURE bdf_type OF D_FF IS 



BEGIN 



PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	Q <= D;
END IF;
END PROCESS;


END bdf_type;