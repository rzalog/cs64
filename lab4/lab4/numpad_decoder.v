`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:22 05/22/2017 
// Design Name: 
// Module Name:    numpad_decoder 
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
module numpad_decoder(
		input clk,
		input [3:0] Row,
		output reg [3:0] Col,
		output reg [3:0] DecodeOut,
		output reg digit_changed
	);

	reg [19:0] sclk;
	reg [3:0] invalid_digit;
	reg [3:0] row_did_not_change;
	
	initial begin
		DecodeOut = 4'b1010;
		Col = 0;
		invalid_digit = 4'b1010;
		digit_changed = 0;
	end
	
	always @(posedge clk) begin	
		// 1ms
		if (sclk == 20'b00011000011010100000) begin
			//C1
			Col <= 4'b0111;
			sclk <= sclk + 1'b1;
		end
		
		// check row pins
		else if(sclk == 20'b00011000011010101000) begin
			//R1
			if (Row == 4'b0111) begin
				DecodeOut <= 4'b0001;		//1
				row_did_not_change[0] <= 0;
			end
			//R2
			else if(Row == 4'b1011) begin
				DecodeOut <= 4'b0100; 		//4
				row_did_not_change[0] <= 0;
			end
			//R3
			else if(Row == 4'b1101) begin
				DecodeOut <= 4'b0111; 		//7
				row_did_not_change[0] <= 0;
			end
			//R4
			else if(Row == 4'b1110) begin
				DecodeOut <= 4'b0000; 		//0
				row_did_not_change[0] <= 0;
			end
			else begin
				row_did_not_change[0] <= 1;
			end
			
			sclk <= sclk + 1'b1;
		end
		// 2ms
		else if(sclk == 20'b00110000110101000000) begin
			//C2
			Col<= 4'b1011;
			sclk <= sclk + 1'b1;
		end
		
		// check row pins
		else if(sclk == 20'b00110000110101001000) begin
			//R1
			if (Row == 4'b0111) begin
				DecodeOut <= 4'b0010; 		//2
				row_did_not_change[1] <= 0;
			end
			//R2
			else if(Row == 4'b1011) begin
				DecodeOut <= 4'b0101; 		//5
				row_did_not_change[1] <= 0;
			end
			//R3
			else if(Row == 4'b1101) begin
				DecodeOut <= 4'b1000; 		//8
				row_did_not_change[1] <= 0;
			end
			//R4
			else if(Row == 4'b1110) begin
				DecodeOut <= invalid_digit; 		//F
			end
			else begin
				row_did_not_change[1] <= 1;
			end
			
			sclk <= sclk + 1'b1;
		end

		//3ms
		else if(sclk == 20'b01001001001111100000) begin
			//C3
			Col<= 4'b1101;
			sclk <= sclk + 1'b1;
		end
		
		// check row pins
		else if(sclk == 20'b01001001001111101000) begin
			//R1
			if(Row == 4'b0111) begin
				DecodeOut <= 4'b0011; 		//3
				row_did_not_change[2] <= 0;
			end
			//R2
			else if(Row == 4'b1011) begin
				DecodeOut <= 4'b0110; 		//6
				digit_changed <= 1;
				row_did_not_change[2] <= 0;
			end
			//R3
			else if(Row == 4'b1101) begin
				DecodeOut <= 4'b1001; 		//9
				digit_changed <= 1;
				row_did_not_change[2] <= 0;
			end
			//R4
			else if(Row == 4'b1110) begin
				DecodeOut <= invalid_digit; 		//E
			end
			else begin
				row_did_not_change[2] <= 1;
			end

			sclk <= sclk + 1'b1;
		end

		//4ms
		else if(sclk == 20'b01100001101010000000) begin
			//C4
			Col<= 4'b1110;
			sclk <= sclk + 1'b1;
		end

		// Check row pins
		else if(sclk == 20'b01100001101010001000) begin
			//R1
			if(Row == 4'b0111) begin
				DecodeOut <= invalid_digit; //A
			end
			//R2
			else if(Row == 4'b1011) begin
				DecodeOut <= invalid_digit; //B
			end
			//R3
			else if(Row == 4'b1101) begin
				DecodeOut <= invalid_digit; //C
			end
			//R4
			else if(Row == 4'b1110) begin
				DecodeOut <= invalid_digit; //D
			end

			sclk <= 20'b00000000000000000000;
		end

		// Otherwise increment
		else begin
			sclk <= sclk + 1'b1;
		end
		
		digit_changed <= row_did_not_change[0] &
									row_did_not_change[1] &
									row_did_not_change[2];
		
	end



endmodule
