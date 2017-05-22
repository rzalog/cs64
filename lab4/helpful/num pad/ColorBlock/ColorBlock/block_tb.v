`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:05:38 05/19/2017
// Design Name:   block
// Module Name:   C:/Users/cody/Downloads/ColorBlock/ColorBlock/block_tb.v
// Project Name:  ColorBlock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module block_tb;

	// Inputs
	reg clk;
	reg clk_2hz;
	reg spin;

	// Outputs
	wire [7:0] color;

	// Instantiate the Unit Under Test (UUT)
	block uut (
		.clk(clk), 
		.clk_2hz(clk_2hz), 
		.color(color), 
		.spin(spin)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clk_2hz = 0;
		spin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #5 clk = ~clk;
	always #5000 clk_2hz = ~clk_2hz;
      
endmodule

