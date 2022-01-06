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
-- CREATED		"Fri Dec 31 02:37:50 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY instruction_decoder_box IS 
	PORT
	(
		DECODE :  IN  STD_LOGIC;
		EXECUTE :  IN  STD_LOGIC;
		IR :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		INPUT :  OUT  STD_LOGIC;
		OUTPUT :  OUT  STD_LOGIC;
		LOAD :  OUT  STD_LOGIC;
		ADD :  OUT  STD_LOGIC;
		JUMPZ :  OUT  STD_LOGIC;
		JUMP :  OUT  STD_LOGIC;
		JUMPNZ :  OUT  STD_LOGIC;
		JUMPC :  OUT  STD_LOGIC;
		JUMPNC :  OUT  STD_LOGIC;
		SUB :  OUT  STD_LOGIC;
		BITAND :  OUT  STD_LOGIC
	);
END instruction_decoder_box;

ARCHITECTURE bdf_type OF instruction_decoder_box IS 

COMPONENT instruction_decoder
	PORT(A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 INPUT : OUT STD_LOGIC;
		 OUTPUT : OUT STD_LOGIC;
		 LOAD : OUT STD_LOGIC;
		 ADD : OUT STD_LOGIC;
		 JUMPZ : OUT STD_LOGIC;
		 JUMP : OUT STD_LOGIC;
		 JUMPNZ : OUT STD_LOGIC;
		 JUMPC : OUT STD_LOGIC;
		 JUMPNC : OUT STD_LOGIC;
		 SUB : OUT STD_LOGIC;
		 BITAND : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;


BEGIN 



b2v_inst : instruction_decoder
PORT MAP(A => IR,
		 INPUT => SYNTHESIZED_WIRE_6,
		 OUTPUT => SYNTHESIZED_WIRE_8,
		 LOAD => SYNTHESIZED_WIRE_10,
		 ADD => SYNTHESIZED_WIRE_20,
		 JUMPZ => SYNTHESIZED_WIRE_14,
		 JUMP => SYNTHESIZED_WIRE_16,
		 JUMPNZ => SYNTHESIZED_WIRE_2,
		 JUMPC => SYNTHESIZED_WIRE_18,
		 JUMPNC => SYNTHESIZED_WIRE_12,
		 SUB => SYNTHESIZED_WIRE_0,
		 BITAND => SYNTHESIZED_WIRE_4);


SUB <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_22;


JUMPNZ <= SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_22;


BITAND <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_22 <= EXECUTE OR DECODE;


INPUT <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_22;


OUTPUT <= SYNTHESIZED_WIRE_8 AND SYNTHESIZED_WIRE_22;


LOAD <= SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_22;


JUMPNC <= SYNTHESIZED_WIRE_12 AND SYNTHESIZED_WIRE_22;


JUMPZ <= SYNTHESIZED_WIRE_14 AND SYNTHESIZED_WIRE_22;


JUMP <= SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_22;


JUMPC <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_22;


ADD <= SYNTHESIZED_WIRE_20 AND SYNTHESIZED_WIRE_22;


END bdf_type;