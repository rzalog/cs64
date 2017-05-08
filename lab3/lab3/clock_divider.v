`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:57 05/01/2017 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(clk, rst, adj_clk, counter_clk, disp_clk, blink_clk);

	input clk;
	input rst;
	
	output adj_clk;
	output counter_clk;
	output disp_clk;
	output blink_clk;
	
	integer adj_counter;
	integer counter_counter;
	integer disp_counter;
	integer blink_counter;
	
	initial begin
		adj_counter = 1;
		counter_counter = 1;
		disp_counter = 1;
		blink_counter = 1;
	end
	
	always @(posedge clk) begin
		adj_counter <= (adj_counter + 1) % 'd100000000;
		counter_counter <= (counter_counter + 1) % 'd50000000;
		disp_counter <= (disp_counter + 1) % 'd333333; // We chose to do 300 Hz
		blink_counter <= (blink_counter + 1) % 'd50000000;
	end
	
	assign adj_clk = adj_counter == 0;
	assign counter_clk = counter_counter == 0;
	assign disp_clk = disp_counter == 0;
	assign blink_clk = blink_counter == 0;

endmodule
