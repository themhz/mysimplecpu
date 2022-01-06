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
-- CREATED		"Tue Jan 04 00:25:46 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY jump_detector IS 
	PORT
	(
		INCREMENT :  IN  STD_LOGIC;
		EXECUTE :  IN  STD_LOGIC;
		ZERO_REG :  IN  STD_LOGIC;
		CARRY_REG :  IN  STD_LOGIC;
		JUMPZ :  IN  STD_LOGIC;
		JUMPNZ :  IN  STD_LOGIC;
		JUMPC :  IN  STD_LOGIC;
		JUMPNC :  IN  STD_LOGIC;
		JUMP :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		CLR :  IN  STD_LOGIC;
		EN_PC :  OUT  STD_LOGIC;
		jump_not_taken :  OUT  STD_LOGIC
	);
END jump_detector;

ARCHITECTURE bdf_type OF jump_detector IS 

COMPONENT d_ff_ac
	PORT(D : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 CLR : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 
jump_not_taken <= SYNTHESIZED_WIRE_0;
SYNTHESIZED_WIRE_8 <= '0';



SYNTHESIZED_WIRE_12 <= INCREMENT AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_11 <= EXECUTE AND SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_3 <= NOT(SYNTHESIZED_WIRE_14);



SYNTHESIZED_WIRE_10 <= NOT(CARRY_REG);



SYNTHESIZED_WIRE_9 <= NOT(ZERO_REG);



b2v_inst13 : d_ff_ac
PORT MAP(D => SYNTHESIZED_WIRE_3,
		 CLK => CLK,
		 CLR => CLR,
		 Q => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7 OR JUMP OR SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_4 <= JUMPZ AND ZERO_REG;


SYNTHESIZED_WIRE_6 <= JUMPNZ AND SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_7 <= JUMPNC AND SYNTHESIZED_WIRE_10;


SYNTHESIZED_WIRE_5 <= JUMPC AND CARRY_REG;


SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12;

EN_PC <= SYNTHESIZED_WIRE_13;




END bdf_type;