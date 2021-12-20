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

-- DATE "12/19/2021 02:22:05"

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

ENTITY 	replicate IS
    PORT (
	Z : OUT std_logic_vector(7 DOWNTO 0);
	A : IN std_logic
	);
END replicate;

-- Design Ports Information
-- Z[7]	=>  Location: PIN_28,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_39,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_46,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_52,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_53,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_33,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_32,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Z[0]	=>  Location: PIN_38,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- A	=>  Location: PIN_24,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF replicate IS
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
SIGNAL ww_A : std_logic;
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Z <= ww_Z;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N9
\Z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A~input_o\,
	devoe => ww_devoe,
	o => \Z[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A~input_o\,
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
	i => \A~input_o\,
	devoe => ww_devoe,
	o => \Z[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A~input_o\,
	devoe => ww_devoe,
	o => \Z[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A~input_o\,
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A~input_o\,
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A~input_o\,
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A~input_o\,
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

ww_Z(7) <= \Z[7]~output_o\;

ww_Z(6) <= \Z[6]~output_o\;

ww_Z(5) <= \Z[5]~output_o\;

ww_Z(4) <= \Z[4]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(0) <= \Z[0]~output_o\;
END structure;


