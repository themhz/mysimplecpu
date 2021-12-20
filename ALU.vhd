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
-- CREATED		"Mon Dec 20 02:04:45 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ALU IS 
	PORT
	(
		S4 :  IN  STD_LOGIC;
		S3 :  IN  STD_LOGIC;
		S2 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Cout :  OUT  STD_LOGIC;
		Sum :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ALU;

ARCHITECTURE bdf_type OF ALU IS 

COMPONENT replicate
	PORT(A : IN STD_LOGIC;
		 Z : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux4x1_8bit
	PORT(S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 C : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Z : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bitwise_inv
	PORT(EN : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Z : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bitwise_and
	PORT(A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Z : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ripple_adder_8bit
	PORT(Cin : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Cout : OUT STD_LOGIC;
		 Sum : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	Sum_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : replicate
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 Z => SYNTHESIZED_WIRE_2);


b2v_inst1 : mux4x1_8bit
PORT MAP(S1 => S1,
		 S0 => S0,
		 A => Sum_ALTERA_SYNTHESIZED,
		 B => SYNTHESIZED_WIRE_1,
		 C => A,
		 D => B,
		 Z => Z);


b2v_inst2 : bitwise_inv
PORT MAP(EN => S3,
		 A => B,
		 Z => SYNTHESIZED_WIRE_3);


b2v_inst3 : bitwise_and
PORT MAP(A => SYNTHESIZED_WIRE_2,
		 B => SYNTHESIZED_WIRE_3,
		 Z => SYNTHESIZED_WIRE_4);


b2v_inst4 : ripple_adder_8bit
PORT MAP(Cin => S2,
		 A => A,
		 B => SYNTHESIZED_WIRE_4,
		 Cout => Cout,
		 Sum => Sum_ALTERA_SYNTHESIZED);


b2v_inst5 : bitwise_and
PORT MAP(A => A,
		 B => B,
		 Z => SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_0 <= NOT(S4);


Sum <= Sum_ALTERA_SYNTHESIZED;

END bdf_type;