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

-- DATE "09/15/2021 00:44:58"

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

ENTITY 	mux4x1_1bit IS
    PORT (
	Z : OUT std_logic;
	SEL1 : IN std_logic;
	SEL0 : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	B : IN std_logic;
	A : IN std_logic
	);
END mux4x1_1bit;

-- Design Ports Information
-- Z	=>  Location: PIN_33,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- C	=>  Location: PIN_24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SEL1	=>  Location: PIN_25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- B	=>  Location: PIN_31,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SEL0	=>  Location: PIN_32,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A	=>  Location: PIN_28,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D	=>  Location: PIN_30,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF mux4x1_1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_SEL1 : std_logic;
SIGNAL ww_SEL0 : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \SEL1~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \SEL0~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst2~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Z <= ww_Z;
ww_SEL1 <= SEL1;
ww_SEL0 <= SEL0;
ww_D <= D;
ww_C <= C;
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

-- Location: IOOBUF_X0_Y6_N23
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X0_Y11_N22
\SEL1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL1,
	o => \SEL1~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\SEL0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL0,
	o => \SEL0~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X1_Y6_N0
\inst2|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2~0_combout\ = (\SEL0~input_o\ & ((\B~input_o\) # ((\SEL1~input_o\)))) # (!\SEL0~input_o\ & (((!\SEL1~input_o\ & \A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \SEL0~input_o\,
	datac => \SEL1~input_o\,
	datad => \A~input_o\,
	combout => \inst2|inst2~0_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst2|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2~1_combout\ = (\SEL1~input_o\ & ((\inst2|inst2~0_combout\ & (\D~input_o\)) # (!\inst2|inst2~0_combout\ & ((\C~input_o\))))) # (!\SEL1~input_o\ & (((\inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL1~input_o\,
	datab => \D~input_o\,
	datac => \C~input_o\,
	datad => \inst2|inst2~0_combout\,
	combout => \inst2|inst2~1_combout\);

ww_Z <= \Z~output_o\;
END structure;


