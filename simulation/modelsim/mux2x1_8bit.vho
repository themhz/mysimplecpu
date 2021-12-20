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

-- DATE "09/14/2021 23:57:24"

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

ENTITY 	mux2x1_8bit IS
    PORT (
	Yout : OUT std_logic_vector(7 DOWNTO 0);
	SEL : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0)
	);
END mux2x1_8bit;

-- Design Ports Information
-- Yout[7]	=>  Location: PIN_53,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Yout[6]	=>  Location: PIN_34,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Yout[5]	=>  Location: PIN_54,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Yout[4]	=>  Location: PIN_38,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Yout[3]	=>  Location: PIN_32,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Yout[2]	=>  Location: PIN_43,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Yout[1]	=>  Location: PIN_44,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Yout[0]	=>  Location: PIN_60,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_59,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_52,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SEL	=>  Location: PIN_49,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_136,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_64,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_69,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_55,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_42,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_46,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_50,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_135,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_51,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_39,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_58,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_127,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF mux2x1_8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Yout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEL : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL \Yout[7]~output_o\ : std_logic;
SIGNAL \Yout[6]~output_o\ : std_logic;
SIGNAL \Yout[5]~output_o\ : std_logic;
SIGNAL \Yout[4]~output_o\ : std_logic;
SIGNAL \Yout[3]~output_o\ : std_logic;
SIGNAL \Yout[2]~output_o\ : std_logic;
SIGNAL \Yout[1]~output_o\ : std_logic;
SIGNAL \Yout[0]~output_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \SEL~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \inst2x8|inst2~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst2x7|inst2~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst2x6|inst2~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst2x5|inst2~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst2x4|inst2~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst2x3|inst2~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst2x2|inst2~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst2x1|inst2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Yout <= ww_Yout;
ww_SEL <= SEL;
ww_B <= B;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N2
\Yout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2x8|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[7]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Yout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2x7|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Yout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2x6|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Yout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2x5|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Yout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2x4|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Yout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2x3|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Yout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2x2|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Yout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2x1|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Yout[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\SEL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL,
	o => \SEL~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\inst2x8|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2x8|inst2~0_combout\ = (\SEL~input_o\ & ((\B[7]~input_o\))) # (!\SEL~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \SEL~input_o\,
	datad => \B[7]~input_o\,
	combout => \inst2x8|inst2~0_combout\);

-- Location: IOIBUF_X9_Y24_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X10_Y4_N0
\inst2x7|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2x7|inst2~0_combout\ = (\SEL~input_o\ & (\B[6]~input_o\)) # (!\SEL~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \inst2x7|inst2~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X16_Y1_N26
\inst2x6|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2x6|inst2~0_combout\ = (\SEL~input_o\ & ((\B[5]~input_o\))) # (!\SEL~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst2x6|inst2~0_combout\);

-- Location: IOIBUF_X3_Y0_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

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

-- Location: LCCOMB_X4_Y1_N0
\inst2x5|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2x5|inst2~0_combout\ = (\SEL~input_o\ & (\B[4]~input_o\)) # (!\SEL~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SEL~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst2x5|inst2~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X10_Y4_N2
\inst2x4|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2x4|inst2~0_combout\ = (\SEL~input_o\ & (\B[3]~input_o\)) # (!\SEL~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \SEL~input_o\,
	combout => \inst2x4|inst2~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
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

-- Location: LCCOMB_X5_Y3_N8
\inst2x3|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2x3|inst2~0_combout\ = (\SEL~input_o\ & ((\B[2]~input_o\))) # (!\SEL~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SEL~input_o\,
	combout => \inst2x3|inst2~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X5_Y1_N16
\inst2x2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2x2|inst2~0_combout\ = (\SEL~input_o\ & ((\B[1]~input_o\))) # (!\SEL~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \SEL~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst2x2|inst2~0_combout\);

-- Location: IOIBUF_X16_Y24_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X16_Y1_N28
\inst2x1|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2x1|inst2~0_combout\ = (\SEL~input_o\ & ((\B[0]~input_o\))) # (!\SEL~input_o\ & (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst2x1|inst2~0_combout\);

ww_Yout(7) <= \Yout[7]~output_o\;

ww_Yout(6) <= \Yout[6]~output_o\;

ww_Yout(5) <= \Yout[5]~output_o\;

ww_Yout(4) <= \Yout[4]~output_o\;

ww_Yout(3) <= \Yout[3]~output_o\;

ww_Yout(2) <= \Yout[2]~output_o\;

ww_Yout(1) <= \Yout[1]~output_o\;

ww_Yout(0) <= \Yout[0]~output_o\;
END structure;


