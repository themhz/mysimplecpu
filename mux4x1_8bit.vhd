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
-- CREATED		"Wed Sep 15 01:35:44 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mux4x1_8bit IS 
	PORT
	(
		S0 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		C :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		D :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Z :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END mux4x1_8bit;

ARCHITECTURE bdf_type OF mux4x1_8bit IS 

COMPONENT mux4x1_1bit
	PORT(SEL1 : IN STD_LOGIC;
		 SEL0 : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Z : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Z_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : mux4x1_1bit
PORT MAP(SEL1 => S1,
		 SEL0 => S0,
		 A => A(0),
		 B => B(0),
		 C => C(0),
		 D => D(0),
		 Z => Z_ALTERA_SYNTHESIZED(0));


b2v_inst1 : mux4x1_1bit
PORT MAP(SEL1 => S1,
		 SEL0 => S0,
		 A => A(1),
		 B => B(1),
		 C => C(1),
		 D => D(1),
		 Z => Z_ALTERA_SYNTHESIZED(1));


b2v_inst2 : mux4x1_1bit
PORT MAP(SEL1 => S1,
		 SEL0 => S0,
		 A => A(2),
		 B => B(2),
		 C => C(2),
		 D => D(2),
		 Z => Z_ALTERA_SYNTHESIZED(2));


b2v_inst3 : mux4x1_1bit
PORT MAP(SEL1 => S1,
		 SEL0 => S0,
		 A => A(3),
		 B => B(3),
		 C => C(3),
		 D => D(3),
		 Z => Z_ALTERA_SYNTHESIZED(3));


b2v_inst4 : mux4x1_1bit
PORT MAP(SEL1 => S1,
		 SEL0 => S0,
		 A => A(4),
		 B => B(4),
		 C => C(4),
		 D => D(4),
		 Z => Z_ALTERA_SYNTHESIZED(4));


b2v_inst5 : mux4x1_1bit
PORT MAP(SEL1 => S1,
		 SEL0 => S0,
		 A => A(5),
		 B => B(5),
		 C => C(5),
		 D => D(5),
		 Z => Z_ALTERA_SYNTHESIZED(5));


b2v_inst6 : mux4x1_1bit
PORT MAP(SEL1 => S1,
		 SEL0 => S0,
		 A => A(6),
		 B => B(6),
		 C => C(6),
		 D => D(6),
		 Z => Z_ALTERA_SYNTHESIZED(6));


b2v_inst7 : mux4x1_1bit
PORT MAP(SEL1 => S1,
		 SEL0 => S0,
		 A => A(7),
		 B => B(7),
		 C => C(7),
		 D => D(7),
		 Z => Z_ALTERA_SYNTHESIZED(7));

Z <= Z_ALTERA_SYNTHESIZED;

END bdf_type;