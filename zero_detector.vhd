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
-- CREATED		"Thu Dec 30 01:57:47 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY zero_detector IS 
	PORT
	(
		in0 :  IN  STD_LOGIC;
		in1 :  IN  STD_LOGIC;
		in2 :  IN  STD_LOGIC;
		in3 :  IN  STD_LOGIC;
		in4 :  IN  STD_LOGIC;
		in5 :  IN  STD_LOGIC;
		in6 :  IN  STD_LOGIC;
		in7 :  IN  STD_LOGIC;
		zero :  OUT  STD_LOGIC
	);
END zero_detector;

ARCHITECTURE bdf_type OF zero_detector IS 



BEGIN 



zero <= NOT(in0 OR in2 OR in1 OR in3 OR in5 OR in4 OR in6 OR in7);


END bdf_type;