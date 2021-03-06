`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:08:13 04/26/2017
// Design Name:   compression
// Module Name:   C:/Users/152/cs64/lab2/lab2/compression_tb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: compression
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module compression_tb;

	// Inputs
	reg [11:0] D;
	wire [2:0] exp;
	wire [3:0] sig;

	// Outputs
	wire sign;

	// Instantiate the Unit Under Test (UUT)
	compression uut (
		.D(D), 
		.sign(sign), 
		.exp_out(exp), 
		.sig_out(sig)
	);

	initial begin
		// Testing a negative number
		D = 12'b110101000001;
		#100;
		
		// Testing a positive number
		D = 12'b011111000001;
		#100;
		
		// Testing a negative number with more than eight leading zeros
		D = 12'b000000000101;
		#100;
	end
      
endmodule

