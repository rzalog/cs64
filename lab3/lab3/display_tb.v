`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:07:29 05/17/2017
// Design Name:   display
// Module Name:   C:/Users/152/cs64/lab3/lab3/display_tb.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module display_tb;

	// Inputs
	reg disp_clk;
	reg blink_clk;
	reg [7:0] minutes;
	reg [7:0] seconds;
	reg adj;
	reg sel;

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
	display uut (
		.disp_clk(disp_clk), 
		.blink_clk(blink_clk), 
		.minutes(minutes), 
		.seconds(seconds), 
		.adj(adj), 
		.sel(sel), 
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

	reg [31:0] counter;

	initial begin
	
		// Initialize Inputs
		disp_clk = 0;
		blink_clk = 0;
		minutes = 0;
		seconds = 0;
		adj = 0;
		sel = 0;

		counter = 0;

		// Wait 100 ns for global reset to finish
		#300;

		adj = 1;
		#300;
		
		sel = 1;
		#300;

		$finish;
	end
	
	always begin
		disp_clk = ~disp_clk;
		#1;
	end
	
	always begin
		blink_clk = ~blink_clk;
		#10;
	end
	
	always begin
		counter = counter + 1;
		minutes = counter / 60;
		seconds = counter % 60;
		
		#30;
	end
      
endmodule

