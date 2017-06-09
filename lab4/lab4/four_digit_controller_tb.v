`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:49:41 06/09/2017
// Design Name:   four_digit_controller
// Module Name:   C:/Users/152/cs64/lab4/lab4/four_digit_controller_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_digit_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_digit_controller_tb;

	// Inputs
	reg clk;
	reg [7:0] state;

	// Outputs
	wire [2:0] to_display;

	// Instantiate the Unit Under Test (UUT)
	four_digit_controller uut (
		.clk(clk), 
		.state(state), 
		.to_display(to_display)
	);

	initial begin
		clk = 0;
		state = 0;

		#10;
		state = 1; // blinking
		#25;

		#10;
		state = 2; // blinking
		#25;

		#10;
		state = 3;

		#10;
		state = 4;

		#10;
		state = 5; // blinking
		#25;

		#10;
		state = 6;

		#10;
		state = 7;

		$finish;
	end

	always begin
		clk = ~clk;
		#1;
	end
      
endmodule

