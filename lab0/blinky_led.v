`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:48 04/10/2017 
// Design Name: 
// Module Name:    blinky_led 
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
module blinky_led(clk, rst, led);

	input clk;
	input rst;

	reg [31:0] a;
	output reg led;
	
	always @ (posedge clk) begin
		if (rst) begin
			a <= 32'd0;
			led <= 0;
		end else begin
			a <= a + 1'b1;
		end
		
		//if (a == 32'b00000101111101011110000100000000) begin
		if (a == 32'd50_000_000) begin
			led <= ~led;
			a <= 32'b0;
		end
	end

endmodule
