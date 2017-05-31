`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:28 05/31/2017 
// Design Name: 
// Module Name:    four_digit_controller 
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
module four_digit_controller(
		input clk,
		input [7:0] state,
		output reg [2:0] to_display
	);

	always @(posedge clk) begin
		if (state == 0) begin
			to_display <= 4; // OPEN
		end else if (state == 1) begin
			to_display <= 1; // VAL
		end else if (state == 2) begin
			to_display <= 2; //PASS
		end
	end

endmodule
