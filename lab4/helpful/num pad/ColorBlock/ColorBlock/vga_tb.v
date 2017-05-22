`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:57 05/16/2017
// Design Name:   vga640x480
// Module Name:   C:/Users/152/Downloads/lab3/ColorBlock/vga_tb.v
// Project Name:  ColorBlock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga640x480
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vga_tb;

	// Inputs
	reg clk;
	reg clr;

	// Outputs
	wire hsync;
	wire vsync;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;

	// Instantiate the Unit Under Test (UUT)
	vga640x480 uut (
		.clk(clk), 
		.clr(clr), 
		.hsync(hsync), 
		.vsync(vsync), 
		.red(red), 
		.green(green), 
		.blue(blue)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

