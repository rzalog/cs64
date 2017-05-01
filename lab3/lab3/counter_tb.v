`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:16:07 05/01/2017
// Design Name:   counter
// Module Name:   C:/Users/152/cs64/lab3/lab3/counter_tb.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg adj_clk;
	reg counter_clk;
	reg sel;
	reg adj;
	reg rst;

	// Outputs
	wire [31:0] minutes;
	wire [31:0] seconds;
	
	counter uut(
		.adj_clk(adj_clk),
		.counter_clk(counter_clk),
		.sel(sel),
		.adj(adj),
		.rst(rst),
		.minutes(minutes),
		.seconds(seconds)
	);
	
	always begin
		#1;
		adj_clk = ~adj_clk;
		
		#1;
		adj_clk = ~adj_clk;
		counter_clk = ~counter_clk;
	end
	
	// Initialize inputs
	initial begin
		rst = 0;
		adj_clk = 0;
		counter_clk = 0;
		sel = 0;
		adj = 0;
	end
	
	// Testing
	initial begin
		#328;
		
		sel = 1;
		adj = 1;
		#200;
		
		sel = 0;
		#200;
		
		adj = 0;
		#200;
		
		$finish;
	end
      
endmodule

