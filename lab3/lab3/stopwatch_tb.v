`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:42 05/08/2017
// Design Name:   stopwatch
// Module Name:   C:/Users/152/cs64/lab3/lab3/stopwatch_tb.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stopwatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stopwatch_tb;

	// Inputs
	reg clk;
	reg BTN_RST;
	reg SW_ADJ;
	reg SW_SEL;

	// Outputs
	wire AN0;
	wire AN1;
	wire AN2;
	wire AN3;
	wire CA;
	wire CB;
	wire CC;
	wire CD;
	wire CE;
	wire CF;
	wire CG;

	// Instantiate the Unit Under Test (UUT)
	stopwatch uut (
		.clk(clk), 
		.BTN_RST(BTN_RST), 
		.SW_ADJ(SW_ADJ), 
		.SW_SEL(SW_SEL), 
		.AN0(AN0), 
		.AN1(AN1), 
		.AN2(AN2), 
		.AN3(AN3), 
		.CA(CA), 
		.CB(CB), 
		.CC(CC), 
		.CD(CD), 
		.CE(CE), 
		.CF(CF), 
		.CG(CG)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		BTN_RST = 0;
		SW_ADJ = 0;
		SW_SEL = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
      
endmodule

