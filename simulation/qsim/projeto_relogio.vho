-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/05/2019 17:35:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	datain : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	rw : OUT std_logic_vector(1 DOWNTO 0);
	dataout : OUT std_logic_vector(7 DOWNTO 0);
	addr : OUT std_logic_vector(7 DOWNTO 0)
	);
END relogio;

ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_datain : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dataout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL \datain[7]~input_o\ : std_logic;
SIGNAL \datain[6]~input_o\ : std_logic;
SIGNAL \datain[5]~input_o\ : std_logic;
SIGNAL \datain[4]~input_o\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \rw[0]~output_o\ : std_logic;
SIGNAL \rw[1]~output_o\ : std_logic;
SIGNAL \dataout[0]~output_o\ : std_logic;
SIGNAL \dataout[1]~output_o\ : std_logic;
SIGNAL \dataout[2]~output_o\ : std_logic;
SIGNAL \dataout[3]~output_o\ : std_logic;
SIGNAL \dataout[4]~output_o\ : std_logic;
SIGNAL \dataout[5]~output_o\ : std_logic;
SIGNAL \dataout[6]~output_o\ : std_logic;
SIGNAL \dataout[7]~output_o\ : std_logic;
SIGNAL \addr[0]~output_o\ : std_logic;
SIGNAL \addr[1]~output_o\ : std_logic;
SIGNAL \addr[2]~output_o\ : std_logic;
SIGNAL \addr[3]~output_o\ : std_logic;
SIGNAL \addr[4]~output_o\ : std_logic;
SIGNAL \addr[5]~output_o\ : std_logic;
SIGNAL \addr[6]~output_o\ : std_logic;
SIGNAL \addr[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \processador|pc|pc_o[0]~8_combout\ : std_logic;
SIGNAL \processador|pc|pc_o[0]~9\ : std_logic;
SIGNAL \processador|pc|pc_o[1]~10_combout\ : std_logic;
SIGNAL \processador|pc|pc_o[1]~11\ : std_logic;
SIGNAL \processador|pc|pc_o[2]~12_combout\ : std_logic;
SIGNAL \processador|pc|pc_o[2]~13\ : std_logic;
SIGNAL \processador|pc|pc_o[3]~14_combout\ : std_logic;
SIGNAL \processador|pc|pc_o[3]~15\ : std_logic;
SIGNAL \processador|pc|pc_o[4]~16_combout\ : std_logic;
SIGNAL \processador|pc|pc_o[4]~17\ : std_logic;
SIGNAL \processador|pc|pc_o[5]~18_combout\ : std_logic;
SIGNAL \processador|pc|pc_o[5]~19\ : std_logic;
SIGNAL \processador|pc|pc_o[6]~20_combout\ : std_logic;
SIGNAL \processador|pc|pc_o[6]~21\ : std_logic;
SIGNAL \processador|pc|pc_o[7]~22_combout\ : std_logic;
SIGNAL \rom|rom~0_combout\ : std_logic;
SIGNAL \rom|rom~1_combout\ : std_logic;
SIGNAL \rom|rom~2_combout\ : std_logic;
SIGNAL \rom|rom~7_combout\ : std_logic;
SIGNAL \processador|mux3|Mux7~0_combout\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[0]~0_combout\ : std_logic;
SIGNAL \rom|rom~8_combout\ : std_logic;
SIGNAL \processador|ula|Add0~0_combout\ : std_logic;
SIGNAL \rom|rom~9_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~84_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~20_q\ : std_logic;
SIGNAL \rom|rom~3_combout\ : std_logic;
SIGNAL \rom|rom~4_combout\ : std_logic;
SIGNAL \rom|rom~5_combout\ : std_logic;
SIGNAL \rom|rom~6_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~85_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~28_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~76_combout\ : std_logic;
SIGNAL \processador|muxDataOut|Y[0]~0_combout\ : std_logic;
SIGNAL \processador|mux3|Mux6~0_combout\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[0]~1\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[1]~2_combout\ : std_logic;
SIGNAL \processador|ula|Add0~1_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~29_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~21_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~77_combout\ : std_logic;
SIGNAL \processador|muxDataOut|Y[1]~1_combout\ : std_logic;
SIGNAL \processador|mux3|Mux5~0_combout\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[1]~3\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[2]~4_combout\ : std_logic;
SIGNAL \processador|ula|Add0~2_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~22_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~30_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~78_combout\ : std_logic;
SIGNAL \processador|muxDataOut|Y[2]~2_combout\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[2]~5\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[3]~6_combout\ : std_logic;
SIGNAL \processador|ula|Add0~3_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~31_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~23_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~79_combout\ : std_logic;
SIGNAL \processador|muxDataOut|Y[3]~3_combout\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[3]~7\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[4]~8_combout\ : std_logic;
SIGNAL \processador|ula|Add0~4_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~24_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~32_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~80_combout\ : std_logic;
SIGNAL \processador|muxDataOut|Y[4]~4_combout\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[4]~9\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[5]~10_combout\ : std_logic;
SIGNAL \processador|ula|Add0~5_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~33_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~25_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~81_combout\ : std_logic;
SIGNAL \processador|muxDataOut|Y[5]~5_combout\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[5]~11\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[6]~12_combout\ : std_logic;
SIGNAL \processador|ula|Add0~6_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~26_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~34_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~82_combout\ : std_logic;
SIGNAL \processador|muxDataOut|Y[6]~6_combout\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[6]~13\ : std_logic;
SIGNAL \processador|ula|resultadoAdd[7]~14_combout\ : std_logic;
SIGNAL \processador|ula|Add0~7_combout\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~35_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~27_q\ : std_logic;
SIGNAL \processador|bancoRegistradores|registrador~83_combout\ : std_logic;
SIGNAL \processador|muxDataOut|Y[7]~7_combout\ : std_logic;
SIGNAL \rom|rom~10_combout\ : std_logic;
SIGNAL \rom|rom~11_combout\ : std_logic;
SIGNAL \rom|rom~12_combout\ : std_logic;
SIGNAL \processador|pc|pc_o\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_datain <= datain;
ww_clk <= clk;
rw <= ww_rw;
dataout <= ww_dataout;
addr <= ww_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rw[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~2_combout\,
	devoe => ww_devoe,
	o => \rw[0]~output_o\);

\rw[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw[1]~output_o\);

\dataout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|muxDataOut|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \dataout[0]~output_o\);

