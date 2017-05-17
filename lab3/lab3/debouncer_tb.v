`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:16:18 05/17/2017
// Design Name:   debouncer
// Module Name:   C:/Users/152/cs64/lab3/lab3/debouncer_tb.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: debouncer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debouncer_tb;

	// Inputs
	reg d_clk;
	reg rst;
	reg pause;
	reg adj;
	reg sel;

	// Outputs
	wire rst_d;
	wire pause_d;
	wire adj_d;
	wire sel_d;

	// Instantiate the Unit Under Test (UUT)
	debouncer uut (
		.d_clk(d_clk), 
		.rst(rst), 
		.pause(pause), 
		.adj(adj), 
		.sel(sel), 
		.rst_d(rst_d), 
		.pause_d(pause_d), 
		.adj_d(adj_d), 
		.sel_d(sel_d)
	);

	initial begin
		// Initialize Inputs
		d_clk = 0;
		rst = 0;
		pause = 0;
		adj = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		pause = 1;
		#200;
		
		pause = 0;
		#200;
		
		pause = 1;
		#200;
		
		pause = 0;
		#200;
		
		$finish;
	end
	
	always begin
		d_clk = ~d_clk;
		#10;
	end
      
endmodule

