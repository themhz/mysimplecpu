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

-- DATE "09/18/2021 02:00:58"

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

ENTITY 	register_16 IS
    PORT (
	Q0 : OUT std_logic;
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	D5 : IN std_logic;
	D6 : IN std_logic;
	D7 : IN std_logic;
	CLK : IN std_logic;
	CE : IN std_logic;
	CLR : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic;
	Q5 : OUT std_logic;
	Q6 : OUT std_logic;
	Q7 : OUT std_logic;
	Q8 : OUT std_logic;
	D8 : IN std_logic;
	D9 : IN std_logic;
	D10 : IN std_logic;
	D11 : IN std_logic;
	D12 : IN std_logic;
	D13 : IN std_logic;
	D14 : IN std_logic;
	D15 : IN std_logic;
	Q9 : OUT std_logic;
	Q10 : OUT std_logic;
	Q11 : OUT std_logic;
	Q12 : OUT std_logic;
	Q13 : OUT std_logic;
	Q14 : OUT std_logic;
	Q15 : OUT std_logic
	);
END register_16;

-- Design Ports Information
-- Q0	=>  Location: PIN_75,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_66,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_73,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_80,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q4	=>  Location: PIN_77,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q5	=>  Location: PIN_121,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q6	=>  Location: PIN_50,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q7	=>  Location: PIN_58,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q8	=>  Location: PIN_86,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q9	=>  Location: PIN_59,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q10	=>  Location: PIN_71,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q11	=>  Location: PIN_54,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q12	=>  Location: PIN_64,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q13	=>  Location: PIN_76,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q14	=>  Location: PIN_74,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- Q15	=>  Location: PIN_53,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D0	=>  Location: PIN_68,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CE	=>  Location: PIN_65,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D1	=>  Location: PIN_67,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D2	=>  Location: PIN_85,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D3	=>  Location: PIN_69,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D4	=>  Location: PIN_51,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D5	=>  Location: PIN_55,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D6	=>  Location: PIN_83,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D7	=>  Location: PIN_72,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D8	=>  Location: PIN_52,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D9	=>  Location: PIN_84,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D10	=>  Location: PIN_115,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D11	=>  Location: PIN_70,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D12	=>  Location: PIN_46,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D13	=>  Location: PIN_44,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D14	=>  Location: PIN_49,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- D15	=>  Location: PIN_60,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF register_16 IS
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
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q6 : std_logic;
SIGNAL ww_Q7 : std_logic;
SIGNAL ww_Q8 : std_logic;
SIGNAL ww_D8 : std_logic;
SIGNAL ww_D9 : std_logic;
SIGNAL ww_D10 : std_logic;
SIGNAL ww_D11 : std_logic;
SIGNAL ww_D12 : std_logic;
SIGNAL ww_D13 : std_logic;
SIGNAL ww_D14 : std_logic;
SIGNAL ww_D15 : std_logic;
SIGNAL ww_Q9 : std_logic;
SIGNAL ww_Q10 : std_logic;
SIGNAL ww_Q11 : std_logic;
SIGNAL ww_Q12 : std_logic;
SIGNAL ww_Q13 : std_logic;
SIGNAL ww_Q14 : std_logic;
SIGNAL ww_Q15 : std_logic;
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q4~output_o\ : std_logic;
SIGNAL \Q5~output_o\ : std_logic;
SIGNAL \Q6~output_o\ : std_logic;
SIGNAL \Q7~output_o\ : std_logic;
SIGNAL \Q8~output_o\ : std_logic;
SIGNAL \Q9~output_o\ : std_logic;
SIGNAL \Q10~output_o\ : std_logic;
SIGNAL \Q11~output_o\ : std_logic;
SIGNAL \Q12~output_o\ : std_logic;
SIGNAL \Q13~output_o\ : std_logic;
SIGNAL \Q14~output_o\ : std_logic;
SIGNAL \Q15~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \inst|b2v_inst|b2v_inst|Q~feeder_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \CE~input_o\ : std_logic;
SIGNAL \inst|b2v_inst|b2v_inst|Q~q\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \inst|b2v_inst|b2v_inst1|Q~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|b2v_inst1|Q~q\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \inst|b2v_inst|b2v_inst2|Q~feeder_combout\ : std_logic;
SIGNAL \inst|b2v_inst|b2v_inst2|Q~q\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \inst|b2v_inst|b2v_inst3|Q~q\ : std_logic;
SIGNAL \D4~input_o\ : std_logic;
SIGNAL \inst|b2v_inst1|b2v_inst|Q~q\ : std_logic;
SIGNAL \D5~input_o\ : std_logic;
SIGNAL \inst|b2v_inst1|b2v_inst1|Q~q\ : std_logic;
SIGNAL \D6~input_o\ : std_logic;
SIGNAL \inst|b2v_inst1|b2v_inst2|Q~q\ : std_logic;
SIGNAL \D7~input_o\ : std_logic;
SIGNAL \inst|b2v_inst1|b2v_inst3|Q~q\ : std_logic;
SIGNAL \D8~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst|Q~feeder_combout\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst|Q~q\ : std_logic;
SIGNAL \D9~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst1|Q~feeder_combout\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst1|Q~q\ : std_logic;
SIGNAL \D10~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst2|Q~q\ : std_logic;
SIGNAL \D11~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst3|Q~feeder_combout\ : std_logic;
SIGNAL \inst1|b2v_inst|b2v_inst3|Q~q\ : std_logic;
SIGNAL \D12~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst1|b2v_inst|Q~feeder_combout\ : std_logic;
SIGNAL \inst1|b2v_inst1|b2v_inst|Q~q\ : std_logic;
SIGNAL \D13~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst1|b2v_inst1|Q~q\ : std_logic;
SIGNAL \D14~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst1|b2v_inst2|Q~q\ : std_logic;
SIGNAL \D15~input_o\ : std_logic;
SIGNAL \inst1|b2v_inst1|b2v_inst3|Q~feeder_combout\ : std_logic;
SIGNAL \inst1|b2v_inst1|b2v_inst3|Q~q\ : std_logic;
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
ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
ww_D4 <= D4;
ww_D5 <= D5;
ww_D6 <= D6;
ww_D7 <= D7;
ww_CLK <= CLK;
ww_CE <= CE;
ww_CLR <= CLR;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
Q4 <= ww_Q4;
Q5 <= ww_Q5;
Q6 <= ww_Q6;
Q7 <= ww_Q7;
Q8 <= ww_Q8;
ww_D8 <= D8;
ww_D9 <= D9;
ww_D10 <= D10;
ww_D11 <= D11;
ww_D12 <= D12;
ww_D13 <= D13;
ww_D14 <= D14;
ww_D15 <= D15;
Q9 <= ww_Q9;
Q10 <= ww_Q10;
Q11 <= ww_Q11;
Q12 <= ww_Q12;
Q13 <= ww_Q13;
Q14 <= ww_Q14;
Q15 <= ww_Q15;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLR~inputclkctrl_outclk\ <= NOT \CLR~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y3_N23
\Q0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst|b2v_inst|Q~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst|b2v_inst1|Q~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\Q2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst|b2v_inst2|Q~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\Q3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst|b2v_inst3|Q~q\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\Q4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst1|b2v_inst|Q~q\,
	devoe => ww_devoe,
	o => \Q4~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\Q5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst1|b2v_inst1|Q~q\,
	devoe => ww_devoe,
	o => \Q5~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Q6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst1|b2v_inst2|Q~q\,
	devoe => ww_devoe,
	o => \Q6~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\Q7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|b2v_inst1|b2v_inst3|Q~q\,
	devoe => ww_devoe,
	o => \Q7~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\Q8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst|b2v_inst|Q~q\,
	devoe => ww_devoe,
	o => \Q8~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Q9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst|b2v_inst1|Q~q\,
	devoe => ww_devoe,
	o => \Q9~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\Q10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst|b2v_inst2|Q~q\,
	devoe => ww_devoe,
	o => \Q10~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Q11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst|b2v_inst3|Q~q\,
	devoe => ww_devoe,
	o => \Q11~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\Q12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst1|b2v_inst|Q~q\,
	devoe => ww_devoe,
	o => \Q12~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\Q13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst1|b2v_inst1|Q~q\,
	devoe => ww_devoe,
	o => \Q13~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\Q14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst1|b2v_inst2|Q~q\,
	devoe => ww_devoe,
	o => \Q14~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Q15~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|b2v_inst1|b2v_inst3|Q~q\,
	devoe => ww_devoe,
	o => \Q15~output_o\);

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

