`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:07:13 04/05/2017
// Design Name:   four_bit_counter
// Module Name:   C:/Users/152/Desktop/group rsj/lab0/four_bit_counter_tb.v
// Project Name:  lab0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module four_bit_counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] a;

	// Instantiate the Unit Under Test (UUT)
	four_bit_counter uut (
		.clk(clk), 
		.rst(rst), 
		.a(a)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		#6 rst = 0;
	end
	
	initial begin
		#170 $finish;
	end
   
	always begin
		#5 clk <= clk + 1'b1;
	end
   
endmodule

