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
module counter(adj_clk, counter_clk, sel, adj, rst, minutes_out, seconds_out);
	input adj_clk;
	input counter_clk;
	input sel;
	input adj;
	input rst;
	
	output [31:0] minutes_out;
	output [31:0] seconds_out;
	integer minutes;
	integer seconds;
	
	integer counter;
	integer extra_minutes;
	integer extra_seconds;
	
	initial begin
		counter = 0;
		extra_minutes = 0;
		extra_seconds = 0;
		minutes = 0;
		seconds = 0;
	end
	
	always @(posedge counter_clk) begin
		if (!adj) begin
			counter[31:0] <= counter[31:0] + 32'b1;
		end
		if (rst) begin
			counter[31:0] <= 32'b0;
		end
	end
	
	always @(posedge adj_clk) begin
		if (rst) begin
			extra_minutes[31:0] <= 32'b0;
			extra_seconds[31:0] <= 32'b0;
		end
		else begin
			if (adj) begin
				if (sel) begin
					extra_seconds <= extra_seconds + 1;
				end else begin
					extra_minutes <= extra_minutes + 1;
				end
			end
		end
	end
	
	always @(counter) begin
		if (rst) begin
			minutes[31:0] <= 32'b0;
			seconds[31:0] <= 32'b0;
		end
		else begin
			minutes <= (counter / 60 + extra_minutes) % 100;
			seconds <= ((counter % 60) + extra_seconds) % 60;
		end
	end
	
	assign minutes_out = minutes[31:0];
	assign seconds_out = minutes[31:0];

endmodule