-- Location: IOIBUF_X30_Y0_N8
\D0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: LCCOMB_X26_Y4_N24
\inst|b2v_inst|b2v_inst|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|b2v_inst|Q~feeder_combout\ = \D0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D0~input_o\,
	combout => \inst|b2v_inst|b2v_inst|Q~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N22
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X28_Y0_N22
\CE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CE,
	o => \CE~input_o\);

-- Location: FF_X26_Y4_N25
\inst|b2v_inst|b2v_inst|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|b2v_inst|b2v_inst|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|b2v_inst|Q~q\);

-- Location: IOIBUF_X30_Y0_N22
\D1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: LCCOMB_X26_Y4_N10
\inst|b2v_inst|b2v_inst1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|b2v_inst1|Q~feeder_combout\ = \D1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D1~input_o\,
	combout => \inst|b2v_inst|b2v_inst1|Q~feeder_combout\);

-- Location: FF_X26_Y4_N11
\inst|b2v_inst|b2v_inst1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|b2v_inst|b2v_inst1|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|b2v_inst1|Q~q\);

-- Location: IOIBUF_X34_Y9_N8
\D2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: LCCOMB_X26_Y4_N12
\inst|b2v_inst|b2v_inst2|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|b2v_inst|b2v_inst2|Q~feeder_combout\ = \D2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D2~input_o\,
	combout => \inst|b2v_inst|b2v_inst2|Q~feeder_combout\);

