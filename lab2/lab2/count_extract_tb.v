`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:10:19 04/24/2017
// Design Name:   count_and_extract
// Module Name:   C:/Users/152/cs64/lab2/lab2/count_extract_tb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_and_extract
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module count_extract_tb;

	// Inputs
	reg [11:0] sign_mag;

	// Outputs
	wire [2:0] exp;
	wire [3:0] sig;
	wire fifth;

	// Instantiate the Unit Under Test (UUT)
	count_and_extract uut (
		.sign_mag(sign_mag), 
		.exp(exp), 
		.sig(sig), 
		.fifth(fifth)
	);

	initial begin
		// Initialize Inputs
		sign_mag = 12'b011110111111;

		// Wait 100 ns for global reset to finish
		#100;
		sign_mag = 12'b001111111111;

		// Wait 100 ns for global reset to finish
		#100;
		
		sign_mag = 12'b000000000111;

		// Wait 100 ns for global reset to finish
		#100;
		
//		sign_mag = 12'b000011111111;
//
//		// Wait 100 ns for global reset to finish
//		#100;
//		
//		sign_mag = 12'b000001111111;
//
//		// Wait 100 ns for global reset to finish
//		#100;
//		
//		sign_mag = 12'b000000111111;
//
//		// Wait 100 ns for global reset to finish
//		#100;
//		
//		sign_mag = 12'b000000011111;
//
//		// Wait 100 ns for global reset to finish
//		#100;
//        
//		// Add stimulus here
//		
//		sign_mag = 12'b000000001111;
//
//		// Wait 100 ns for global reset to finish
//		#100;
//		
//		sign_mag = 12'b000000000111;
//
//		// Wait 100 ns for global reset to finish
//		#100;
//		
//		sign_mag = 12'b000000000011;
//
//		// Wait 100 ns for global reset to finish
//		#100;
//		
//		sign_mag = 12'b000000000001;
//
//		// Wait 100 ns for global reset to finish
//		#100;

	end
      
endmodule

