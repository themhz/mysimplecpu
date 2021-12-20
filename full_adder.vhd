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
-- CREATED		"Sat Dec 18 15:13:20 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		Sum :  OUT  STD_LOGIC;
		Cout :  OUT  STD_LOGIC
	);
END full_adder;

ARCHITECTURE bdf_type OF full_adder IS 

COMPONENT half_adder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C : OUT STD_LOGIC;
		 S : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : half_adder
PORT MAP(A => A,
		 B => B,
		 C => SYNTHESIZED_WIRE_2,
		 S => SYNTHESIZED_WIRE_0);


b2v_inst1 : half_adder
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => Cin,
		 C => SYNTHESIZED_WIRE_1,
		 S => Sum);


Cout <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


END bdf_type;