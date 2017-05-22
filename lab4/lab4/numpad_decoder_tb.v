`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:26:24 05/22/2017
// Design Name:   numpad_decoder
// Module Name:   C:/Users/152/cs64/lab4/lab4/numpad_decoder_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: numpad_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module numpad_decoder_tb;

	// Inputs
	reg clk;
	reg Row;

	// Outputs
	wire [3:0] Col;
	wire [3:0] DecodeOut;

	// Instantiate the Unit Under Test (UUT)
	numpad_decoder uut (
		.clk(clk), 
		.Row(Row), 
		.Col(Col), 
		.DecodeOut(DecodeOut)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Row = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here

	end
      
endmodule

