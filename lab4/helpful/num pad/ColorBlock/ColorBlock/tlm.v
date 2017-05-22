`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:07 05/16/2017 
// Design Name: 
// Module Name:    tlm 
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
module ColorBlock(clk, hsync, vsync, red, green, blue
    );
	input clk;
	output hsync, vsync;
	output red, green, blue;
// Inputs
	reg clr;

	// Outputs
	wire clk_25mhz;

	clk_div clk_div (
		.clk(clk), 
		.clk_25mhz(clk_25mhz)
	);

	// Outputs
	wire hsync;
	wire vsync;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;

	vga640x480 display (
		.clk(clk_25mhz), 
		.clr(clr), 
		.hsync(hsync), 
		.vsync(vsync), 
		.red(red), 
		.green(green), 
		.blue(blue)
	);

endmodule
