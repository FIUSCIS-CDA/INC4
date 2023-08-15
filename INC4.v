// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Tue Aug 15 11:18:53 2023"

module INC4(
	A3,
	A2,
	A1,
	A0,
	S3,
	S2,
	S1,
	S0
);


input wire	A3;
input wire	A2;
input wire	A1;
input wire	A0;
output wire	S3;
output wire	S2;
output wire	S1;
output wire	S0;

wire	bit2oneandoneoflowerbitszero;
wire	bit2zeroANDlowerbitsbothone;
wire	morethanseven;
wire	notA0;
wire	notA1;
wire	notA2;
wire	notA3;
wire	oneoflower2bitiszero;
wire	oneoflower3bitsiszero;
wire	seven;




assign	S0 =  ~A0;

assign	bit2oneandoneoflowerbitszero = A2 & oneoflower2bitiszero;

assign	S3 = morethanseven | seven;

assign	notA2 =  ~A2;

assign	oneoflower3bitsiszero = oneoflower2bitiszero | notA2;

assign	morethanseven = A3 & oneoflower3bitsiszero;

assign	seven = notA3 & A2 & A1 & A0;

assign	notA3 =  ~A3;

assign	S1 = A1 ^ A0;

assign	S2 = bit2oneandoneoflowerbitszero | bit2zeroANDlowerbitsbothone;

assign	bit2zeroANDlowerbitsbothone = notA2 & A1 & A0;

assign	oneoflower2bitiszero = notA0 | notA1;

assign	notA1 =  ~A1;

assign	notA0 =  ~A0;


endmodule
