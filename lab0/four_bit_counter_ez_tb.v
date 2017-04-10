`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:47:18 04/05/2017
// Design Name:   four_bit_counter_ez
// Module Name:   C:/Users/152/Desktop/group rsj/lab0/four_bit_counter_ez_tb.v
// Project Name:  lab0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_counter_ez
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bit_counter_ez_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] a;
	wire led;

	// Instantiate the Unit Under Test (UUT)
	four_bit_counter_ez uut (
		.clk(clk), 
		.rst(rst), 
		.a(a),
		.led(led)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		#6 rst = 0;
		led = 0;
	end
	
	initial begin
		#705032704 $finish;
	end
   
	always begin
		#5 clk <= clk + 1'b1;
	end
      
endmodule

