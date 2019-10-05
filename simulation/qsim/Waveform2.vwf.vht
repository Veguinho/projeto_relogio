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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/04/2019 21:04:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA_vhd_vec_tst IS
END ULA_vhd_vec_tst;
ARCHITECTURE ULA_arch OF ULA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL FLAG : STD_LOGIC;
SIGNAL IN_banco : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IN_mux : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OP : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ULA
	PORT (
	clk : IN STD_LOGIC;
	FLAG : OUT STD_LOGIC;
	IN_banco : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	IN_mux : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	OP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ULA
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	FLAG => FLAG,
	IN_banco => IN_banco,
	IN_mux => IN_mux,
	OP => OP,
	S => S
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- OP[1]
t_prcs_OP_1: PROCESS
BEGIN
	OP(1) <= '1';
	WAIT FOR 60000 ps;
	OP(1) <= '0';
	WAIT FOR 80000 ps;
	OP(1) <= '1';
	WAIT FOR 260000 ps;
	OP(1) <= '0';
WAIT;
END PROCESS t_prcs_OP_1;
-- OP[0]
t_prcs_OP_0: PROCESS
BEGIN
	OP(0) <= '0';
	WAIT FOR 60000 ps;
	OP(0) <= '1';
	WAIT FOR 340000 ps;
	OP(0) <= '0';
WAIT;
END PROCESS t_prcs_OP_0;
-- IN_banco[7]
t_prcs_IN_banco_7: PROCESS
BEGIN
	IN_banco(7) <= '0';
WAIT;
END PROCESS t_prcs_IN_banco_7;
-- IN_banco[6]
t_prcs_IN_banco_6: PROCESS
BEGIN
	IN_banco(6) <= '0';
WAIT;
END PROCESS t_prcs_IN_banco_6;
-- IN_banco[5]
t_prcs_IN_banco_5: PROCESS
BEGIN
	IN_banco(5) <= '0';
	WAIT FOR 600000 ps;
	IN_banco(5) <= '1';
WAIT;
END PROCESS t_prcs_IN_banco_5;
-- IN_banco[4]
t_prcs_IN_banco_4: PROCESS
BEGIN
	IN_banco(4) <= '0';
	WAIT FOR 280000 ps;
	IN_banco(4) <= '1';
	WAIT FOR 320000 ps;
	IN_banco(4) <= '0';
	WAIT FOR 320000 ps;
	IN_banco(4) <= '1';
WAIT;
END PROCESS t_prcs_IN_banco_4;
-- IN_banco[3]
t_prcs_IN_banco_3: PROCESS
BEGIN
	IN_banco(3) <= '0';
	WAIT FOR 120000 ps;
	IN_banco(3) <= '1';
	WAIT FOR 160000 ps;
	IN_banco(3) <= '0';
	WAIT FOR 160000 ps;
	IN_banco(3) <= '1';
	WAIT FOR 160000 ps;
	IN_banco(3) <= '0';
	WAIT FOR 160000 ps;
	IN_banco(3) <= '1';
	WAIT FOR 160000 ps;
	IN_banco(3) <= '0';
WAIT;
END PROCESS t_prcs_IN_banco_3;
-- IN_banco[2]
t_prcs_IN_banco_2: PROCESS
BEGIN
	IN_banco(2) <= '0';
	WAIT FOR 60000 ps;
	IN_banco(2) <= '1';
	WAIT FOR 60000 ps;
	IN_banco(2) <= '0';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 5
	LOOP
		IN_banco(2) <= '1';
		WAIT FOR 80000 ps;
		IN_banco(2) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_IN_banco_2;
-- IN_banco[1]
t_prcs_IN_banco_1: PROCESS
BEGIN
	IN_banco(1) <= '0';
	WAIT FOR 40000 ps;
	IN_banco(1) <= '1';
	WAIT FOR 20000 ps;
	IN_banco(1) <= '0';
	WAIT FOR 20000 ps;
	IN_banco(1) <= '1';
	WAIT FOR 40000 ps;
	IN_banco(1) <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 10
	LOOP
		IN_banco(1) <= '1';
		WAIT FOR 40000 ps;
		IN_banco(1) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	IN_banco(1) <= '1';
WAIT;
END PROCESS t_prcs_IN_banco_1;
-- IN_banco[0]
t_prcs_IN_banco_0: PROCESS
BEGIN
	IN_banco(0) <= '0';
	WAIT FOR 20000 ps;
	IN_banco(0) <= '1';
	WAIT FOR 20000 ps;
	IN_banco(0) <= '0';
	WAIT FOR 20000 ps;
	IN_banco(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 23
	LOOP
		IN_banco(0) <= '0';
		WAIT FOR 20000 ps;
		IN_banco(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_IN_banco_0;
-- IN_mux[7]
t_prcs_IN_mux_7: PROCESS
BEGIN
	IN_mux(7) <= '0';
WAIT;
END PROCESS t_prcs_IN_mux_7;
-- IN_mux[6]
t_prcs_IN_mux_6: PROCESS
BEGIN
	IN_mux(6) <= '0';
WAIT;
END PROCESS t_prcs_IN_mux_6;
-- IN_mux[5]
t_prcs_IN_mux_5: PROCESS
BEGIN
	IN_mux(5) <= '0';
	WAIT FOR 640000 ps;
	IN_mux(5) <= '1';
WAIT;
END PROCESS t_prcs_IN_mux_5;
-- IN_mux[4]
t_prcs_IN_mux_4: PROCESS
BEGIN
	IN_mux(4) <= '0';
	WAIT FOR 280000 ps;
	IN_mux(4) <= '1';
	WAIT FOR 360000 ps;
	IN_mux(4) <= '0';
	WAIT FOR 320000 ps;
	IN_mux(4) <= '1';
WAIT;
END PROCESS t_prcs_IN_mux_4;
-- IN_mux[3]
t_prcs_IN_mux_3: PROCESS
BEGIN
	IN_mux(3) <= '0';
	WAIT FOR 160000 ps;
	IN_mux(3) <= '1';
	WAIT FOR 120000 ps;
	IN_mux(3) <= '0';
	WAIT FOR 200000 ps;
	IN_mux(3) <= '1';
	WAIT FOR 160000 ps;
	IN_mux(3) <= '0';
	WAIT FOR 160000 ps;
	IN_mux(3) <= '1';
	WAIT FOR 160000 ps;
	IN_mux(3) <= '0';
WAIT;
END PROCESS t_prcs_IN_mux_3;
-- IN_mux[2]
t_prcs_IN_mux_2: PROCESS
BEGIN
	IN_mux(2) <= '0';
	WAIT FOR 80000 ps;
	IN_mux(2) <= '1';
	WAIT FOR 80000 ps;
	IN_mux(2) <= '0';
	WAIT FOR 40000 ps;
	IN_mux(2) <= '1';
	WAIT FOR 80000 ps;
	IN_mux(2) <= '0';
	WAIT FOR 120000 ps;
	IN_mux(2) <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 3
	LOOP
		IN_mux(2) <= '0';
		WAIT FOR 80000 ps;
		IN_mux(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	IN_mux(2) <= '0';
WAIT;
END PROCESS t_prcs_IN_mux_2;
-- IN_mux[1]
t_prcs_IN_mux_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		IN_mux(1) <= '0';
		WAIT FOR 40000 ps;
		IN_mux(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	IN_mux(1) <= '0';
	WAIT FOR 80000 ps;
	IN_mux(1) <= '1';
	WAIT FOR 40000 ps;
	IN_mux(1) <= '0';
	WAIT FOR 80000 ps;
	IN_mux(1) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 7
	LOOP
		IN_mux(1) <= '0';
		WAIT FOR 40000 ps;
		IN_mux(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	IN_mux(1) <= '0';
WAIT;
END PROCESS t_prcs_IN_mux_1;
-- IN_mux[0]
t_prcs_IN_mux_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		IN_mux(0) <= '0';
		WAIT FOR 20000 ps;
		IN_mux(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	FOR i IN 1 TO 3
	LOOP
		IN_mux(0) <= '0';
		WAIT FOR 20000 ps;
		IN_mux(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	IN_mux(0) <= '0';
	WAIT FOR 20000 ps;
	IN_mux(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 16
	LOOP
		IN_mux(0) <= '0';
		WAIT FOR 20000 ps;
		IN_mux(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_IN_mux_0;
END ULA_arch;
