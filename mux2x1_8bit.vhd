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
-- CREATED		"Wed Sep 15 00:11:08 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mux2x1_8bit IS 
	PORT
	(
		SEL :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Yout :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END mux2x1_8bit;

ARCHITECTURE bdf_type OF mux2x1_8bit IS 

COMPONENT mux2x1_1bit
	PORT(SEL : IN STD_LOGIC;
		 Bin : IN STD_LOGIC;
		 Ain : IN STD_LOGIC;
		 oOut : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Yout_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst2x1 : mux2x1_1bit
PORT MAP(SEL => SEL,
		 Bin => B(0),
		 Ain => A(0),
		 oOut => Yout_ALTERA_SYNTHESIZED(0));


b2v_inst2x2 : mux2x1_1bit
PORT MAP(SEL => SEL,
		 Bin => B(1),
		 Ain => A(1),
		 oOut => Yout_ALTERA_SYNTHESIZED(1));


b2v_inst2x3 : mux2x1_1bit
PORT MAP(SEL => SEL,
		 Bin => B(2),
		 Ain => A(2),
		 oOut => Yout_ALTERA_SYNTHESIZED(2));


b2v_inst2x4 : mux2x1_1bit
PORT MAP(SEL => SEL,
		 Bin => B(3),
		 Ain => A(3),
		 oOut => Yout_ALTERA_SYNTHESIZED(3));


b2v_inst2x5 : mux2x1_1bit
PORT MAP(SEL => SEL,
		 Bin => B(4),
		 Ain => A(4),
		 oOut => Yout_ALTERA_SYNTHESIZED(4));


b2v_inst2x6 : mux2x1_1bit
PORT MAP(SEL => SEL,
		 Bin => B(5),
		 Ain => A(5),
		 oOut => Yout_ALTERA_SYNTHESIZED(5));


b2v_inst2x7 : mux2x1_1bit
PORT MAP(SEL => SEL,
		 Bin => B(6),
		 Ain => A(6),
		 oOut => Yout_ALTERA_SYNTHESIZED(6));


b2v_inst2x8 : mux2x1_1bit
PORT MAP(SEL => SEL,
		 Bin => B(7),
		 Ain => A(7),
		 oOut => Yout_ALTERA_SYNTHESIZED(7));

Yout <= Yout_ALTERA_SYNTHESIZED;

END bdf_type;