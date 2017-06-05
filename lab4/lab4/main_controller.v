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
		input master_key,
		input [3:0] first_digit,
		input [3:0] second_digit,
		
		output reg [7:0] state,
		output reg two_digit_clear,
		output reg [3:0] first_val_digit,
		output reg [3:0] second_val_digit,
		output reg disp_val
	);

	reg old_enter;
	reg enter_pressed;
	reg [3:0] bad_digit;
	
	reg [3:0] first_pass_digit;
	reg [3:0] second_pass_digit;
	
	reg [31:0] sclk;
	
	initial begin
		old_enter = 0;
		enter_pressed = 0;
		
		bad_digit = 4'b1010;
		
		state = 0;
		two_digit_clear = 0;
	end
	
	always @(posedge clk) begin		
		if (state == 0) begin
			two_digit_clear <= 1;
			disp_val <= 0;
		
			if (enter_pressed) begin
				state <= 1;
			end
		end
		
		if (state == 1) begin
			two_digit_clear <= 0;
			disp_val <= 0;
			
			if (enter_pressed) begin
				if (first_digit != bad_digit && second_digit != bad_digit) begin
					first_val_digit <= first_digit;
					second_val_digit <= second_digit;
					state <= 2;
					two_digit_clear <= 1;
				end
			end
		end
		
		if (state == 2) begin
			two_digit_clear <= 0;
			disp_val <= 0;
			
			if (enter_pressed) begin
				if (first_digit != bad_digit && second_digit != bad_digit) begin
					first_pass_digit <= first_digit;
					second_pass_digit <= second_digit;
					state <= 3;
					two_digit_clear <= 1;
					sclk <= 0;
				end
			end
		end
		
		if (state == 3) begin
			two_digit_clear <= 1;
			disp_val <= 0;
			
			// A good amount of seconds
			if (sclk == 32'd100000000) begin
				state <= 4;
				sclk <= 0;
			end else begin
				sclk <= sclk + 1;
			end
		end
		
		if (state == 4) begin
			two_digit_clear <= 1;
			disp_val <= 0;
			
			if (enter_pressed) begin
				state <= 5;
			end
		end
		
		if (state == 5) begin
			two_digit_clear <= 0;
			disp_val <= 0;
			
			if (enter_pressed) begin
				if (master_key || (first_digit == first_pass_digit && second_digit == second_pass_digit)) begin
					state <= 6;
				end else begin
					state <= 7;
					sclk <= 0;
				end
				
				two_digit_clear <= 1;
			end
		end
		
		if (state == 6) begin
			two_digit_clear <= 0;
			disp_val <= 1;
			
			if (sclk == 32'd100000000) begin
				state <= 0;
			end else begin
				sclk <= sclk + 1;
			end
		end
		
		if (state == 7) begin
			two_digit_clear <= 1;
			disp_val <= 0;
			
			if (sclk == 32'd200000000) begin
				state <= 4;
			end else begin
				sclk <= sclk + 1;
			end
		end
		
		enter_pressed <= enter & ~old_enter;
		old_enter <= enter;
	end

endmodule
