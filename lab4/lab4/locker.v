`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:13 05/22/2017 
// Design Name: 
// Module Name:    locker 
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
module locker(
		input clk,
		input [3:0] Row,
		
		output [3:0] Col,
		output [6:0] cathodes,
		output anode
	);


//	test_peripherals test_peripherals(
//		.clk(clk),
//		.Row(Row),
//		.Col(Col_reg),
//		.cathodes(cathodes_reg),
//		.anode(anode_reg)
//	);

	wire [3:0] num_pad;

	numpad_decoder numpad_decoder(
		.clk(clk),
		.Row(Row),
		.Col(Col),
		.DecodeOut(num_pad)
	);
	
	two_digit_ssd two_digit_ssd(
		.clk(clk),
		.first_digit(num_pad),
		.second_digit(num_pad),
		.cathodes(cathodes),
		.anode(anode)
	);
		
endmodule
