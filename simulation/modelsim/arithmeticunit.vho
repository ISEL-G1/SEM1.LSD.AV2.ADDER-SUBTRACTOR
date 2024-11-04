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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/04/2024 11:11:03"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	arithmeticunit IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	carry_in : IN std_logic;
	carry_out : BUFFER std_logic;
	operation_bit : IN std_logic;
	result : BUFFER std_logic_vector(3 DOWNTO 0);
	overflow : BUFFER std_logic
	);
END arithmeticunit;

-- Design Ports Information
-- carry_out	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operation_bit	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_in	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF arithmeticunit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carry_in : std_logic;
SIGNAL ww_carry_out : std_logic;
SIGNAL ww_operation_bit : std_logic;
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \carry_in~input_o\ : std_logic;
SIGNAL \operation_bit~input_o\ : std_logic;
SIGNAL \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \instance_inner_arithmetic|carry_out~0_combout\ : std_logic;
SIGNAL \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \instance_flags|overflow~0_combout\ : std_logic;
SIGNAL \instance_flags|ALT_INV_overflow~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_carry_in <= carry_in;
carry_out <= ww_carry_out;
ww_operation_bit <= operation_bit;
result <= ww_result;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\instance_flags|ALT_INV_overflow~0_combout\ <= NOT \instance_flags|overflow~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N23
\carry_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_inner_arithmetic|carry_out~0_combout\,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|instance_half_adder_2|result~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~0_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_flags|ALT_INV_overflow~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOIBUF_X49_Y54_N1
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\carry_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry_in,
	o => \carry_in~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\operation_bit~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operation_bit,
	o => \operation_bit~input_o\);

-- Location: LCCOMB_X52_Y53_N16
\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ = (\B[0]~input_o\ & ((\carry_in~input_o\ & ((!\operation_bit~input_o\))) # (!\carry_in~input_o\ & (\A[0]~input_o\)))) # (!\B[0]~input_o\ & 
-- ((\carry_in~input_o\ & (\A[0]~input_o\)) # (!\carry_in~input_o\ & ((\operation_bit~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \carry_in~input_o\,
	datad => \operation_bit~input_o\,
	combout => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X52_Y53_N10
\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ = (\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\ $ 
-- (\operation_bit~input_o\)))) # (!\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ & (\A[1]~input_o\ & (\B[1]~input_o\ $ (\operation_bit~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\,
	datac => \A[1]~input_o\,
	datad => \operation_bit~input_o\,
	combout => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\);

-- Location: IOIBUF_X54_Y54_N15
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X52_Y53_N12
\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ = (\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\ $ 
-- (\operation_bit~input_o\)))) # (!\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ & (\A[2]~input_o\ & (\B[2]~input_o\ $ (\operation_bit~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \operation_bit~input_o\,
	combout => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X52_Y53_N22
\instance_inner_arithmetic|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_inner_arithmetic|carry_out~0_combout\ = (\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ & ((\A[3]~input_o\ & ((!\operation_bit~input_o\))) # (!\A[3]~input_o\ & (\B[3]~input_o\)))) # 
-- (!\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ & ((\A[3]~input_o\ & (\B[3]~input_o\)) # (!\A[3]~input_o\ & ((\operation_bit~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \operation_bit~input_o\,
	combout => \instance_inner_arithmetic|carry_out~0_combout\);

-- Location: LCCOMB_X52_Y53_N24
\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|instance_half_adder_2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|instance_half_adder_2|result~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\carry_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \carry_in~input_o\,
	combout => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|instance_half_adder_2|result~0_combout\);

-- Location: LCCOMB_X52_Y53_N2
\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\ = \B[1]~input_o\ $ (\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\ $ 
-- (\A[1]~input_o\ $ (\operation_bit~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_1|carry_out~0_combout\,
	datac => \A[1]~input_o\,
	datad => \operation_bit~input_o\,
	combout => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|instance_half_adder_2|result~0_combout\);

-- Location: LCCOMB_X52_Y53_N4
\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~0_combout\ = \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\ $ (\B[2]~input_o\ $ 
-- (\A[2]~input_o\ $ (\operation_bit~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_2|carry_out~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \operation_bit~input_o\,
	combout => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|instance_half_adder_2|result~0_combout\);

-- Location: LCCOMB_X52_Y53_N14
\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\ = \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ $ (\A[3]~input_o\ $ 
-- (\B[3]~input_o\ $ (\operation_bit~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \operation_bit~input_o\,
	combout => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\);

-- Location: LCCOMB_X52_Y53_N8
\instance_flags|overflow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instance_flags|overflow~0_combout\ = (\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\ $ (\operation_bit~input_o\)))) # 
-- (!\instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\ & ((\B[3]~input_o\ $ (!\operation_bit~input_o\)) # (!\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_inner_arithmetic|instance_adder_subtractor_4bits|instance_full_adder_3|carry_out~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \operation_bit~input_o\,
	combout => \instance_flags|overflow~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_carry_out <= \carry_out~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