-- Location: FF_X26_Y4_N13
\inst|b2v_inst|b2v_inst2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|b2v_inst|b2v_inst2|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|b2v_inst2|Q~q\);

-- Location: IOIBUF_X30_Y0_N1
\D3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: FF_X26_Y4_N15
\inst|b2v_inst|b2v_inst3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D3~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst|b2v_inst3|Q~q\);

-- Location: IOIBUF_X16_Y0_N22
\D4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4,
	o => \D4~input_o\);

-- Location: FF_X26_Y4_N17
\inst|b2v_inst1|b2v_inst|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D4~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst1|b2v_inst|Q~q\);

-- Location: IOIBUF_X18_Y0_N15
\D5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5,
	o => \D5~input_o\);

-- Location: FF_X26_Y4_N19
\inst|b2v_inst1|b2v_inst1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D5~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst1|b2v_inst1|Q~q\);

-- Location: IOIBUF_X34_Y9_N22
\D6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6,
	o => \D6~input_o\);

-- Location: FF_X26_Y4_N5
\inst|b2v_inst1|b2v_inst2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D6~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst1|b2v_inst2|Q~q\);

-- Location: IOIBUF_X32_Y0_N8
\D7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7,
	o => \D7~input_o\);

-- Location: FF_X26_Y4_N23
\inst|b2v_inst1|b2v_inst3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D7~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|b2v_inst1|b2v_inst3|Q~q\);

-- Location: IOIBUF_X16_Y0_N8
\D8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D8,
	o => \D8~input_o\);

-- Location: LCCOMB_X26_Y4_N0
\inst1|b2v_inst|b2v_inst|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst|b2v_inst|Q~feeder_combout\ = \D8~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D8~input_o\,
	combout => \inst1|b2v_inst|b2v_inst|Q~feeder_combout\);

-- Location: FF_X26_Y4_N1
\inst1|b2v_inst|b2v_inst|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|b2v_inst|b2v_inst|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|b2v_inst|b2v_inst|Q~q\);