\dataout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|muxDataOut|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \dataout[1]~output_o\);

\dataout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|muxDataOut|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => \dataout[2]~output_o\);

\dataout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|muxDataOut|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => \dataout[3]~output_o\);

\dataout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|muxDataOut|Y[4]~4_combout\,
	devoe => ww_devoe,
	o => \dataout[4]~output_o\);

\dataout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|muxDataOut|Y[5]~5_combout\,
	devoe => ww_devoe,
	o => \dataout[5]~output_o\);

\dataout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|muxDataOut|Y[6]~6_combout\,
	devoe => ww_devoe,
	o => \dataout[6]~output_o\);

\dataout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|muxDataOut|Y[7]~7_combout\,
	devoe => ww_devoe,
	o => \dataout[7]~output_o\);

\addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~10_combout\,
	devoe => ww_devoe,
	o => \addr[0]~output_o\);

\addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~11_combout\,
	devoe => ww_devoe,
	o => \addr[1]~output_o\);

\addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~12_combout\,
	devoe => ww_devoe,
	o => \addr[2]~output_o\);

\addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~11_combout\,
	devoe => ww_devoe,
	o => \addr[3]~output_o\);

\addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~12_combout\,
	devoe => ww_devoe,
	o => \addr[4]~output_o\);

\addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~11_combout\,
	devoe => ww_devoe,
	o => \addr[5]~output_o\);

\addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~12_combout\,
	devoe => ww_devoe,
	o => \addr[6]~output_o\);

\addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rom|rom~11_combout\,
	devoe => ww_devoe,
	o => \addr[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\processador|pc|pc_o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|pc|pc_o[0]~8_combout\ = \processador|pc|pc_o\(0) $ (VCC)
-- \processador|pc|pc_o[0]~9\ = CARRY(\processador|pc|pc_o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(0),
	datad => VCC,
	combout => \processador|pc|pc_o[0]~8_combout\,
	cout => \processador|pc|pc_o[0]~9\);

\processador|pc|pc_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|pc|pc_o[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|pc|pc_o\(0));

\processador|pc|pc_o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|pc|pc_o[1]~10_combout\ = (\processador|pc|pc_o\(1) & (!\processador|pc|pc_o[0]~9\)) # (!\processador|pc|pc_o\(1) & ((\processador|pc|pc_o[0]~9\) # (GND)))
-- \processador|pc|pc_o[1]~11\ = CARRY((!\processador|pc|pc_o[0]~9\) # (!\processador|pc|pc_o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(1),
	datad => VCC,
	cin => \processador|pc|pc_o[0]~9\,
	combout => \processador|pc|pc_o[1]~10_combout\,
	cout => \processador|pc|pc_o[1]~11\);

\processador|pc|pc_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|pc|pc_o[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|pc|pc_o\(1));

\processador|pc|pc_o[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|pc|pc_o[2]~12_combout\ = (\processador|pc|pc_o\(2) & (\processador|pc|pc_o[1]~11\ $ (GND))) # (!\processador|pc|pc_o\(2) & (!\processador|pc|pc_o[1]~11\ & VCC))
-- \processador|pc|pc_o[2]~13\ = CARRY((\processador|pc|pc_o\(2) & !\processador|pc|pc_o[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(2),
	datad => VCC,
	cin => \processador|pc|pc_o[1]~11\,
	combout => \processador|pc|pc_o[2]~12_combout\,
	cout => \processador|pc|pc_o[2]~13\);

\processador|pc|pc_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|pc|pc_o[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|pc|pc_o\(2));

\processador|pc|pc_o[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|pc|pc_o[3]~14_combout\ = (\processador|pc|pc_o\(3) & (!\processador|pc|pc_o[2]~13\)) # (!\processador|pc|pc_o\(3) & ((\processador|pc|pc_o[2]~13\) # (GND)))
-- \processador|pc|pc_o[3]~15\ = CARRY((!\processador|pc|pc_o[2]~13\) # (!\processador|pc|pc_o\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(3),
	datad => VCC,
	cin => \processador|pc|pc_o[2]~13\,
	combout => \processador|pc|pc_o[3]~14_combout\,
	cout => \processador|pc|pc_o[3]~15\);

\processador|pc|pc_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|pc|pc_o[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|pc|pc_o\(3));

\processador|pc|pc_o[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|pc|pc_o[4]~16_combout\ = (\processador|pc|pc_o\(4) & (\processador|pc|pc_o[3]~15\ $ (GND))) # (!\processador|pc|pc_o\(4) & (!\processador|pc|pc_o[3]~15\ & VCC))
-- \processador|pc|pc_o[4]~17\ = CARRY((\processador|pc|pc_o\(4) & !\processador|pc|pc_o[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(4),
	datad => VCC,
	cin => \processador|pc|pc_o[3]~15\,
	combout => \processador|pc|pc_o[4]~16_combout\,
	cout => \processador|pc|pc_o[4]~17\);

\processador|pc|pc_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|pc|pc_o[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|pc|pc_o\(4));

\processador|pc|pc_o[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|pc|pc_o[5]~18_combout\ = (\processador|pc|pc_o\(5) & (!\processador|pc|pc_o[4]~17\)) # (!\processador|pc|pc_o\(5) & ((\processador|pc|pc_o[4]~17\) # (GND)))
-- \processador|pc|pc_o[5]~19\ = CARRY((!\processador|pc|pc_o[4]~17\) # (!\processador|pc|pc_o\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(5),
	datad => VCC,
	cin => \processador|pc|pc_o[4]~17\,
	combout => \processador|pc|pc_o[5]~18_combout\,
	cout => \processador|pc|pc_o[5]~19\);

\processador|pc|pc_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|pc|pc_o[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|pc|pc_o\(5));

\processador|pc|pc_o[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|pc|pc_o[6]~20_combout\ = (\processador|pc|pc_o\(6) & (\processador|pc|pc_o[5]~19\ $ (GND))) # (!\processador|pc|pc_o\(6) & (!\processador|pc|pc_o[5]~19\ & VCC))
-- \processador|pc|pc_o[6]~21\ = CARRY((\processador|pc|pc_o\(6) & !\processador|pc|pc_o[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(6),
	datad => VCC,
	cin => \processador|pc|pc_o[5]~19\,
	combout => \processador|pc|pc_o[6]~20_combout\,
	cout => \processador|pc|pc_o[6]~21\);

\processador|pc|pc_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|pc|pc_o[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|pc|pc_o\(6));

\processador|pc|pc_o[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|pc|pc_o[7]~22_combout\ = \processador|pc|pc_o\(7) $ (\processador|pc|pc_o[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(7),
	cin => \processador|pc|pc_o[6]~21\,
	combout => \processador|pc|pc_o[7]~22_combout\);

\processador|pc|pc_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|pc|pc_o[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|pc|pc_o\(7));

\rom|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~0_combout\ = (!\processador|pc|pc_o\(4) & (!\processador|pc|pc_o\(5) & (!\processador|pc|pc_o\(6) & !\processador|pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(4),
	datab => \processador|pc|pc_o\(5),
	datac => \processador|pc|pc_o\(6),
	datad => \processador|pc|pc_o\(7),
	combout => \rom|rom~0_combout\);

\rom|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~1_combout\ = (\processador|pc|pc_o\(2) & (!\processador|pc|pc_o\(0) & !\processador|pc|pc_o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(2),
	datac => \processador|pc|pc_o\(0),
	datad => \processador|pc|pc_o\(1),
	combout => \rom|rom~1_combout\);

\rom|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~2_combout\ = (\rom|rom~0_combout\ & (\rom|rom~1_combout\ & !\processador|pc|pc_o\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~0_combout\,
	datab => \rom|rom~1_combout\,
	datad => \processador|pc|pc_o\(3),
	combout => \rom|rom~2_combout\);

\rom|rom~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~7_combout\ = (\processador|pc|pc_o\(2)) # ((\processador|pc|pc_o\(3)) # ((\processador|pc|pc_o\(0) & !\processador|pc|pc_o\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(0),
	datab => \processador|pc|pc_o\(1),
	datac => \processador|pc|pc_o\(2),
	datad => \processador|pc|pc_o\(3),
	combout => \rom|rom~7_combout\);

\processador|mux3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|mux3|Mux7~0_combout\ = (\rom|rom~0_combout\ & (!\rom|rom~7_combout\ & ((\processador|pc|pc_o\(3)) # (!\rom|rom~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~0_combout\,
	datab => \processador|pc|pc_o\(3),
	datac => \rom|rom~1_combout\,
	datad => \rom|rom~7_combout\,
	combout => \processador|mux3|Mux7~0_combout\);

\processador|ula|resultadoAdd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|resultadoAdd[0]~0_combout\ = (\processador|bancoRegistradores|registrador~76_combout\ & (\processador|mux3|Mux7~0_combout\ $ (VCC))) # (!\processador|bancoRegistradores|registrador~76_combout\ & (\processador|mux3|Mux7~0_combout\ & VCC))
-- \processador|ula|resultadoAdd[0]~1\ = CARRY((\processador|bancoRegistradores|registrador~76_combout\ & \processador|mux3|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~76_combout\,
	datab => \processador|mux3|Mux7~0_combout\,
	datad => VCC,
	combout => \processador|ula|resultadoAdd[0]~0_combout\,
	cout => \processador|ula|resultadoAdd[0]~1\);

\rom|rom~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~8_combout\ = (\rom|rom~0_combout\ & (\processador|pc|pc_o\(1) & (!\processador|pc|pc_o\(3) & !\processador|pc|pc_o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~0_combout\,
	datab => \processador|pc|pc_o\(1),
	datac => \processador|pc|pc_o\(3),
	datad => \processador|pc|pc_o\(2),
	combout => \rom|rom~8_combout\);

\processador|ula|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|Add0~0_combout\ = (\rom|rom~8_combout\ & (\processador|ula|resultadoAdd[0]~0_combout\)) # (!\rom|rom~8_combout\ & ((\processador|mux3|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ula|resultadoAdd[0]~0_combout\,
	datab => \processador|mux3|Mux7~0_combout\,
	datad => \rom|rom~8_combout\,
	combout => \processador|ula|Add0~0_combout\);

\rom|rom~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~9_combout\ = (\rom|rom~0_combout\ & (!\processador|pc|pc_o\(3) & !\processador|pc|pc_o\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~0_combout\,
	datac => \processador|pc|pc_o\(3),
	datad => \processador|pc|pc_o\(2),
	combout => \rom|rom~9_combout\);

\processador|bancoRegistradores|registrador~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~84_combout\ = (\rom|rom~9_combout\ & (\rom|rom~8_combout\ & !\processador|pc|pc_o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~9_combout\,
	datab => \rom|rom~8_combout\,
	datad => \processador|pc|pc_o\(0),
	combout => \processador|bancoRegistradores|registrador~84_combout\);

\processador|bancoRegistradores|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~0_combout\,
	ena => \processador|bancoRegistradores|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~20_q\);

\rom|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~3_combout\ = (!\processador|pc|pc_o\(0) & (!\processador|pc|pc_o\(3) & (\processador|pc|pc_o\(1) $ (\processador|pc|pc_o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(0),
	datab => \processador|pc|pc_o\(1),
	datac => \processador|pc|pc_o\(2),
	datad => \processador|pc|pc_o\(3),
	combout => \rom|rom~3_combout\);

\rom|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~4_combout\ = (\rom|rom~0_combout\ & \rom|rom~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~0_combout\,
	datab => \rom|rom~3_combout\,
	combout => \rom|rom~4_combout\);

\rom|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~5_combout\ = (\processador|pc|pc_o\(0) & !\processador|pc|pc_o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(0),
	datab => \processador|pc|pc_o\(3),
	combout => \rom|rom~5_combout\);

\rom|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~6_combout\ = (\processador|pc|pc_o\(1) & (\rom|rom~0_combout\ & (!\processador|pc|pc_o\(2) & \rom|rom~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(1),
	datab => \rom|rom~0_combout\,
	datac => \processador|pc|pc_o\(2),
	datad => \rom|rom~5_combout\,
	combout => \rom|rom~6_combout\);

\processador|bancoRegistradores|registrador~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~85_combout\ = (\processador|pc|pc_o\(0) & (\rom|rom~9_combout\ & \rom|rom~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(0),
	datab => \rom|rom~9_combout\,
	datac => \rom|rom~8_combout\,
	combout => \processador|bancoRegistradores|registrador~85_combout\);

\processador|bancoRegistradores|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~0_combout\,
	ena => \processador|bancoRegistradores|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~28_q\);

\processador|bancoRegistradores|registrador~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~76_combout\ = (\rom|rom~4_combout\ & (\processador|bancoRegistradores|registrador~20_q\ & (!\rom|rom~6_combout\))) # (!\rom|rom~4_combout\ & (((\rom|rom~6_combout\ & 
-- \processador|bancoRegistradores|registrador~28_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~20_q\,
	datab => \rom|rom~4_combout\,
	datac => \rom|rom~6_combout\,
	datad => \processador|bancoRegistradores|registrador~28_q\,
	combout => \processador|bancoRegistradores|registrador~76_combout\);

\processador|muxDataOut|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|muxDataOut|Y[0]~0_combout\ = (\rom|rom~2_combout\ & (\processador|bancoRegistradores|registrador~76_combout\)) # (!\rom|rom~2_combout\ & ((\processador|ula|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~76_combout\,
	datab => \processador|ula|Add0~0_combout\,
	datad => \rom|rom~2_combout\,
	combout => \processador|muxDataOut|Y[0]~0_combout\);

\processador|mux3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|mux3|Mux6~0_combout\ = (\processador|pc|pc_o\(0) & (\rom|rom~9_combout\ & (!\processador|pc|pc_o\(1) & !\rom|rom~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(0),
	datab => \rom|rom~9_combout\,
	datac => \processador|pc|pc_o\(1),
	datad => \rom|rom~2_combout\,
	combout => \processador|mux3|Mux6~0_combout\);

\processador|ula|resultadoAdd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|resultadoAdd[1]~2_combout\ = (\processador|bancoRegistradores|registrador~77_combout\ & ((\processador|mux3|Mux6~0_combout\ & (\processador|ula|resultadoAdd[0]~1\ & VCC)) # (!\processador|mux3|Mux6~0_combout\ & 
-- (!\processador|ula|resultadoAdd[0]~1\)))) # (!\processador|bancoRegistradores|registrador~77_combout\ & ((\processador|mux3|Mux6~0_combout\ & (!\processador|ula|resultadoAdd[0]~1\)) # (!\processador|mux3|Mux6~0_combout\ & 
-- ((\processador|ula|resultadoAdd[0]~1\) # (GND)))))
-- \processador|ula|resultadoAdd[1]~3\ = CARRY((\processador|bancoRegistradores|registrador~77_combout\ & (!\processador|mux3|Mux6~0_combout\ & !\processador|ula|resultadoAdd[0]~1\)) # (!\processador|bancoRegistradores|registrador~77_combout\ & 
-- ((!\processador|ula|resultadoAdd[0]~1\) # (!\processador|mux3|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~77_combout\,
	datab => \processador|mux3|Mux6~0_combout\,
	datad => VCC,
	cin => \processador|ula|resultadoAdd[0]~1\,
	combout => \processador|ula|resultadoAdd[1]~2_combout\,
	cout => \processador|ula|resultadoAdd[1]~3\);

\processador|ula|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|Add0~1_combout\ = (\rom|rom~8_combout\ & (\processador|ula|resultadoAdd[1]~2_combout\)) # (!\rom|rom~8_combout\ & ((\processador|mux3|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ula|resultadoAdd[1]~2_combout\,
	datab => \processador|mux3|Mux6~0_combout\,
	datad => \rom|rom~8_combout\,
	combout => \processador|ula|Add0~1_combout\);

\processador|bancoRegistradores|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~1_combout\,
	ena => \processador|bancoRegistradores|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~29_q\);

\processador|bancoRegistradores|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~1_combout\,
	ena => \processador|bancoRegistradores|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~21_q\);

\processador|bancoRegistradores|registrador~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~77_combout\ = (\rom|rom~6_combout\ & (\processador|bancoRegistradores|registrador~29_q\ & (!\rom|rom~4_combout\))) # (!\rom|rom~6_combout\ & (((\rom|rom~4_combout\ & 
-- \processador|bancoRegistradores|registrador~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~29_q\,
	datab => \rom|rom~6_combout\,
	datac => \rom|rom~4_combout\,
	datad => \processador|bancoRegistradores|registrador~21_q\,
	combout => \processador|bancoRegistradores|registrador~77_combout\);

\processador|muxDataOut|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|muxDataOut|Y[1]~1_combout\ = (\rom|rom~2_combout\ & (\processador|bancoRegistradores|registrador~77_combout\)) # (!\rom|rom~2_combout\ & ((\processador|ula|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~77_combout\,
	datab => \processador|ula|Add0~1_combout\,
	datad => \rom|rom~2_combout\,
	combout => \processador|muxDataOut|Y[1]~1_combout\);

\processador|mux3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|mux3|Mux5~0_combout\ = (\rom|rom~9_combout\ & (!\processador|pc|pc_o\(0) & (!\processador|pc|pc_o\(1) & !\rom|rom~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~9_combout\,
	datab => \processador|pc|pc_o\(0),
	datac => \processador|pc|pc_o\(1),
	datad => \rom|rom~2_combout\,
	combout => \processador|mux3|Mux5~0_combout\);

\processador|ula|resultadoAdd[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|resultadoAdd[2]~4_combout\ = ((\processador|bancoRegistradores|registrador~78_combout\ $ (\processador|mux3|Mux5~0_combout\ $ (!\processador|ula|resultadoAdd[1]~3\)))) # (GND)
-- \processador|ula|resultadoAdd[2]~5\ = CARRY((\processador|bancoRegistradores|registrador~78_combout\ & ((\processador|mux3|Mux5~0_combout\) # (!\processador|ula|resultadoAdd[1]~3\))) # (!\processador|bancoRegistradores|registrador~78_combout\ & 
-- (\processador|mux3|Mux5~0_combout\ & !\processador|ula|resultadoAdd[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~78_combout\,
	datab => \processador|mux3|Mux5~0_combout\,
	datad => VCC,
	cin => \processador|ula|resultadoAdd[1]~3\,
	combout => \processador|ula|resultadoAdd[2]~4_combout\,
	cout => \processador|ula|resultadoAdd[2]~5\);

\processador|ula|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|Add0~2_combout\ = (\rom|rom~8_combout\ & (\processador|ula|resultadoAdd[2]~4_combout\)) # (!\rom|rom~8_combout\ & ((\processador|mux3|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ula|resultadoAdd[2]~4_combout\,
	datab => \processador|mux3|Mux5~0_combout\,
	datad => \rom|rom~8_combout\,
	combout => \processador|ula|Add0~2_combout\);

\processador|bancoRegistradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~2_combout\,
	ena => \processador|bancoRegistradores|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~22_q\);

\processador|bancoRegistradores|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~2_combout\,
	ena => \processador|bancoRegistradores|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~30_q\);

\processador|bancoRegistradores|registrador~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~78_combout\ = (\rom|rom~4_combout\ & (\processador|bancoRegistradores|registrador~22_q\ & (!\rom|rom~6_combout\))) # (!\rom|rom~4_combout\ & (((\rom|rom~6_combout\ & 
-- \processador|bancoRegistradores|registrador~30_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~22_q\,
	datab => \rom|rom~4_combout\,
	datac => \rom|rom~6_combout\,
	datad => \processador|bancoRegistradores|registrador~30_q\,
	combout => \processador|bancoRegistradores|registrador~78_combout\);

\processador|muxDataOut|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|muxDataOut|Y[2]~2_combout\ = (\rom|rom~2_combout\ & (\processador|bancoRegistradores|registrador~78_combout\)) # (!\rom|rom~2_combout\ & ((\processador|ula|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~78_combout\,
	datab => \processador|ula|Add0~2_combout\,
	datad => \rom|rom~2_combout\,
	combout => \processador|muxDataOut|Y[2]~2_combout\);

\processador|ula|resultadoAdd[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|resultadoAdd[3]~6_combout\ = (\processador|bancoRegistradores|registrador~79_combout\ & ((\processador|mux3|Mux6~0_combout\ & (\processador|ula|resultadoAdd[2]~5\ & VCC)) # (!\processador|mux3|Mux6~0_combout\ & 
-- (!\processador|ula|resultadoAdd[2]~5\)))) # (!\processador|bancoRegistradores|registrador~79_combout\ & ((\processador|mux3|Mux6~0_combout\ & (!\processador|ula|resultadoAdd[2]~5\)) # (!\processador|mux3|Mux6~0_combout\ & 
-- ((\processador|ula|resultadoAdd[2]~5\) # (GND)))))
-- \processador|ula|resultadoAdd[3]~7\ = CARRY((\processador|bancoRegistradores|registrador~79_combout\ & (!\processador|mux3|Mux6~0_combout\ & !\processador|ula|resultadoAdd[2]~5\)) # (!\processador|bancoRegistradores|registrador~79_combout\ & 
-- ((!\processador|ula|resultadoAdd[2]~5\) # (!\processador|mux3|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~79_combout\,
	datab => \processador|mux3|Mux6~0_combout\,
	datad => VCC,
	cin => \processador|ula|resultadoAdd[2]~5\,
	combout => \processador|ula|resultadoAdd[3]~6_combout\,
	cout => \processador|ula|resultadoAdd[3]~7\);

\processador|ula|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|Add0~3_combout\ = (\rom|rom~8_combout\ & (\processador|ula|resultadoAdd[3]~6_combout\)) # (!\rom|rom~8_combout\ & ((\processador|mux3|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ula|resultadoAdd[3]~6_combout\,
	datab => \processador|mux3|Mux6~0_combout\,
	datad => \rom|rom~8_combout\,
	combout => \processador|ula|Add0~3_combout\);

\processador|bancoRegistradores|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~3_combout\,
	ena => \processador|bancoRegistradores|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~31_q\);

\processador|bancoRegistradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~3_combout\,
	ena => \processador|bancoRegistradores|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~23_q\);

\processador|bancoRegistradores|registrador~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~79_combout\ = (\rom|rom~6_combout\ & (\processador|bancoRegistradores|registrador~31_q\ & (!\rom|rom~4_combout\))) # (!\rom|rom~6_combout\ & (((\rom|rom~4_combout\ & 
-- \processador|bancoRegistradores|registrador~23_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~31_q\,
	datab => \rom|rom~6_combout\,
	datac => \rom|rom~4_combout\,
	datad => \processador|bancoRegistradores|registrador~23_q\,
	combout => \processador|bancoRegistradores|registrador~79_combout\);

\processador|muxDataOut|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|muxDataOut|Y[3]~3_combout\ = (\rom|rom~2_combout\ & (\processador|bancoRegistradores|registrador~79_combout\)) # (!\rom|rom~2_combout\ & ((\processador|ula|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~79_combout\,
	datab => \processador|ula|Add0~3_combout\,
	datad => \rom|rom~2_combout\,
	combout => \processador|muxDataOut|Y[3]~3_combout\);

\processador|ula|resultadoAdd[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|resultadoAdd[4]~8_combout\ = ((\processador|bancoRegistradores|registrador~80_combout\ $ (\processador|mux3|Mux5~0_combout\ $ (!\processador|ula|resultadoAdd[3]~7\)))) # (GND)
-- \processador|ula|resultadoAdd[4]~9\ = CARRY((\processador|bancoRegistradores|registrador~80_combout\ & ((\processador|mux3|Mux5~0_combout\) # (!\processador|ula|resultadoAdd[3]~7\))) # (!\processador|bancoRegistradores|registrador~80_combout\ & 
-- (\processador|mux3|Mux5~0_combout\ & !\processador|ula|resultadoAdd[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~80_combout\,
	datab => \processador|mux3|Mux5~0_combout\,
	datad => VCC,
	cin => \processador|ula|resultadoAdd[3]~7\,
	combout => \processador|ula|resultadoAdd[4]~8_combout\,
	cout => \processador|ula|resultadoAdd[4]~9\);

\processador|ula|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|Add0~4_combout\ = (\rom|rom~8_combout\ & (\processador|ula|resultadoAdd[4]~8_combout\)) # (!\rom|rom~8_combout\ & ((\processador|mux3|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ula|resultadoAdd[4]~8_combout\,
	datab => \processador|mux3|Mux5~0_combout\,
	datad => \rom|rom~8_combout\,
	combout => \processador|ula|Add0~4_combout\);

\processador|bancoRegistradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~4_combout\,
	ena => \processador|bancoRegistradores|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~24_q\);

\processador|bancoRegistradores|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~4_combout\,
	ena => \processador|bancoRegistradores|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~32_q\);

\processador|bancoRegistradores|registrador~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~80_combout\ = (\rom|rom~4_combout\ & (\processador|bancoRegistradores|registrador~24_q\ & (!\rom|rom~6_combout\))) # (!\rom|rom~4_combout\ & (((\rom|rom~6_combout\ & 
-- \processador|bancoRegistradores|registrador~32_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~24_q\,
	datab => \rom|rom~4_combout\,
	datac => \rom|rom~6_combout\,
	datad => \processador|bancoRegistradores|registrador~32_q\,
	combout => \processador|bancoRegistradores|registrador~80_combout\);

\processador|muxDataOut|Y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|muxDataOut|Y[4]~4_combout\ = (\rom|rom~2_combout\ & (\processador|bancoRegistradores|registrador~80_combout\)) # (!\rom|rom~2_combout\ & ((\processador|ula|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~80_combout\,
	datab => \processador|ula|Add0~4_combout\,
	datad => \rom|rom~2_combout\,
	combout => \processador|muxDataOut|Y[4]~4_combout\);

\processador|ula|resultadoAdd[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|resultadoAdd[5]~10_combout\ = (\processador|bancoRegistradores|registrador~81_combout\ & ((\processador|mux3|Mux6~0_combout\ & (\processador|ula|resultadoAdd[4]~9\ & VCC)) # (!\processador|mux3|Mux6~0_combout\ & 
-- (!\processador|ula|resultadoAdd[4]~9\)))) # (!\processador|bancoRegistradores|registrador~81_combout\ & ((\processador|mux3|Mux6~0_combout\ & (!\processador|ula|resultadoAdd[4]~9\)) # (!\processador|mux3|Mux6~0_combout\ & 
-- ((\processador|ula|resultadoAdd[4]~9\) # (GND)))))
-- \processador|ula|resultadoAdd[5]~11\ = CARRY((\processador|bancoRegistradores|registrador~81_combout\ & (!\processador|mux3|Mux6~0_combout\ & !\processador|ula|resultadoAdd[4]~9\)) # (!\processador|bancoRegistradores|registrador~81_combout\ & 
-- ((!\processador|ula|resultadoAdd[4]~9\) # (!\processador|mux3|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~81_combout\,
	datab => \processador|mux3|Mux6~0_combout\,
	datad => VCC,
	cin => \processador|ula|resultadoAdd[4]~9\,
	combout => \processador|ula|resultadoAdd[5]~10_combout\,
	cout => \processador|ula|resultadoAdd[5]~11\);

\processador|ula|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|Add0~5_combout\ = (\rom|rom~8_combout\ & (\processador|ula|resultadoAdd[5]~10_combout\)) # (!\rom|rom~8_combout\ & ((\processador|mux3|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ula|resultadoAdd[5]~10_combout\,
	datab => \processador|mux3|Mux6~0_combout\,
	datad => \rom|rom~8_combout\,
	combout => \processador|ula|Add0~5_combout\);

\processador|bancoRegistradores|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~5_combout\,
	ena => \processador|bancoRegistradores|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~33_q\);

\processador|bancoRegistradores|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~5_combout\,
	ena => \processador|bancoRegistradores|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~25_q\);

\processador|bancoRegistradores|registrador~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~81_combout\ = (\rom|rom~6_combout\ & (\processador|bancoRegistradores|registrador~33_q\ & (!\rom|rom~4_combout\))) # (!\rom|rom~6_combout\ & (((\rom|rom~4_combout\ & 
-- \processador|bancoRegistradores|registrador~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~33_q\,
	datab => \rom|rom~6_combout\,
	datac => \rom|rom~4_combout\,
	datad => \processador|bancoRegistradores|registrador~25_q\,
	combout => \processador|bancoRegistradores|registrador~81_combout\);

\processador|muxDataOut|Y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|muxDataOut|Y[5]~5_combout\ = (\rom|rom~2_combout\ & (\processador|bancoRegistradores|registrador~81_combout\)) # (!\rom|rom~2_combout\ & ((\processador|ula|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~81_combout\,
	datab => \processador|ula|Add0~5_combout\,
	datad => \rom|rom~2_combout\,
	combout => \processador|muxDataOut|Y[5]~5_combout\);

\processador|ula|resultadoAdd[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|resultadoAdd[6]~12_combout\ = ((\processador|bancoRegistradores|registrador~82_combout\ $ (\processador|mux3|Mux5~0_combout\ $ (!\processador|ula|resultadoAdd[5]~11\)))) # (GND)
-- \processador|ula|resultadoAdd[6]~13\ = CARRY((\processador|bancoRegistradores|registrador~82_combout\ & ((\processador|mux3|Mux5~0_combout\) # (!\processador|ula|resultadoAdd[5]~11\))) # (!\processador|bancoRegistradores|registrador~82_combout\ & 
-- (\processador|mux3|Mux5~0_combout\ & !\processador|ula|resultadoAdd[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~82_combout\,
	datab => \processador|mux3|Mux5~0_combout\,
	datad => VCC,
	cin => \processador|ula|resultadoAdd[5]~11\,
	combout => \processador|ula|resultadoAdd[6]~12_combout\,
	cout => \processador|ula|resultadoAdd[6]~13\);

\processador|ula|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|Add0~6_combout\ = (\rom|rom~8_combout\ & (\processador|ula|resultadoAdd[6]~12_combout\)) # (!\rom|rom~8_combout\ & ((\processador|mux3|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ula|resultadoAdd[6]~12_combout\,
	datab => \processador|mux3|Mux5~0_combout\,
	datad => \rom|rom~8_combout\,
	combout => \processador|ula|Add0~6_combout\);

\processador|bancoRegistradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~6_combout\,
	ena => \processador|bancoRegistradores|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~26_q\);

\processador|bancoRegistradores|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~6_combout\,
	ena => \processador|bancoRegistradores|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~34_q\);

\processador|bancoRegistradores|registrador~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~82_combout\ = (\rom|rom~4_combout\ & (\processador|bancoRegistradores|registrador~26_q\ & (!\rom|rom~6_combout\))) # (!\rom|rom~4_combout\ & (((\rom|rom~6_combout\ & 
-- \processador|bancoRegistradores|registrador~34_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~26_q\,
	datab => \rom|rom~4_combout\,
	datac => \rom|rom~6_combout\,
	datad => \processador|bancoRegistradores|registrador~34_q\,
	combout => \processador|bancoRegistradores|registrador~82_combout\);

\processador|muxDataOut|Y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|muxDataOut|Y[6]~6_combout\ = (\rom|rom~2_combout\ & (\processador|bancoRegistradores|registrador~82_combout\)) # (!\rom|rom~2_combout\ & ((\processador|ula|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~82_combout\,
	datab => \processador|ula|Add0~6_combout\,
	datad => \rom|rom~2_combout\,
	combout => \processador|muxDataOut|Y[6]~6_combout\);

\processador|ula|resultadoAdd[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|resultadoAdd[7]~14_combout\ = \processador|bancoRegistradores|registrador~83_combout\ $ (\processador|mux3|Mux6~0_combout\ $ (\processador|ula|resultadoAdd[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~83_combout\,
	datab => \processador|mux3|Mux6~0_combout\,
	cin => \processador|ula|resultadoAdd[6]~13\,
	combout => \processador|ula|resultadoAdd[7]~14_combout\);

\processador|ula|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|ula|Add0~7_combout\ = (\rom|rom~8_combout\ & (\processador|ula|resultadoAdd[7]~14_combout\)) # (!\rom|rom~8_combout\ & ((\processador|mux3|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ula|resultadoAdd[7]~14_combout\,
	datab => \processador|mux3|Mux6~0_combout\,
	datad => \rom|rom~8_combout\,
	combout => \processador|ula|Add0~7_combout\);

\processador|bancoRegistradores|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~7_combout\,
	ena => \processador|bancoRegistradores|registrador~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~35_q\);

\processador|bancoRegistradores|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \processador|ula|Add0~7_combout\,
	ena => \processador|bancoRegistradores|registrador~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistradores|registrador~27_q\);

\processador|bancoRegistradores|registrador~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|bancoRegistradores|registrador~83_combout\ = (\rom|rom~6_combout\ & (\processador|bancoRegistradores|registrador~35_q\ & (!\rom|rom~4_combout\))) # (!\rom|rom~6_combout\ & (((\rom|rom~4_combout\ & 
-- \processador|bancoRegistradores|registrador~27_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~35_q\,
	datab => \rom|rom~6_combout\,
	datac => \rom|rom~4_combout\,
	datad => \processador|bancoRegistradores|registrador~27_q\,
	combout => \processador|bancoRegistradores|registrador~83_combout\);

\processador|muxDataOut|Y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|muxDataOut|Y[7]~7_combout\ = (\rom|rom~2_combout\ & (\processador|bancoRegistradores|registrador~83_combout\)) # (!\rom|rom~2_combout\ & ((\processador|ula|Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistradores|registrador~83_combout\,
	datab => \processador|ula|Add0~7_combout\,
	datad => \rom|rom~2_combout\,
	combout => \processador|muxDataOut|Y[7]~7_combout\);

\rom|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~10_combout\ = (\rom|rom~0_combout\ & !\rom|rom~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~0_combout\,
	datad => \rom|rom~7_combout\,
	combout => \rom|rom~10_combout\);

\rom|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~11_combout\ = (\processador|pc|pc_o\(0) & (\rom|rom~9_combout\ & !\processador|pc|pc_o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|pc|pc_o\(0),
	datab => \rom|rom~9_combout\,
	datad => \processador|pc|pc_o\(1),
	combout => \rom|rom~11_combout\);

\rom|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|rom~12_combout\ = (\rom|rom~9_combout\ & (!\processador|pc|pc_o\(0) & !\processador|pc|pc_o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|rom~9_combout\,
	datac => \processador|pc|pc_o\(0),
	datad => \processador|pc|pc_o\(1),
	combout => \rom|rom~12_combout\);

\datain[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(0),
	o => \datain[0]~input_o\);

\datain[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

\datain[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

\datain[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(5),
	o => \datain[5]~input_o\);

\datain[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

\datain[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

\datain[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

\datain[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

ww_rw(0) <= \rw[0]~output_o\;

ww_rw(1) <= \rw[1]~output_o\;

ww_dataout(0) <= \dataout[0]~output_o\;

ww_dataout(1) <= \dataout[1]~output_o\;

ww_dataout(2) <= \dataout[2]~output_o\;

ww_dataout(3) <= \dataout[3]~output_o\;

ww_dataout(4) <= \dataout[4]~output_o\;

ww_dataout(5) <= \dataout[5]~output_o\;

ww_dataout(6) <= \dataout[6]~output_o\;

ww_dataout(7) <= \dataout[7]~output_o\;

ww_addr(0) <= \addr[0]~output_o\;

ww_addr(1) <= \addr[1]~output_o\;

ww_addr(2) <= \addr[2]~output_o\;

ww_addr(3) <= \addr[3]~output_o\;

ww_addr(4) <= \addr[4]~output_o\;

ww_addr(5) <= \addr[5]~output_o\;

ww_addr(6) <= \addr[6]~output_o\;

ww_addr(7) <= \addr[7]~output_o\;
END structure;


