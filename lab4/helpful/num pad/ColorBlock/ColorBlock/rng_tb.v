`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:36:39 05/18/2017
// Design Name:   RandomGenerator
// Module Name:   C:/Users/cody/Desktop/152/ColorBlock/RandomGenerator_tb.v
// Project Name:  ColorBlock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RandomGenerator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rng_tb;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire [15:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	rng uut (
		.CLK(CLK), 
		.RST(RST), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		RST = 0;
		$display("%x",OUT);
	end
	
	always #5 CLK = ~CLK;
      
endmodule

