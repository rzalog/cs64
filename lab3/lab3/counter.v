`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:36 05/01/2017 
// Design Name: 
// Module Name:    counter 
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
module counter(clk, adj_clk, counter_clk, sel, adj, rst, pause, minutes, seconds);
	input clk;
	input adj_clk;
	input counter_clk;
	input sel;
	input adj;
	input rst;
	input pause;
	
	output reg [7:0] minutes;
	output reg [7:0] seconds;
	
	reg [15:0] counter;
	reg [7:0] extra_minutes;
	reg [7:0] extra_seconds;
	
	reg adj_clk_old;
	reg counter_clk_old;

	initial begin
		counter = 0;
		extra_minutes = 0;
		extra_seconds = 0;
		minutes = 0;
		seconds = 0;
		
		adj_clk_old = 0;
		counter_clk_old = 0;
	end

	always @(posedge clk) begin
		if (rst) begin
			counter <= 0;
			extra_minutes <= 0;
			extra_seconds <= 0;
			minutes <= 0;
			seconds <= 0;
		end
		
		if (adj_clk_old != adj_clk) begin
			adj_clk_old <= adj_clk;
			
			if (adj) begin
				if (sel) begin
					// extra_seconds <= (extra_seconds + 1) % 60;
					counter <= counter + 1;
				end else begin
					// extra_minutes <= (extra_minutes + 1) % 100;
					counter <= counter + 60;
				end
			end
		end
		
		if (counter_clk_old != counter_clk) begin
			counter_clk_old <= counter_clk;
			
			if (!adj && !pause) begin
				counter <= counter + 1;
			end
		end
		
		minutes <= (counter / 60) % 100;
		seconds <= counter % 60;
	end

endmodule
