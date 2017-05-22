`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:30:52 05/18/2017
// Design Name:   clk_div
// Module Name:   C:/Users/152/Downloads/ColorBlock/ColorBlock/clk_div_tb.v
// Project Name:  ColorBlock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_div_tb;

	// Inputs
	reg clk;

	// Outputs
	wire clk_25mhz;

	// Instantiate the Unit Under Test (UUT)
	clk_div uut (
		.clk(clk), 
		.clk_25mhz(clk_25mhz)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #5 clk = ~clk;
      
endmodule

