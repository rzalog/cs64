`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:18 04/19/2017 
// Design Name: 
// Module Name:    compression 
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
module compression(D, sign, exp_out, sig_out);

	input [11:0] D;

	output sign;
	output [2:0] exp_out;
	output [3:0] sig_out;

	wire [11:0] sign_mag;

	twos_to_sign twos_to_sign_converter(
		.twos(D),
		.sign_mag(sign_mag),
		.sign(sign)
	);

	wire [2:0] exp;
	wire [3:0] sig;
	wire fifth;
	
	count_and_extract count_and_extract_(
		.sign_mag(sign_mag),
		.exp(exp),
		.sig(sig),
		.fifth(fifth)
	);
	
	rounder rounder_(
		.exp(exp),
		.sig(sig),
		.fifth(fifth),
		.E(exp_out),
		.F(sig_out)
	);

endmodule
