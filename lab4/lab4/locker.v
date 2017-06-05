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
		
		input enter,
		
		output [3:0] Col,
		output [6:0] cathodes_t,
		output anode_t,
		
		output [6:0] cathodes_f,
		output [3:0] anodes_f
	);
	
	wire enter_d;
		
	wire [3:0] num_pad;
	wire digit_changed;

	wire [7:0] state;
	
	wire [3:0] first_digit;
	wire [3:0] second_digit;

	wire two_digit_clear;

	wire [3:0] first_val_digit;
	wire [3:0] second_val_digit;
	wire disp_val;

	debouncer debouncer(
		.clk(clk),
		.enter(enter),
		.enter_d(enter_d)
	);
	
	main_controller main_controller(
		.clk(clk),
		.enter(enter_d),
		.first_digit(first_digit),
		.second_digit(second_digit),
		
		.state(state),
		.two_digit_clear(two_digit_clear),
		.first_val_digit(first_val_digit),
		.second_val_digit(second_val_digit),
		.disp_val(disp_val)
	);

	numpad_decoder numpad_decoder(
		.clk(clk),
		.Row(Row),
		.Col(Col),
		.DecodeOut(num_pad),
		.digit_changed(digit_changed)
	);

	two_digit_controller two_digit_controller(
		.clk(clk),
		.digit_changed(digit_changed),
		.number_input(num_pad),
		
		.state(state),
		.two_digit_clear(two_digit_clear),
		.first_val_digit(first_val_digit),
		.second_val_digit(second_val_digit),
		.disp_val(disp_val),
		
		.first_digit(first_digit),
		.second_digit(second_digit)
	);
	
	two_digit_ssd two_digit_ssd(
		.clk(clk),
		.first_digit(first_digit),
		.second_digit(second_digit),
		.cathodes(cathodes_t),
		.anode(anode_t)
	);
	
	wire [2:0] to_display;
	
	four_digit_controller four_digit_controller(
		.clk(clk),
		.state(state),
		.to_display(to_display)
	);
	
	four_digit_ssd four_digit_ssd(
		.clk(clk),
		.to_display(to_display),
		.cathodes(cathodes_f),
		.anodes(anodes_f)
	);
	
endmodule
