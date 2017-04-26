`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:30:32 04/24/2017
// Design Name:   rounder
// Module Name:   C:/Users/152/cs64/lab2/lab2/rounder_tb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rounder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rounder_tb;

	// Inputs
	reg [2:0] exp;
	reg [3:0] sig;
	reg fifth;

	// Outputs
	wire [2:0] E;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	rounder uut (
		.exp(exp), 
		.sig(sig), 
		.fifth(fifth), 
		.E(E), 
		.F(F)
	);

	initial begin
		exp = 3'b011;
		sig = 4'b1111;
		fifth = 1;
		#100;

		exp = 3'b011;
		sig = 4'b1111;
		fifth = 0;		
		#100;
		
		exp = 3'b101;
		sig = 4'b1011;
		fifth = 1;
		#100;

		exp = 3'b111;
		sig = 4'b1111;
		fifth = 1;
		#100;
	end
      
endmodule

