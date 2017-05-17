`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:59:19 05/01/2017
// Design Name:   clock_divider
// Module Name:   C:/Users/152/cs64/lab3/lab3/clock_divider_tb.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_divider_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire adj_clk;
	wire counter_clk;
	wire disp_clk;
	wire blink_clk;

	// Instantiate the Unit Under Test (UUT)
	clock_divider uut (
		.clk(clk), 
		.rst(rst), 
		.adj_clk(adj_clk), 
		.counter_clk(counter_clk), 
		.disp_clk(disp_clk), 
		.blink_clk(blink_clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
	end
	
	always begin
		clk = ~clk;
		#1;
	end
      
endmodule

