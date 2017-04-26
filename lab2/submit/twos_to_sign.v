`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:50 04/19/2017 
// Design Name: 
// Module Name:    twos_to_sign 
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
module twos_to_sign(twos, sign_mag, sign);

	input [11:0] twos;
	input sign;
	output [11:0] sign_mag;
	
	wire mux_select;
	wire [11:0] mux_out[1:0];
	
	assign mux_select = twos[11];
	
	wire [11:0] mag;
	assign mag = ~twos;
	
	wire [11:0] negate;
	assign negate = {1'b1, mag[10:0]};

	assign mux_out[0] = twos;
	assign mux_out[1] = negate;

	assign sign_mag = mux_out[mux_select];
	assign sign = sign_mag[11];

endmodule
