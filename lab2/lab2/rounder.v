`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:42 04/24/2017 
// Design Name: 
// Module Name:    rounder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rounder(exp, sig, fifth, E, F);

	input [2:0] exp;
	input [3:0] sig;
	input fifth;
	output [2:0] E;
	output [3:0] F;
	
	wire [4:0] sig_temp;
	wire [4:0] sig_temp_temp;

	assign sig_temp = (fifth == 1'b1) ? sig + 1 : sig;

	assign sig_temp_temp = sig_temp >> 1;

	assign E = (sig_temp[4] == 1'b1) ? exp + 1 : exp;
	assign F = (sig_temp[4] == 1'b1) ? sig_temp_temp[3:0] : sig_temp[3:0];

endmodule
