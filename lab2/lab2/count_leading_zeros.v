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
	
	wire [11:0] sign_mag_mod;
	assign sign_mag_mod = {1'b0, sign_mag[10:0]};
	
	// Priority encoder
	assign exp = -((sign_mag_mod[11]) ? 0 :
		(sign_mag_mod[10]) ? 1 :
		(sign_mag_mod[9]) ? 2 :
		(sign_mag_mod[8]) ? 3 :
		(sign_mag_mod[7]) ? 4 :
		(sign_mag_mod[6]) ? 5 :
		(sign_mag_mod[5]) ? 6 : 
	   (sign_mag_mod[4]) ? 7 : 8);
		
	assign sig = sign_mag_mod[exp +: 4];
	assign fifth = (exp != 0) ? sign_mag_mod[exp - 1] : 0;

endmodule
