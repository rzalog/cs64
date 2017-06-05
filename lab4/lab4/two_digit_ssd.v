`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:47 05/22/2017 
// Design Name: 
// Module Name:    two_digit_ssd 
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
module two_digit_ssd(
		input clk,
		input [3:0] first_digit,
		input [3:0] second_digit,
		output reg [6:0] cathodes,
		output reg anode
	);

	// 1111 in one of the digits corresponds to "nothing" i.e. a blank value

	reg [19:0] sclk;

	reg [6:0] numbers[10:0];
	reg [6:0] nothing;
	
	initial begin
		sclk = 0;
	
		numbers[0] = 7'b1111110;
		numbers[1] = 7'b0110000;
		numbers[2] = 7'b1101101;
		numbers[3] = 7'b1111001;
		numbers[4] = 7'b0110011;
		numbers[5] = 7'b1011011;
		numbers[6] = 7'b1011111;
		numbers[7] = 7'b1110000;
		numbers[8] = 7'b1111111;
		numbers[9] = 7'b1111011;
		
		nothing = 7'b0000000;
		numbers[10] = nothing;
	end
	
	always @(posedge clk) begin
		if(
			sclk == 20'b01100001101010000000 // 4 ms
			) 
		begin
			// First digit
			anode <= 0;
			
			if (first_digit == 4'b1111) begin
				cathodes <= nothing;
			end
			else begin
				cathodes <= numbers[first_digit];
			end
			
			sclk <= sclk + 1;
		end
		
		// 8ms
		else if(//sclk == 3'b111
			sclk == 20'b11000011010100000000
			)
		begin
			// Second digit
			anode <= 1;
			
			if (second_digit == 4'b1111) begin
				cathodes <= 0;
			end
			else begin
				cathodes <= numbers[second_digit];
			end
			
			sclk <= 0;
		end
		
		else begin
			sclk <= sclk + 1;
		end
		
	end

endmodule
