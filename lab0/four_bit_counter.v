`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:07 04/05/2017 
// Design Name: 
// Module Name:    four_bit_counter 
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
module four_bit_counter(clk, rst, a);
	input clk;
	input rst;
	
	output reg [3:0] a;

	always @ (posedge clk) begin
		if (rst) begin
			a[0] <= 1'b0;
			a[1] <= 1'b0;
			a[2] <= 1'b0;
			a[3] <= 1'b0;
		end else begin
			a[0] <= ~a[0];
			a[1] <= a[0] ^ a[1];
			a[2] <= (a[0] & a[1]) ^ a[2];
			a[3] <= ((a[0] & a[1]) & a[2]) ^ a[3];
		end
	end

endmodule
