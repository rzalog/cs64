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
	
	output reg adj_clk;
	output reg counter_clk;
	output reg disp_clk;
	output reg blink_clk;

	reg [31:0] adj_counter;
	reg [31:0] counter_counter;
	reg [17:0] disp_counter;
	reg [26:0] blink_counter;
	
	initial begin
		adj_counter = 1;
		counter_counter = 1;
		disp_counter = 1;
		blink_counter = 1;
		
		adj_clk = 1;
		counter_clk = 1;
		disp_clk = 1;
		blink_clk = 1;
	end
	
	always @(posedge clk) begin
		adj_counter <= (adj_counter + 1) % 'd50000000;
		counter_counter <= (counter_counter + 1) % 'd100000000;
		disp_counter <= (disp_counter + 1) % 'd166666; // We chose to do 300 Hz
		blink_counter <= (blink_counter + 1) % 'd25000000;
		
		if (adj_counter == 0)
			adj_clk <= ~adj_clk;
		if (counter_counter == 0)
			counter_clk <= ~counter_clk;
		if (disp_counter == 0)
			disp_clk <= ~disp_clk;
		if (blink_counter == 0)	
			blink_clk <= ~blink_clk;
	end

endmodule