-- Location: IOIBUF_X34_Y9_N15
\D9~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D9,
	o => \D9~input_o\);

-- Location: LCCOMB_X26_Y4_N2
\inst1|b2v_inst|b2v_inst1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst|b2v_inst1|Q~feeder_combout\ = \D9~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D9~input_o\,
	combout => \inst1|b2v_inst|b2v_inst1|Q~feeder_combout\);

-- Location: FF_X26_Y4_N3
\inst1|b2v_inst|b2v_inst1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|b2v_inst|b2v_inst1|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|b2v_inst|b2v_inst1|Q~q\);

-- Location: IOIBUF_X28_Y24_N22
\D10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D10,
	o => \D10~input_o\);

-- Location: FF_X26_Y4_N21
\inst1|b2v_inst|b2v_inst2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D10~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|b2v_inst|b2v_inst2|Q~q\);

-- Location: IOIBUF_X32_Y0_N22
\D11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11,
	o => \D11~input_o\);

-- Location: LCCOMB_X26_Y4_N6
\inst1|b2v_inst|b2v_inst3|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst|b2v_inst3|Q~feeder_combout\ = \D11~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D11~input_o\,
	combout => \inst1|b2v_inst|b2v_inst3|Q~feeder_combout\);

-- Location: FF_X26_Y4_N7
\inst1|b2v_inst|b2v_inst3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|b2v_inst|b2v_inst3|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|b2v_inst|b2v_inst3|Q~q\);

-- Location: IOIBUF_X7_Y0_N1
\D12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12,
	o => \D12~input_o\);

-- Location: LCCOMB_X26_Y4_N8
\inst1|b2v_inst1|b2v_inst|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst1|b2v_inst|Q~feeder_combout\ = \D12~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D12~input_o\,
	combout => \inst1|b2v_inst1|b2v_inst|Q~feeder_combout\);

-- Location: FF_X26_Y4_N9
\inst1|b2v_inst1|b2v_inst|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|b2v_inst1|b2v_inst|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|b2v_inst1|b2v_inst|Q~q\);

-- Location: IOIBUF_X5_Y0_N15
\D13~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D13,
	o => \D13~input_o\);

-- Location: FF_X26_Y4_N27
\inst1|b2v_inst1|b2v_inst1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D13~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|b2v_inst1|b2v_inst1|Q~q\);

-- Location: IOIBUF_X13_Y0_N15
\D14~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D14,
	o => \D14~input_o\);

-- Location: FF_X26_Y4_N29
\inst1|b2v_inst1|b2v_inst2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D14~input_o\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|b2v_inst1|b2v_inst2|Q~q\);

-- Location: IOIBUF_X23_Y0_N8
\D15~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D15,
	o => \D15~input_o\);

-- Location: LCCOMB_X26_Y4_N30
\inst1|b2v_inst1|b2v_inst3|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|b2v_inst1|b2v_inst3|Q~feeder_combout\ = \D15~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D15~input_o\,
	combout => \inst1|b2v_inst1|b2v_inst3|Q~feeder_combout\);

-- Location: FF_X26_Y4_N31
\inst1|b2v_inst1|b2v_inst3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|b2v_inst1|b2v_inst3|Q~feeder_combout\,
	clrn => \ALT_INV_CLR~inputclkctrl_outclk\,
	ena => \CE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|b2v_inst1|b2v_inst3|Q~q\);

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q3 <= \Q3~output_o\;

ww_Q4 <= \Q4~output_o\;

ww_Q5 <= \Q5~output_o\;

ww_Q6 <= \Q6~output_o\;

ww_Q7 <= \Q7~output_o\;

ww_Q8 <= \Q8~output_o\;

ww_Q9 <= \Q9~output_o\;

ww_Q10 <= \Q10~output_o\;

ww_Q11 <= \Q11~output_o\;

ww_Q12 <= \Q12~output_o\;

ww_Q13 <= \Q13~output_o\;

ww_Q14 <= \Q14~output_o\;

ww_Q15 <= \Q15~output_o\;
END structure;


