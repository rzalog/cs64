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
module compression(D, sign, exp, sig);

	input [11:0] D;

	wire [11:0] sign_mag;
	twos_to_sign twos_to_sign_converter(
		.twos(D),
		.sign_mag(sign_mag)
	);
	
	output sign;
	output [2:0] exp;
	output [3:0] sig;

endmodule