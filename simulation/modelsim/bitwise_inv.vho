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

-- DATE "12/19/2021 01:54:44"

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

ENTITY 	bitwise_inv IS
    PORT (
	Z : OUT std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	EN : IN std_logic
	);
END bitwise_inv;

-- Design Ports Information
-- Z[7]	=>  Location: PIN_106,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_119,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_126,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_125,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_58,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_115,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_129,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[0]	=>  Location: PIN_127,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_128,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- EN	=>  Location: PIN_55,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_105,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_60,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_120,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_121,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_124,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_132,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_59,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF bitwise_inv IS
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
SIGNAL ww_EN : std_logic;
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
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
ww_EN <= EN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOIBUF_X16_Y24_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X22_Y20_N0
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = \A[7]~input_o\ $ (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \EN~input_o\,
	combout => \inst7~combout\);

-- Location: IOIBUF_X34_Y19_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X22_Y20_N26
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = \A[6]~input_o\ $ (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \EN~input_o\,
	combout => \inst6~combout\);

-- Location: IOIBUF_X23_Y0_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X22_Y20_N12
inst5 : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~combout\ = \EN~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
	datac => \A[5]~input_o\,
	combout => \inst5~combout\);

-- Location: IOIBUF_X23_Y24_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X22_Y20_N22
inst4 : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~combout\ = \EN~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
	datac => \A[4]~input_o\,
	combout => \inst4~combout\);

-- Location: IOIBUF_X23_Y24_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X22_Y20_N16
inst3 : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~combout\ = \EN~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst3~combout\);

-- Location: IOIBUF_X18_Y24_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X22_Y20_N2
inst2 : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~combout\ = \EN~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
	datac => \A[2]~input_o\,
	combout => \inst2~combout\);

-- Location: IOIBUF_X13_Y24_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X16_Y23_N0
inst1 : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~combout\ = \A[1]~input_o\ $ (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \EN~input_o\,
	combout => \inst1~combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X22_Y20_N20
inst : cycloneive_lcell_comb
-- Equation(s):
-- \inst~combout\ = \EN~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
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


