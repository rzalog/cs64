`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:21 06/07/2017
// Design Name:   locker
// Module Name:   C:/Users/152/cs64/lab4/lab4/locker_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: locker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module locker_tb;

	// Inputs
	reg clk;
	reg [3:0] Row;
	reg enter;
	reg master_key;

	// Outputs
	wire [3:0] Col;
	wire [6:0] cathodes_t;
	wire anode_t;
	wire [6:0] cathodes_f;
	wire [3:0] anodes_f;

	// Instantiate the Unit Under Test (UUT)
	locker uut (
		.clk(clk), 
		.Row(Row), 
		.enter(enter), 
		.master_key(master_key), 
		.Col(Col), 
		.cathodes_t(cathodes_t), 
		.anode_t(anode_t), 
		.cathodes_f(cathodes_f), 
		.anodes_f(anodes_f)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Row = 0;
		enter = 0;
		master_key = 0;

		#100;
		enter = 1;
		#100;
		enter = 0;

	end
   
	always begin
		clk = ~clk;
		#1;
	end
	
endmodule

