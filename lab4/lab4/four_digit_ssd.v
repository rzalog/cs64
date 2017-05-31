`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:48 05/31/2017 
// Design Name: 
// Module Name:    four_digit_ssd 
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
module four_digit_ssd(
		input clk,
		input [2:0] to_display,
		output reg [6:0] cathodes,
		output reg [3:0] anodes
	);

	reg [6:0] words_to_display[7:0][3:0];

	reg [6:0] nothing;
	reg [1:0] cur_anode;

	reg [17:0] sclk;

	initial begin
		nothing = 7'b0000000;
		cur_anode = 2'b00;
		anodes = 4'b1110;
		sclk = 0;
		
		// YES
		words_to_display[0][0] = 7'b1011011; //S
		words_to_display[0][1] = 7'b1001111; //E
		words_to_display[0][2] = 7'b0111011; //Y
		words_to_display[0][3] = nothing;
		
		// VAL
		words_to_display[1][0] = 7'b0001110; //L
		words_to_display[1][1] = 7'b1110111; //A
		words_to_display[1][2] = 7'b0111110; //V
		words_to_display[1][3] = nothing;
		
		// PASS
		words_to_display[2][0] = 7'b1011011; //S
		words_to_display[2][1] = 7'b1011011; //S
		words_to_display[2][2] = 7'b1110111; //A
		words_to_display[2][3] = 7'b1100111; //P
		
		// NEW
		words_to_display[3][0] = 7'b0111110; //W
		words_to_display[3][1] = 7'b1001111; //E
		words_to_display[3][2] = 7'b1110110; //N
		words_to_display[3][3] = nothing;
		
		// OPEN
		words_to_display[4][0] = 7'b1110110; //N
		words_to_display[4][1] = 7'b1001111; //E
		words_to_display[4][2] = 7'b1100111; //P
		words_to_display[4][3] = 7'b1111110; //O
		
		// LOCK
		words_to_display[5][0] = 7'b0110111; //K
		words_to_display[5][1] = 7'b1001110; //C
		words_to_display[5][2] = 7'b1111110; //O
		words_to_display[5][3] = 7'b0001110; //L
		
		// NOTHING
		words_to_display[6][0] = nothing;
		words_to_display[6][1] = nothing;
		words_to_display[6][2] = nothing;
		words_to_display[6][3] = nothing;
	end
	
	always @(posedge clk) begin
		if (sclk == 18'b110000110101000000) begin // 2ms
			cathodes <= ~words_to_display[to_display][cur_anode];
		
			anodes <= {anodes[0], anodes[3:1]};
			cur_anode <= cur_anode + 1;
			sclk <= 0;
		end else begin
			sclk <= sclk + 1;
		end
	end
	

endmodule
