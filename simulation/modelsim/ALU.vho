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

-- DATE "12/20/2021 02:06:19"

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

ENTITY 	ALU IS
    PORT (
	Cout : OUT std_logic;
	S2 : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	S4 : IN std_logic;
	S3 : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	Sum : OUT std_logic_vector(7 DOWNTO 0);
	Z : OUT std_logic_vector(7 DOWNTO 0);
	S1 : IN std_logic;
	S0 : IN std_logic
	);
END ALU;

-- Design Ports Information
-- Cout	=>  Location: PIN_60,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_52,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_59,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_55,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_87,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_112,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_86,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_75,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Sum[0]	=>  Location: PIN_71,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_53,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_50,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_46,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_84,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_83,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_85,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_74,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[0]	=>  Location: PIN_76,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- S3	=>  Location: PIN_58,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_34,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- S4	=>  Location: PIN_68,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_43,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_51,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_44,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_49,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_54,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_103,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_66,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_100,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_99,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_104,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_98,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_69,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_77,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_70,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_67,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- S2	=>  Location: PIN_80,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- S1	=>  Location: PIN_64,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- S0	=>  Location: PIN_73,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
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
SIGNAL ww_S2 : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S4 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S3~input_o\ : std_logic;
SIGNAL \S4~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \inst4|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst4|b2v_inst1|Cout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst4|b2v_inst2|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst4|b2v_inst3|Cout~0_combout\ : std_logic;
SIGNAL \inst4|b2v_inst4|Cout~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst4|b2v_inst5|Cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst4|b2v_inst6|Cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst4|b2v_inst7|Cout~0_combout\ : std_logic;
SIGNAL \inst4|b2v_inst7|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst4|b2v_inst6|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst4|b2v_inst5|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst4|b2v_inst4|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst4|b2v_inst3|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst4|b2v_inst2|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst4|b2v_inst1|b2v_inst1|S~combout\ : std_logic;
SIGNAL \inst4|b2v_inst|b2v_inst1|S~combout\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst7|b2v_inst2|inst2~0_combout\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst7|b2v_inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst1|b2v_inst6|b2v_inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst6|b2v_inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst1|b2v_inst5|b2v_inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst5|b2v_inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst1|b2v_inst4|b2v_inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst4|b2v_inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst1|b2v_inst3|b2v_inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst3|b2v_inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst1|b2v_inst2|b2v_inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst2|b2v_inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst1|b2v_inst1|b2v_inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst1|b2v_inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst2|Z\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Cout <= ww_Cout;
ww_S2 <= S2;
ww_A <= A;
ww_S4 <= S4;
ww_S3 <= S3;
ww_B <= B;
Sum <= ww_Sum;
Z <= ww_Z;
ww_S1 <= S1;
ww_S0 <= S0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst7|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst7|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst6|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst5|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\Sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst4|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\Sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst3|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\Sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst2|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\Sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst1|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\Sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|b2v_inst|b2v_inst1|S~combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst7|b2v_inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst6|b2v_inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\Z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst5|b2v_inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\Z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst4|b2v_inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\Z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst3|b2v_inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\Z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst2|b2v_inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\Z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst1|b2v_inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\Z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst|b2v_inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\S3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S3,
	o => \S3~input_o\);

