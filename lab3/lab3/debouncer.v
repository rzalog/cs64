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
module debouncer(d_clk, rst, adj, sel, rst_d, adj_d, sel_d);

	input rst;
	input adj;
	input sel;
	
	input d_clk;
	
	output reg rst_d;
	output reg adj_d;
	output reg sel_d;
	
	always @(posedge d_clk) begin
		rst_d <= rst;
		adj_d <= adj;
		sel_d <= sel;
	end

endmodule
