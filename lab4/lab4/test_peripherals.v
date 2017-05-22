`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:54 05/22/2017 
// Design Name: 
// Module Name:    test_peripherals 
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
module test_peripherals(
		input clk,
		input [3:0] Row,
		
		output [3:0] Col,
		output [6:0] cathodes,
		output anode
	);

	reg [3:0] num_pad;
	reg [3:0] Col_reg;
	reg [6:0] cathodes_reg;
	reg anode_reg;

	numpad_decoder numpad_decoder(
		.clk(clk),
		.Row(Row),
		.Col(Col_reg),
		.DecodeOut(num_pad)
	);
	
	two_digit_ssd two_digit_ssd(
		.clk(clk),
		.first_digit(num_pad),
		.second_digit(num_pad),
		.cathodes(cathodes),
		.anode(anode)
	);
	
	assign Col[3:0] = Col_reg[3:0];
	assign cathodes[6:0] = cathodes_reg[6:0];
	assign anode = anode_reg;

endmodule
