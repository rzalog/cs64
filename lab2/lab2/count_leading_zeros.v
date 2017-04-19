`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:18 04/19/2017 
// Design Name: 
// Module Name:    count_leading_zeros 
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
module count_and_extract(sign_mag, exp, sig, fifth);
	input [11:0] sign_mag;
	
	output [2:0] exp;
	output [3:0] sig;
	output fifth;
	
	// Priority encoder (TEST THIS!)
	assign exp = (sign_mag[11]) ? 0 :
		(sign_mag[10]) ? 1 :
		(sign_mag[9]) ? 2 :
		(sign_mag[8]) ? 3 :
		(sign_mag[7]) ? 4 :
		(sign_mag[6]) ? 5 :
		(sign_mag[5]) ? 6 : 7;

endmodule
