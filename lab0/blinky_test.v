`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:40:09 04/10/2017
// Design Name:   blinky_led
// Module Name:   C:/Users/152/Desktop/group rsj/lab0/blinky_test.v
// Project Name:  lab0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blinky_led
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module blinky_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire led;

	// Instantiate the Unit Under Test (UUT)
	blinky_led uut (
		.clk(clk), 
		.rst(rst), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#2 rst = 0;
	end
	
	initial begin
		#705032704 $finish; 
	end
	
	always begin
		#1 clk <= clk + 1'b1;
	end
      
endmodule

