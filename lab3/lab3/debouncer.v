`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:20 05/09/2017 
// Design Name: 
// Module Name:    debouncer 
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
module debouncer(d_clk, rst, pause, adj, sel, rst_d, pause_d, adj_d, sel_d);

	input rst;
	input pause;
	input adj;
	input sel;
	
	input d_clk;
	
	output reg rst_d;
	output reg pause_d;
	output reg adj_d;
	output reg sel_d;
	
	reg [2:0] pause_state;
	
	initial begin
		pause_d = 0;
		pause_state = 0;
	end
	
	always @(posedge d_clk) begin
		rst_d <= rst;
		adj_d <= adj;
		sel_d <= sel;
		
		if (pause_state == 0) begin
			if (pause) begin
				pause_state = 1;
			end
		end
		else if (pause_state == 1) begin
			pause_d = ~pause_d;
			pause_state = 2;
		end else if (pause_state == 2) begin
			if (!pause) begin
				pause_state = 0;
			end
		end
	end

endmodule
