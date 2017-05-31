`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:45 05/31/2017 
// Design Name: 
// Module Name:    debouncer 
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
module debouncer(
		input clk,
		input enter,
		output reg enter_d
	);
	
	reg [18:0] sclk;

	reg old_enter;

	initial begin
		old_enter = 0;
	end

	always @(posedge clk) begin
		if (sclk == 19'b1100001101010000000) begin // 4ms
			enter_d <= enter && ~old_enter;
			old_enter <= enter;
	
			sclk <= 0;
		end else begin
			sclk <= sclk + 1;
		end	
	end

endmodule
