`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:32 05/01/2017 
// Design Name: 
// Module Name:    stopwatch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module stopwatch(clk, BTN_RST, SW_ADJ, SW_SEL,
	AN0, AN1, AN2, AN3, CA, CB, CC, CD, CE, CF, CG);

	input clk;
	input BTN_RST;
	input SW_ADJ;
	input SW_SEL;

	output AN0;
	output AN1;
	output AN2;
	output AN3;
	
	output CA;
	output CB;
	output CC;
	output CD;
	output CE;
	output CF;
	output CG;
	
	wire adj_clk;
	wire counter_clk;
	wire disp_clk;
	wire blink_clk;
	
	clock_divider clock_divider(
		.clk(clk),
		.rst(BTN_RST),
		.adj_clk(adj_clk),
		.counter_clk(counter_clk),
		.disp_clk(disp_clk),
		.blink_clk(blink_clk)
	);
	
	wire rst_d;
	wire adj_d;
	wire sel_d;
	
	debouncer debouncer(
		.d_clk(disp_clk),
		.rst(BTN_RST),
		.adj(SW_ADJ),
		.sel(SW_SEL),
		.rst_d(rst_d),
		.adj_d(adj_d),
		.sel_d(sel_d)
	);
	
	wire [7:0] minutes;
	wire [7:0] seconds;
	
	counter counter(
		.clk(disp_clk),
		.adj_clk(adj_clk),
		.counter_clk(counter_clk),
		.sel(sel_d),
		.adj(adj_d),
		.rst(rst_d),
		.minutes(minutes),
		.seconds(seconds)
	);
	
	display display(
		.disp_clk(disp_clk),
		.counter_clk(counter_clk),
		.minutes(minutes),
		.seconds(seconds),
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


endmodule
