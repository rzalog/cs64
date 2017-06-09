`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:18:40 06/09/2017
// Design Name:   main_controller
// Module Name:   C:/Users/152/cs64/lab4/lab4/main_controller_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_controller_tb;

	// Inputs
	reg clk;
	reg enter;
	reg master_key;
	reg [3:0] first_digit;
	reg [3:0] second_digit;

	// Outputs
	wire [7:0] state;
	wire two_digit_clear;
	wire [3:0] first_val_digit;
	wire [3:0] second_val_digit;
	wire disp_val;

	// Instantiate the Unit Under Test (UUT)
	main_controller uut (
		.clk(clk), 
		.enter(enter), 
		.master_key(master_key), 
		.first_digit(first_digit), 
		.second_digit(second_digit), 
		.state(state), 
		.two_digit_clear(two_digit_clear), 
		.first_val_digit(first_val_digit), 
		.second_val_digit(second_val_digit), 
		.disp_val(disp_val)
	);

	initial begin
		clk = 0;
		enter = 0;
		master_key = 0;
		first_digit = 4'd10;
		second_digit = 4'd10;

		#10;

		// Go to state 1 (prompt for value)
		enter = 1;
		#100;
		enter = 0;

		first_digit = 4'd5;

		// Bad value
		enter = 1;
		#10;
		enter = 0;
		#10;

		second_digit = 4'd6;

		// Good value, go to state 2 (initial password)
		enter = 1;
		#10;
		enter = 0;
		#10;

		first_digit = 4'd10;

		// Bad password, stay
		enter = 1;
		#10;
		enter = 0;
		#10;

		first_digit = 4'd3;
		second_digit = 4'd3;

		// Good password, go to state 3 (YES)
		enter = 1;
		#10;
		enter = 0;
		#10;

		// Wait a good amount of time, to go to state 4 (locked)
		#205;

		// Enter to go to state 5 (ask for password)
		enter = 1;
		#10;
		enter = 0;
		#10;

		first_digit = 4'd2;
		second_digit = 4'd2;

		// Incorrect password to go to state 7 (BAD)
		enter = 1;
		#10;
		enter = 0;
		#10;

		// Delay to go back to state 4 (locked)
		#205;

		first_digit = 4'd3;
		second_digit = 4'd3;

		// Correct password to go to state 6 (display value)
		enter = 1;
		#10;
		enter = 0;
		#10;

		// Enter to go back to state 0
		enter = 1;
		#10;
		enter = 0;
		#10;
		enter = 1;
		#10;

		$finish;
	end

	always begin
		clk = ~clk;
		#1;
	end
      
endmodule

