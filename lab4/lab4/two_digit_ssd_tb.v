`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:42:37 05/22/2017
// Design Name:   two_digit_ssd
// Module Name:   C:/Users/152/cs64/lab4/lab4/two_digit_ssd_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_digit_ssd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_digit_ssd_tb;

	// Inputs
	reg clk;
	reg [3:0] first_digit;
	reg [3:0] second_digit;

	// Outputs
	wire [6:0] cathodes;
	wire anode;

	// Instantiate the Unit Under Test (UUT)
	two_digit_ssd uut (
		.clk(clk), 
		.first_digit(first_digit), 
		.second_digit(second_digit), 
		.cathodes(cathodes), 
		.anode(anode)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		first_digit = 4;
		second_digit = 5;

		#100;
		$finish;

	end
	
	always begin
		clk = ~clk;
	end
      
endmodule

