`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:05 05/03/2017 
// Design Name: 
// Module Name:    display 
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
module display(disp_clk, blink_clk, minutes, seconds, adj, sel,
	AN0, AN1, AN2, AN3, CA, CB, CC, CD, CE, CF, CG);

	input disp_clk;
	input blink_clk;
	input [7:0] minutes;
	input [7:0] seconds;
	input adj;
	input sel;
	
	output AN0;
	output AN1;
	output AN2;
	output AN3;
	
	output CA;
	output CB;
	output CC;
	output CD;
	output CE;
	output CF;
	output CG;
	
	reg blink_minutes;
	reg blink_seconds;
	
	reg [6:0] cur_disp_value;
	reg [3:0] anodes;
	
	reg [6:0] numbers [9:0];
	reg [7:0] nums_to_display[3:0];
	
	reg [7:0] nothing;
	
	reg [1:0] cur_anode;
	
	initial begin
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
		
		nothing =  7'b0000000;
		
		anodes[3:0] = 4'b1110;
		cur_anode = 0;
	end
	
	always @(posedge disp_clk) begin
		nums_to_display[3][7:0] <= minutes / 10;
		nums_to_display[2][7:0] <= minutes % 10;
		nums_to_display[1][7:0] <= seconds / 10;
		nums_to_display[0][7:0] <= seconds % 10;
		
		blink_minutes <= adj & ~sel;
		blink_seconds <= adj & sel;
		
		anodes <= {anodes[0], anodes[3:1]};
		

		if (blink_minutes && blink_clk && (cur_anode == 3 || cur_anode == 2)) begin
			cur_disp_value <= nothing;
		end 
		else if (blink_seconds && blink_clk && (cur_anode == 1 || cur_anode == 0)) begin
			cur_disp_value <= nothing;
		end
		else begin
			cur_disp_value <= numbers[nums_to_display[cur_anode]];
		end

		cur_anode <= cur_anode + 1'b1;
	end
	
	assign CA = ~cur_disp_value[6];
	assign CB = ~cur_disp_value[5];
	assign CC = ~cur_disp_value[4];
	assign CD = ~cur_disp_value[3];
	assign CE = ~cur_disp_value[2];
	assign CF = ~cur_disp_value[1];
	assign CG = ~cur_disp_value[0];
	
	assign AN0 = anodes[3];
	assign AN1 = anodes[2];
	assign AN2 = anodes[1];
	assign AN3 = anodes[0];

endmodule
