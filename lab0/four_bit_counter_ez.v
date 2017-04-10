`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:31 04/05/2017 
// Design Name: 
// Module Name:    four_bit_counter_ez 
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


module four_bit_counter_ez(clk, rst, a, led);

	input clk;
	input rst;

	output reg [3:0] a;
	output reg led;

	int clock_counter = 0;
	
	always @ (posedge clk) begin
		if (rst) begin
			a <= 4'b0000;
			clock_counter <= 0;
		end else begin
			a <= a + 1'b1;
		end
	end

endmodule
