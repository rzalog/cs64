`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:40:19 04/19/2017
// Design Name:   twos_to_sign
// Module Name:   C:/Users/152/cs64/lab2/lab2/twos_to_sign_tb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: twos_to_sign
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twos_to_sign_tb;

	// Inputs
	reg [11:0] twos;

	// Outputs
	wire [11:0] sign_mag;
	wire sign;

	// Instantiate the Unit Under Test (UUT)
	twos_to_sign uut (
		.twos(twos), 
		.sign_mag(sign_mag),
		.sign(sign)
	);

	initial begin
		// Test a negative number
		twos = 12'b111000101010;
		#100;

		// Test a positive number
		twos = 12'b011000101010;
		#100;
		
		// Test another negative number
		twos = 12'b100000000001;
		#100;
	end
      
endmodule

