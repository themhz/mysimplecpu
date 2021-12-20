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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/18/2021 15:47:09"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ripple_adder_8bit IS
    PORT (
	Cout : OUT std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic;
	Sum : OUT std_logic_vector(7 DOWNTO 0)
	);
END ripple_adder_8bit;

-- Design Ports Information
-- Cout	=>  Location: PIN_53,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_141,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_34,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_51,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_44,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_31,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_42,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_144,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[0]	=>  Location: PIN_33,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_54,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_137,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_46,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_58,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_30,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_50,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_32,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_28,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_39,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_143,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_43,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_49,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_52,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_38,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_138,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF ripple_adder_8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Sum : std_logic_vector(7 DOWNTO 0);
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst2|Cout~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst|Cout~1_combout\ : std_logic;
SIGNAL \inst|Cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst1|Cout~0_combout\ : std_logic;
SIGNAL \inst2|Cout~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst3|Cout~0_combout\ : std_logic;
SIGNAL \inst4|Cout~1_combout\ : std_logic;
SIGNAL \inst4|Cout~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst5|Cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \inst6|Cout~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst6|Cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \inst7|Cout~0_combout\ : std_logic;
SIGNAL \inst7|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst6|b2v_inst1|S~0_combout\ : std_logic;
SIGNAL \inst5|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst4|b2v_inst1|S~0_combout\ : std_logic;
SIGNAL \inst3|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst2|b2v_inst1|S~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst|b2v_inst1|S~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Cout <= ww_Cout;
ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
Sum <= ww_Sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\Sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|b2v_inst1|S~0_combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst1|S~0_combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|b2v_inst1|S~0_combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\Sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst1|S~0_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOIBUF_X7_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X6_Y4_N28
\inst2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Cout~0_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst2|Cout~0_combout\);

-- Location: IOIBUF_X0_Y9_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X1_Y6_N10
\inst|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Cout~1_combout\ = (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \inst|Cout~1_combout\);

-- Location: LCCOMB_X1_Y6_N24
\inst|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Cout~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|Cout~0_combout\);

-- Location: IOIBUF_X1_Y24_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y6_N20
\inst1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Cout~0_combout\ = (\A[1]~input_o\ & ((\inst|Cout~1_combout\) # ((\inst|Cout~0_combout\) # (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\inst|Cout~1_combout\) # (\inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cout~1_combout\,
	datab => \inst|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst1|Cout~0_combout\);

-- Location: LCCOMB_X6_Y4_N22
\inst2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Cout~1_combout\ = (\inst1|Cout~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst1|Cout~0_combout\,
	combout => \inst2|Cout~1_combout\);

-- Location: IOIBUF_X0_Y11_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X6_Y4_N16
\inst3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Cout~0_combout\ = (\A[3]~input_o\ & ((\inst2|Cout~0_combout\) # ((\inst2|Cout~1_combout\) # (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\inst2|Cout~0_combout\) # (\inst2|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \inst2|Cout~0_combout\,
	datac => \inst2|Cout~1_combout\,
	datad => \B[3]~input_o\,
	combout => \inst3|Cout~0_combout\);

-- Location: LCCOMB_X6_Y4_N10
\inst4|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Cout~1_combout\ = (\inst3|Cout~0_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \inst3|Cout~0_combout\,
	combout => \inst4|Cout~1_combout\);

-- Location: LCCOMB_X6_Y4_N2
\inst4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Cout~0_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	combout => \inst4|Cout~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X6_Y4_N20
\inst5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Cout~0_combout\ = (\B[5]~input_o\ & ((\inst4|Cout~1_combout\) # ((\inst4|Cout~0_combout\) # (\A[5]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\inst4|Cout~1_combout\) # (\inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Cout~1_combout\,
	datab => \inst4|Cout~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst5|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X6_Y4_N30
\inst6|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Cout~1_combout\ = (\inst5|Cout~0_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Cout~0_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst6|Cout~1_combout\);

-- Location: IOIBUF_X1_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X6_Y4_N8
\inst6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Cout~0_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst6|Cout~0_combout\);

-- Location: IOIBUF_X7_Y24_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X6_Y4_N0
\inst7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Cout~0_combout\ = (\A[7]~input_o\ & ((\inst6|Cout~1_combout\) # ((\inst6|Cout~0_combout\) # (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & ((\inst6|Cout~1_combout\) # (\inst6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Cout~1_combout\,
	datab => \A[7]~input_o\,
	datac => \inst6|Cout~0_combout\,
	datad => \B[7]~input_o\,
	combout => \inst7|Cout~0_combout\);

-- Location: LCCOMB_X6_Y4_N26
\inst7|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|b2v_inst1|S~combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (((\inst6|Cout~1_combout\) # (\inst6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Cout~1_combout\,
	datab => \A[7]~input_o\,
	datac => \inst6|Cout~0_combout\,
	datad => \B[7]~input_o\,
	combout => \inst7|b2v_inst1|S~combout\);

-- Location: LCCOMB_X6_Y4_N4
\inst6|b2v_inst1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b2v_inst1|S~0_combout\ = \inst5|Cout~0_combout\ $ (\A[6]~input_o\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Cout~0_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst6|b2v_inst1|S~0_combout\);

-- Location: LCCOMB_X6_Y4_N6
\inst5|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|b2v_inst1|S~combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (((\inst4|Cout~1_combout\) # (\inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Cout~1_combout\,
	datab => \inst4|Cout~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst5|b2v_inst1|S~combout\);

-- Location: LCCOMB_X6_Y4_N24
\inst4|b2v_inst1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst1|S~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\inst3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \inst3|Cout~0_combout\,
	combout => \inst4|b2v_inst1|S~0_combout\);

-- Location: LCCOMB_X6_Y4_N18
\inst3|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|b2v_inst1|S~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\inst2|Cout~0_combout\) # (\inst2|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \inst2|Cout~0_combout\,
	datac => \inst2|Cout~1_combout\,
	datad => \B[3]~input_o\,
	combout => \inst3|b2v_inst1|S~combout\);

-- Location: LCCOMB_X6_Y4_N12
\inst2|b2v_inst1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|b2v_inst1|S~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\inst1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \inst1|Cout~0_combout\,
	combout => \inst2|b2v_inst1|S~0_combout\);

-- Location: LCCOMB_X1_Y6_N14
\inst1|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst1|S~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\inst|Cout~1_combout\) # (\inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cout~1_combout\,
	datab => \inst|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst1|b2v_inst1|S~combout\);

-- Location: LCCOMB_X1_Y6_N16
\inst|b2v_inst1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst1|S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \inst|b2v_inst1|S~0_combout\);

ww_Cout <= \Cout~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(0) <= \Sum[0]~output_o\;
END structure;


