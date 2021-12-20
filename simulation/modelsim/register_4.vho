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

-- DATE "09/18/2021 01:17:44"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_4 IS
    PORT (
	Q0 : OUT std_logic;
	D0 : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	CLR : IN std_logic;
	Q1 : OUT std_logic;
	D1 : IN std_logic;
	Q2 : OUT std_logic;
	D2 : IN std_logic;
	Q3 : OUT std_logic;
	D3 : IN std_logic
	);
END register_4;

-- Design Ports Information
-- Q0	=>  Location: PIN_30,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_32,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CE	=>  Location: PIN_34,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D1	=>  Location: PIN_33,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D2	=>  Location: PIN_46,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D3	=>  Location: PIN_43,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF register_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \inst|Q~feeder_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \CE~input_o\ : std_logic;
SIGNAL \inst|Q~q\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \inst1|Q~q\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \inst2|Q~q\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \inst3|Q~feeder_combout\ : std_logic;
SIGNAL \inst3|Q~q\ : std_logic;
SIGNAL \ALT_INV_CLR~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q0 <= ww_Q0;
ww_D0 <= D0;
ww_CLK <= CLK;
ww_CE <= CE;
ww_CLR <= CLR;
Q1 <= ww_Q1;
ww_D1 <= D1;
Q2 <= ww_Q2;
ww_D2 <= D2;
Q3 <= ww_Q3;
ww_D3 <= D3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);
\ALT_INV_CLR~inputclkctrl_outclk\ <= NOT \CLR~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\Q0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\Q2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Q~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Q3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Q~q\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N22
\D0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: LCCOMB_X1_Y5_N8
\inst|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q~feeder_combout\ = \D0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D0~input_o\,
	combout => \inst|Q~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N8
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G2
\CLR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y5_N15
\CE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CE,
	o => \CE~input_o\);

-- Location: FF_X1_Y5_N9
\inst|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q~q\);

-- Location: IOIBUF_X0_Y6_N22
\D1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: FF_X1_Y5_N19
\inst1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D1~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q~q\);

-- Location: IOIBUF_X7_Y0_N1
\D2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: FF_X6_Y5_N9
\inst2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D2~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q~q\);

-- Location: IOIBUF_X5_Y0_N22
\D3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: LCCOMB_X6_Y5_N18
\inst3|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Q~feeder_combout\ = \D3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D3~input_o\,
	combout => \inst3|Q~feeder_combout\);

-- Location: FF_X6_Y5_N19
\inst3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q~q\);

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q3 <= \Q3~output_o\;
END structure;


