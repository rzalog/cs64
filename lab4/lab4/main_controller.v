`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:16 05/31/2017 
// Design Name: 
// Module Name:    main_controller 
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
module main_controller(
		input clk,
		input enter,
		input [3:0] first_digit,
		input [3:0] second_digit,
		
		output reg [7:0] state
	);

	reg old_enter;
	reg enter_pressed;
	reg [3:0] bad_digit;
	
	reg [3:0] first_val_digit;
	reg [3:0] second_val_digit;
	
	reg [3:0] first_pass_digit;
	reg [3:0] second_pass_digit;
	
	initial begin
		old_enter = 0;
		enter_pressed = 0;
		
		bad_digit = 4'b1010;
		
		state = 0;
	end
	
	always @(posedge clk) begin
		if (state == 0) begin
			if (enter_pressed) begin
				state <= 1;
			end
		end
		
		if (state == 1) begin
			// store value???
			if (enter_pressed) begin
				if (first_digit != bad_digit && second_digit != bad_digit) begin
					first_val_digit <= first_digit;
					second_val_digit <= second_digit;
					state <= 2;
				end
			end
		end
		
		if (state == 2) begin
			if (enter_pressed) begin
				if (first_digit != bad_digit && second_digit != bad_digit) begin
					first_pass_digit <= first_digit;
					second_pass_digit <= second_digit;
					state <= 0;
				end
			end
		end
		
		enter_pressed <= enter & ~old_enter;
		old_enter <= enter;
	end

endmodule
