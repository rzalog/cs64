`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:53 05/24/2017 
// Design Name: 
// Module Name:    two_digit_controller 
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
module two_digit_controller(
		input clk,
		input digit_changed,
		input [3:0] number_input,
		input [7:0] state,
		input two_digit_clear,

		input [3:0] first_val_digit,
		input [3:0] second_val_digit,
		input disp_val,

		output reg [3:0] first_digit,
		output reg [3:0] second_digit
	);

	reg [3:0] blank_digit;
	reg old_digit_changed;
	
	initial begin
		blank_digit = 4'b1010;
		first_digit = blank_digit;
		second_digit = blank_digit;
		old_digit_changed = 0;
	end
	
	always @(posedge clk) begin
		if (two_digit_clear) begin
			first_digit <= blank_digit;
			second_digit <= blank_digit;
		end else if (disp_val) begin
			first_digit <= first_val_digit;
			second_digit <= second_val_digit;
		end else begin
			if (digit_changed & ~old_digit_changed) begin
				first_digit <= second_digit;
				second_digit <= number_input;
			end
		end

		old_digit_changed <= digit_changed;
	end

endmodule
