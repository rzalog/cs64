`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:18 05/19/2017 
// Design Name: 
// Module Name:    block 
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
module block(clk, clk_2hz, color, spin);
	 
	input clk, clk_2hz, spin;
	output reg [7:0] color = 8'b11111111;
		 
	localparam [7:0] YELLOW = 8'b11111001;
	localparam [7:0] PURPLE = 8'b10101111;
	localparam [7:0] GREEN  = 8'b00110101;
	localparam [7:0] PINK   = 8'b11101101;
	localparam [7:0] BLUE   = 8'b00110011;
	localparam [7:0] ORANGE = 8'b11110001;
	localparam [7:0] AQUA   = 8'b00110110;
	localparam [7:0] GRASS  = 8'b10011101;
	
	wire [15:0] num;
	
	
	rng blockrng (
		.CLK(clk), 
		.RST(0), 
		.OUT(num)
	);


	always @(posedge clk_2hz) begin
		if(spin) begin
			if(num < 18724) begin // 2/7 Prob
				color <= BLUE;
			end else if (num < 37448) begin  // 2/7 Prob
				color <= PURPLE;
			end else if (num < 46810) begin  // 1/7 Prob
				color <= GRASS;
			end else if (num < 51491) begin  // 1/14 Prob
				color <= ORANGE;
			end else if (num < 56172) begin // 1/14 Prob
				color <= PINK;
			end else if (num < 59682) begin // 3/56 Prob
				color <= AQUA;
			end else if (num < 63192) begin // 3/56 Prob
				color <= GREEN;
			end else begin // 1/28 Prob
				color <= YELLOW;
			end
		end
	end
endmodule
