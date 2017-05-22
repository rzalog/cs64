`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:20:45 05/18/2017 
// Design Name: 
// Module Name:    RandomGenerator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// Produces 65535 total states
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rng(CLK, RST, OUT
    );
input CLK, RST;
output reg [15:0] OUT = 46080; 

wire feedback = OUT[0];

always @(posedge CLK) begin
	if(RST) begin
		OUT = 458925;
	end else begin
		OUT[0] <= OUT[1];
		OUT[1] <= OUT[2];
		OUT[2] <= OUT[3];
		OUT[3] <= OUT[4];
		OUT[4] <= OUT[5];
		OUT[5] <= OUT[6];
		OUT[6] <= OUT[7];
		OUT[7] <= OUT[8];
		OUT[8] <= OUT[9];
		OUT[9] <= OUT[10];
		OUT[10] <= OUT[11] ^ feedback;
		OUT[11] <= OUT[12];
		OUT[12] <= OUT[13] ^ feedback;
		OUT[13] <= OUT[14] ^ feedback;
		OUT[14] <= OUT[15];
		OUT[15] <= feedback;
	end
end
endmodule
