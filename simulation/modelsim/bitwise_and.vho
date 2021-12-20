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

-- DATE "12/19/2021 02:39:12"

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
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 1.2 V,	 Current Strength: 8mA


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

ENTITY 	bitwise_and IS
    PORT (
	Z : OUT std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0)
	);
END bitwise_and;

-- Design Ports Information
-- Z[7]	=>  Location: PIN_127,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_46,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_53,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_106,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_99,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_30,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_143,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[0]	=>  Location: PIN_129,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_125,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_124,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_50,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_49,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_52,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_51,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_103,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_105,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_100,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_98,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_28,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_142,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_126,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_128,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF bitwise_and IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Z <= ww_Z;
ww_A <= A;
ww_B <= B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N9
\Z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~combout\,
	devoe => ww_devoe,
	o => \Z[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\Z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~combout\,
	devoe => ww_devoe,
	o => \Z[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~combout\,
	devoe => ww_devoe,
	o => \Z[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\Z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \Z[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\Z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\Z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

-- Location: IOIBUF_X18_Y24_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X18_Y23_N0
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\B[7]~input_o\ & \A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \inst7~combout\);

-- Location: IOIBUF_X13_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X12_Y1_N16
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst6~combout\);

-- Location: IOIBUF_X16_Y0_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X16_Y1_N16
inst5 : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\A[5]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst5~combout\);

-- Location: IOIBUF_X34_Y18_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X33_Y19_N0
inst4 : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst4~combout\);

-- Location: IOIBUF_X34_Y17_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X33_Y17_N8
inst3 : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst3~combout\);

-- Location: IOIBUF_X0_Y9_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y9_N16
inst2 : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst2~combout\);

-- Location: IOIBUF_X0_Y11_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X2_Y20_N0
inst1 : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\A[1]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst1~combout\);

-- Location: IOIBUF_X16_Y24_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X16_Y23_N0
inst : cycloneive_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst~combout\);

ww_Z(7) <= \Z[7]~output_o\;

ww_Z(6) <= \Z[6]~output_o\;

ww_Z(5) <= \Z[5]~output_o\;

ww_Z(4) <= \Z[4]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(0) <= \Z[0]~output_o\;
END structure;


