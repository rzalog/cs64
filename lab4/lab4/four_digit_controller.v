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

	reg [31:0] bclk;
	
	reg [31:0] blink_delay;
	
	reg blink;
	
	initial begin
		bclk <= 0;
		blink <= 0;
		
		blink_delay = 32'd25000000;
		//blink_delay = 32'b10;
	end

	always @(posedge clk) begin
		if (state == 0) begin
			to_display <= 4; // OPEN
		end else if (state == 1) begin
			if (blink) begin
				to_display <= 6; // NOTHING
			end else begin
				to_display <= 1; // VAL
			end
			
			if (bclk == blink_delay) begin
				blink <= ~blink;
				bclk <= 0;
			end else begin
				bclk <= bclk + 1;
			end
		end else if (state == 2) begin
			if (blink) begin
				to_display <= 6; // NOTHING
			end else begin
				to_display <= 2; // PASS
			end
			
			if (bclk == blink_delay) begin
				blink <= ~blink;
				bclk <= 0;
			end else begin
				bclk <= bclk + 1;
			end
		end else if (state == 3) begin
			to_display <= 0; // YES
		end else if (state == 4) begin
			to_display <= 5; // LOCK
		end else if (state == 5) begin
			if (blink) begin
				to_display <= 6; // NOTHING
			end else begin
				to_display <= 2; // PASS
			end
			
			if (bclk == blink_delay) begin
				blink <= ~blink;
				bclk <= 0;
			end else begin
				bclk <= bclk + 1;
			end
		end else if (state == 6) begin
			to_display <= 1; // VAL
		end else if (state == 7) begin
			to_display <= 3; // BAD
		end
	end

endmodule
