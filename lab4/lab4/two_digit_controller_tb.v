`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:46:59 06/09/2017
// Design Name:   two_digit_controller
// Module Name:   C:/Users/152/cs64/lab4/lab4/two_digit_controller_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_digit_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_digit_controller_tb;

	// Inputs
	reg clk;
	reg digit_changed;
	reg [3:0] number_input;
	reg [7:0] state;
	reg two_digit_clear;
	reg [3:0] first_val_digit;
	reg [3:0] second_val_digit;
	reg disp_val;

	// Outputs
	wire [3:0] first_digit;
	wire [3:0] second_digit;

	// Instantiate the Unit Under Test (UUT)
	two_digit_controller uut (
		.clk(clk), 
		.digit_changed(digit_changed), 
		.number_input(number_input), 
		.state(state), 
		.two_digit_clear(two_digit_clear), 
		.first_val_digit(first_val_digit), 
		.second_val_digit(second_val_digit), 
		.disp_val(disp_val), 
		.first_digit(first_digit), 
		.second_digit(second_digit)
	);

	initial begin
		clk = 0;
		digit_changed = 0;

		number_input = 4'd10;
		two_digit_clear = 0;
		first_val_digit = 4'd3;
		second_val_digit = 4'd4;
		disp_val = 0;

		#10;

		// Test number input (should see 54)
		number_input = 5;

		digit_changed = 1;
		#10;
		digit_changed = 0;
		#10;

		number_input = 4;
		
		digit_changed = 1;
		#10;
		digit_changed = 0;
		#10;

		// Test that two_digit_clear clears digits
		two_digit_clear = 1;
		#10;
		two_digit_clear = 0;
		#10;

		// See that disp_val makes the input val digits display
		disp_val = 1;
		#10;
		disp_val = 0;
		#10;

		$finish;

	end

	always begin
		clk = ~clk;
		#1;
	end
      
endmodule