-- Location: LCCOMB_X18_Y1_N26
\inst2|Z[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Z\(6) = \B[6]~input_o\ $ (\S3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \S3~input_o\,
	combout => \inst2|Z\(6));

-- Location: IOIBUF_X30_Y0_N8
\S4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S4,
	o => \S4~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X29_Y9_N8
\inst2|Z[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Z\(4) = \S3~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S3~input_o\,
	datad => \B[4]~input_o\,
	combout => \inst2|Z\(4));

-- Location: IOIBUF_X34_Y17_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X29_Y9_N26
\inst2|Z[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Z\(3) = \S3~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S3~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst2|Z\(3));

-- Location: IOIBUF_X34_Y4_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X33_Y4_N10
\inst2|Z[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Z\(0) = \S3~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S3~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst2|Z\(0));

-- Location: IOIBUF_X30_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\S2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: LCCOMB_X33_Y4_N20
\inst4|b2v_inst|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst|Cout~0_combout\ = (\A[0]~input_o\ & ((\S2~input_o\) # ((\inst2|Z\(0) & !\S4~input_o\)))) # (!\A[0]~input_o\ & (\inst2|Z\(0) & (!\S4~input_o\ & \S2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Z\(0),
	datab => \A[0]~input_o\,
	datac => \S4~input_o\,
	datad => \S2~input_o\,
	combout => \inst4|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X33_Y4_N0
\inst2|Z[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Z\(1) = \B[1]~input_o\ $ (\S3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \S3~input_o\,
	combout => \inst2|Z\(1));

-- Location: LCCOMB_X33_Y4_N22
\inst4|b2v_inst1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst1|Cout~0_combout\ = (\A[1]~input_o\ & ((\inst4|b2v_inst|Cout~0_combout\) # ((!\S4~input_o\ & \inst2|Z\(1))))) # (!\A[1]~input_o\ & (\inst4|b2v_inst|Cout~0_combout\ & (!\S4~input_o\ & \inst2|Z\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst4|b2v_inst|Cout~0_combout\,
	datac => \S4~input_o\,
	datad => \inst2|Z\(1),
	combout => \inst4|b2v_inst1|Cout~0_combout\);

-- Location: IOIBUF_X34_Y17_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X29_Y9_N12
\inst2|Z[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Z\(2) = \S3~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S3~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst2|Z\(2));

-- Location: LCCOMB_X29_Y9_N22
\inst4|b2v_inst2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst2|Cout~0_combout\ = (\inst4|b2v_inst1|Cout~0_combout\ & ((\A[2]~input_o\) # ((!\S4~input_o\ & \inst2|Z\(2))))) # (!\inst4|b2v_inst1|Cout~0_combout\ & (\A[2]~input_o\ & (!\S4~input_o\ & \inst2|Z\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|b2v_inst1|Cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \S4~input_o\,
	datad => \inst2|Z\(2),
	combout => \inst4|b2v_inst2|Cout~0_combout\);

-- Location: IOIBUF_X34_Y17_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X29_Y9_N0
\inst4|b2v_inst3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst3|Cout~0_combout\ = (\inst4|b2v_inst2|Cout~0_combout\ & ((\A[3]~input_o\) # ((\inst2|Z\(3) & !\S4~input_o\)))) # (!\inst4|b2v_inst2|Cout~0_combout\ & (\inst2|Z\(3) & (!\S4~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Z\(3),
	datab => \S4~input_o\,
	datac => \inst4|b2v_inst2|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \inst4|b2v_inst3|Cout~0_combout\);

-- Location: LCCOMB_X29_Y9_N10
\inst4|b2v_inst4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst4|Cout~0_combout\ = (\A[4]~input_o\ & ((\inst4|b2v_inst3|Cout~0_combout\) # ((\inst2|Z\(4) & !\S4~input_o\)))) # (!\A[4]~input_o\ & (\inst2|Z\(4) & (!\S4~input_o\ & \inst4|b2v_inst3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst2|Z\(4),
	datac => \S4~input_o\,
	datad => \inst4|b2v_inst3|Cout~0_combout\,
	combout => \inst4|b2v_inst4|Cout~0_combout\);

-- Location: IOIBUF_X13_Y0_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X18_Y1_N4
\inst2|Z[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Z\(5) = \B[5]~input_o\ $ (\S3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \S3~input_o\,
	combout => \inst2|Z\(5));

-- Location: LCCOMB_X18_Y1_N30
\inst4|b2v_inst5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst5|Cout~0_combout\ = (\A[5]~input_o\ & ((\inst4|b2v_inst4|Cout~0_combout\) # ((\inst2|Z\(5) & !\S4~input_o\)))) # (!\A[5]~input_o\ & (\inst4|b2v_inst4|Cout~0_combout\ & (\inst2|Z\(5) & !\S4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \inst4|b2v_inst4|Cout~0_combout\,
	datac => \inst2|Z\(5),
	datad => \S4~input_o\,
	combout => \inst4|b2v_inst5|Cout~0_combout\);

-- Location: IOIBUF_X5_Y0_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X18_Y1_N8
\inst4|b2v_inst6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst6|Cout~0_combout\ = (\inst4|b2v_inst5|Cout~0_combout\ & ((\A[6]~input_o\) # ((\inst2|Z\(6) & !\S4~input_o\)))) # (!\inst4|b2v_inst5|Cout~0_combout\ & (\inst2|Z\(6) & (!\S4~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Z\(6),
	datab => \S4~input_o\,
	datac => \inst4|b2v_inst5|Cout~0_combout\,
	datad => \A[6]~input_o\,
	combout => \inst4|b2v_inst6|Cout~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X18_Y1_N0
\inst2|Z[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Z\(7) = \B[7]~input_o\ $ (\S3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datad => \S3~input_o\,
	combout => \inst2|Z\(7));

-- Location: IOIBUF_X5_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X18_Y1_N2
\inst4|b2v_inst7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst7|Cout~0_combout\ = (\inst4|b2v_inst6|Cout~0_combout\ & ((\A[7]~input_o\) # ((\inst2|Z\(7) & !\S4~input_o\)))) # (!\inst4|b2v_inst6|Cout~0_combout\ & (\inst2|Z\(7) & (\A[7]~input_o\ & !\S4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|b2v_inst6|Cout~0_combout\,
	datab => \inst2|Z\(7),
	datac => \A[7]~input_o\,
	datad => \S4~input_o\,
	combout => \inst4|b2v_inst7|Cout~0_combout\);

-- Location: LCCOMB_X18_Y1_N12
\inst4|b2v_inst7|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst7|b2v_inst1|S~combout\ = \inst4|b2v_inst6|Cout~0_combout\ $ (\A[7]~input_o\ $ (((\inst2|Z\(7) & !\S4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|b2v_inst6|Cout~0_combout\,
	datab => \inst2|Z\(7),
	datac => \A[7]~input_o\,
	datad => \S4~input_o\,
	combout => \inst4|b2v_inst7|b2v_inst1|S~combout\);

-- Location: LCCOMB_X18_Y1_N6
\inst4|b2v_inst6|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst6|b2v_inst1|S~combout\ = \inst4|b2v_inst5|Cout~0_combout\ $ (\A[6]~input_o\ $ (((\inst2|Z\(6) & !\S4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Z\(6),
	datab => \S4~input_o\,
	datac => \inst4|b2v_inst5|Cout~0_combout\,
	datad => \A[6]~input_o\,
	combout => \inst4|b2v_inst6|b2v_inst1|S~combout\);

-- Location: LCCOMB_X18_Y1_N16
\inst4|b2v_inst5|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst5|b2v_inst1|S~combout\ = \A[5]~input_o\ $ (\inst4|b2v_inst4|Cout~0_combout\ $ (((\inst2|Z\(5) & !\S4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \inst4|b2v_inst4|Cout~0_combout\,
	datac => \inst2|Z\(5),
	datad => \S4~input_o\,
	combout => \inst4|b2v_inst5|b2v_inst1|S~combout\);

-- Location: LCCOMB_X29_Y9_N4
\inst4|b2v_inst4|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst4|b2v_inst1|S~combout\ = \A[4]~input_o\ $ (\inst4|b2v_inst3|Cout~0_combout\ $ (((\inst2|Z\(4) & !\S4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \inst2|Z\(4),
	datac => \S4~input_o\,
	datad => \inst4|b2v_inst3|Cout~0_combout\,
	combout => \inst4|b2v_inst4|b2v_inst1|S~combout\);

-- Location: LCCOMB_X29_Y9_N14
\inst4|b2v_inst3|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst3|b2v_inst1|S~combout\ = \inst4|b2v_inst2|Cout~0_combout\ $ (\A[3]~input_o\ $ (((\inst2|Z\(3) & !\S4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Z\(3),
	datab => \S4~input_o\,
	datac => \inst4|b2v_inst2|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \inst4|b2v_inst3|b2v_inst1|S~combout\);

-- Location: LCCOMB_X29_Y9_N16
\inst4|b2v_inst2|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst2|b2v_inst1|S~combout\ = \inst4|b2v_inst1|Cout~0_combout\ $ (\A[2]~input_o\ $ (((!\S4~input_o\ & \inst2|Z\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|b2v_inst1|Cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \S4~input_o\,
	datad => \inst2|Z\(2),
	combout => \inst4|b2v_inst2|b2v_inst1|S~combout\);

-- Location: LCCOMB_X33_Y4_N24
\inst4|b2v_inst1|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst1|b2v_inst1|S~combout\ = \A[1]~input_o\ $ (\inst4|b2v_inst|Cout~0_combout\ $ (((!\S4~input_o\ & \inst2|Z\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst4|b2v_inst|Cout~0_combout\,
	datac => \S4~input_o\,
	datad => \inst2|Z\(1),
	combout => \inst4|b2v_inst1|b2v_inst1|S~combout\);

-- Location: LCCOMB_X33_Y4_N2
\inst4|b2v_inst|b2v_inst1|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|b2v_inst|b2v_inst1|S~combout\ = \A[0]~input_o\ $ (\S2~input_o\ $ (((\inst2|Z\(0) & !\S4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Z\(0),
	datab => \A[0]~input_o\,
	datac => \S4~input_o\,
	datad => \S2~input_o\,
	combout => \inst4|b2v_inst|b2v_inst1|S~combout\);

-- Location: IOIBUF_X34_Y2_N22
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X18_Y1_N10
\inst1|b2v_inst7|b2v_inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst7|b2v_inst2|inst2~0_combout\ = (\S0~input_o\ & ((\B[7]~input_o\))) # (!\S0~input_o\ & (\inst4|b2v_inst7|b2v_inst1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|b2v_inst7|b2v_inst1|S~combout\,
	datab => \B[7]~input_o\,
	datad => \S0~input_o\,
	combout => \inst1|b2v_inst7|b2v_inst2|inst2~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X18_Y1_N28
\inst1|b2v_inst7|b2v_inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst7|b2v_inst2|inst2~1_combout\ = (\inst1|b2v_inst7|b2v_inst2|inst2~0_combout\ & ((\A[7]~input_o\) # (\S1~input_o\ $ (!\S0~input_o\)))) # (!\inst1|b2v_inst7|b2v_inst2|inst2~0_combout\ & (\S1~input_o\ & (\A[7]~input_o\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|b2v_inst7|b2v_inst2|inst2~0_combout\,
	datab => \S1~input_o\,
	datac => \A[7]~input_o\,
	datad => \S0~input_o\,
	combout => \inst1|b2v_inst7|b2v_inst2|inst2~1_combout\);

-- Location: LCCOMB_X18_Y1_N14
\inst1|b2v_inst6|b2v_inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst6|b2v_inst2|inst2~0_combout\ = (\S1~input_o\ & (((\A[6]~input_o\) # (\S0~input_o\)))) # (!\S1~input_o\ & (\inst4|b2v_inst6|b2v_inst1|S~combout\ & ((!\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|b2v_inst6|b2v_inst1|S~combout\,
	datab => \S1~input_o\,
	datac => \A[6]~input_o\,
	datad => \S0~input_o\,
	combout => \inst1|b2v_inst6|b2v_inst2|inst2~0_combout\);

-- Location: LCCOMB_X18_Y1_N24
\inst1|b2v_inst6|b2v_inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst6|b2v_inst2|inst2~1_combout\ = (\S0~input_o\ & (\B[6]~input_o\ & ((\A[6]~input_o\) # (\inst1|b2v_inst6|b2v_inst2|inst2~0_combout\)))) # (!\S0~input_o\ & (((\inst1|b2v_inst6|b2v_inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst1|b2v_inst6|b2v_inst2|inst2~0_combout\,
	datac => \B[6]~input_o\,
	datad => \S0~input_o\,
	combout => \inst1|b2v_inst6|b2v_inst2|inst2~1_combout\);

-- Location: LCCOMB_X18_Y1_N18
\inst1|b2v_inst5|b2v_inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst5|b2v_inst2|inst2~0_combout\ = (\S0~input_o\ & ((\B[5]~input_o\))) # (!\S0~input_o\ & (\inst4|b2v_inst5|b2v_inst1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|b2v_inst5|b2v_inst1|S~combout\,
	datac => \B[5]~input_o\,
	datad => \S0~input_o\,
	combout => \inst1|b2v_inst5|b2v_inst2|inst2~0_combout\);

-- Location: LCCOMB_X18_Y1_N20
\inst1|b2v_inst5|b2v_inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst5|b2v_inst2|inst2~1_combout\ = (\A[5]~input_o\ & ((\inst1|b2v_inst5|b2v_inst2|inst2~0_combout\) # ((\S1~input_o\ & !\S0~input_o\)))) # (!\A[5]~input_o\ & (\inst1|b2v_inst5|b2v_inst2|inst2~0_combout\ & (\S1~input_o\ $ (!\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \S1~input_o\,
	datac => \inst1|b2v_inst5|b2v_inst2|inst2~0_combout\,
	datad => \S0~input_o\,
	combout => \inst1|b2v_inst5|b2v_inst2|inst2~1_combout\);

-- Location: LCCOMB_X29_Y9_N2
\inst1|b2v_inst4|b2v_inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst4|b2v_inst2|inst2~0_combout\ = (\S1~input_o\ & (((\A[4]~input_o\) # (\S0~input_o\)))) # (!\S1~input_o\ & (\inst4|b2v_inst4|b2v_inst1|S~combout\ & ((!\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \inst4|b2v_inst4|b2v_inst1|S~combout\,
	datac => \A[4]~input_o\,
	datad => \S0~input_o\,
	combout => \inst1|b2v_inst4|b2v_inst2|inst2~0_combout\);

-- Location: LCCOMB_X29_Y9_N20
\inst1|b2v_inst4|b2v_inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst4|b2v_inst2|inst2~1_combout\ = (\S0~input_o\ & (\B[4]~input_o\ & ((\A[4]~input_o\) # (\inst1|b2v_inst4|b2v_inst2|inst2~0_combout\)))) # (!\S0~input_o\ & (((\inst1|b2v_inst4|b2v_inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \S0~input_o\,
	datac => \inst1|b2v_inst4|b2v_inst2|inst2~0_combout\,
	datad => \B[4]~input_o\,
	combout => \inst1|b2v_inst4|b2v_inst2|inst2~1_combout\);

-- Location: LCCOMB_X29_Y9_N30
\inst1|b2v_inst3|b2v_inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst3|b2v_inst2|inst2~0_combout\ = (\S0~input_o\ & (\B[3]~input_o\)) # (!\S0~input_o\ & ((\inst4|b2v_inst3|b2v_inst1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst4|b2v_inst3|b2v_inst1|S~combout\,
	datad => \S0~input_o\,
	combout => \inst1|b2v_inst3|b2v_inst2|inst2~0_combout\);

-- Location: LCCOMB_X29_Y9_N24
\inst1|b2v_inst3|b2v_inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst3|b2v_inst2|inst2~1_combout\ = (\S1~input_o\ & ((\S0~input_o\ & (\inst1|b2v_inst3|b2v_inst2|inst2~0_combout\)) # (!\S0~input_o\ & ((\A[3]~input_o\))))) # (!\S1~input_o\ & (\inst1|b2v_inst3|b2v_inst2|inst2~0_combout\ & ((\A[3]~input_o\) # 
-- (!\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \inst1|b2v_inst3|b2v_inst2|inst2~0_combout\,
	datad => \A[3]~input_o\,
	combout => \inst1|b2v_inst3|b2v_inst2|inst2~1_combout\);

-- Location: LCCOMB_X29_Y9_N18
\inst1|b2v_inst2|b2v_inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst2|b2v_inst2|inst2~0_combout\ = (\S1~input_o\ & ((\S0~input_o\) # ((\A[2]~input_o\)))) # (!\S1~input_o\ & (!\S0~input_o\ & (\inst4|b2v_inst2|b2v_inst1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \inst4|b2v_inst2|b2v_inst1|S~combout\,
	datad => \A[2]~input_o\,
	combout => \inst1|b2v_inst2|b2v_inst2|inst2~0_combout\);

-- Location: LCCOMB_X29_Y9_N28
\inst1|b2v_inst2|b2v_inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst2|b2v_inst2|inst2~1_combout\ = (\S0~input_o\ & (\B[2]~input_o\ & ((\inst1|b2v_inst2|b2v_inst2|inst2~0_combout\) # (\A[2]~input_o\)))) # (!\S0~input_o\ & (((\inst1|b2v_inst2|b2v_inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[2]~input_o\,
	datac => \inst1|b2v_inst2|b2v_inst2|inst2~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst1|b2v_inst2|b2v_inst2|inst2~1_combout\);

-- Location: LCCOMB_X33_Y4_N12
\inst1|b2v_inst1|b2v_inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst1|b2v_inst2|inst2~0_combout\ = (\S0~input_o\ & (\B[1]~input_o\)) # (!\S0~input_o\ & ((\inst4|b2v_inst1|b2v_inst1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst4|b2v_inst1|b2v_inst1|S~combout\,
	datac => \S0~input_o\,
	combout => \inst1|b2v_inst1|b2v_inst2|inst2~0_combout\);

-- Location: LCCOMB_X33_Y4_N14
\inst1|b2v_inst1|b2v_inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst1|b2v_inst2|inst2~1_combout\ = (\inst1|b2v_inst1|b2v_inst2|inst2~0_combout\ & ((\A[1]~input_o\) # (\S0~input_o\ $ (!\S1~input_o\)))) # (!\inst1|b2v_inst1|b2v_inst2|inst2~0_combout\ & (!\S0~input_o\ & (\A[1]~input_o\ & \S1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|b2v_inst1|b2v_inst2|inst2~0_combout\,
	datab => \S0~input_o\,
	datac => \A[1]~input_o\,
	datad => \S1~input_o\,
	combout => \inst1|b2v_inst1|b2v_inst2|inst2~1_combout\);

-- Location: LCCOMB_X33_Y4_N8
\inst1|b2v_inst|b2v_inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst|b2v_inst2|inst2~0_combout\ = (\S1~input_o\ & ((\A[0]~input_o\) # ((\S0~input_o\)))) # (!\S1~input_o\ & (((!\S0~input_o\ & \inst4|b2v_inst|b2v_inst1|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \A[0]~input_o\,
	datac => \S0~input_o\,
	datad => \inst4|b2v_inst|b2v_inst1|S~combout\,
	combout => \inst1|b2v_inst|b2v_inst2|inst2~0_combout\);

-- Location: LCCOMB_X33_Y4_N26
\inst1|b2v_inst|b2v_inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst|b2v_inst2|inst2~1_combout\ = (\S0~input_o\ & (\B[0]~input_o\ & ((\inst1|b2v_inst|b2v_inst2|inst2~0_combout\) # (\A[0]~input_o\)))) # (!\S0~input_o\ & (\inst1|b2v_inst|b2v_inst2|inst2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|b2v_inst|b2v_inst2|inst2~0_combout\,
	datab => \B[0]~input_o\,
	datac => \S0~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst1|b2v_inst|b2v_inst2|inst2~1_combout\);

ww_Cout <= \Cout~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Z(7) <= \Z[7]~output_o\;

ww_Z(6) <= \Z[6]~output_o\;

ww_Z(5) <= \Z[5]~output_o\;

ww_Z(4) <= \Z[4]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(0) <= \Z[0]~output_o\;
END structure;


