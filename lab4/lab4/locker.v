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
	
	wire [3:0] num_pad;
	wire digit_changed;

	numpad_decoder numpad_decoder(
		.clk(clk),
		.Row(Row),
		.Col(Col),
		.DecodeOut(num_pad),
		.digit_changed(digit_changed)
	);
	
	wire [3:0] first_digit;
	wire [3:0] second_digit;
	
	two_digit_controller two_digit_controller(
		.clk(clk),
		.digit_changed(digit_changed),
		.number_input(num_pad),
		.first_digit(first_digit),
		.second_digit(second_digit)
	);
	
	two_digit_ssd two_digit_ssd(
		.clk(clk),
		.first_digit(first_digit),
		.second_digit(second_digit),
		.cathodes(cathodes),
		.anode(anode)
	);
		
endmodule
