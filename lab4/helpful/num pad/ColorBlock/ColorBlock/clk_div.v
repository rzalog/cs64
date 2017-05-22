`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:33 05/18/2017 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(clk, clk_25mhz
    );
input clk;
output reg clk_25mhz = 0;

reg [1:0] counter = 0;

always@(posedge clk) begin
	counter <= counter + 1;
	if(counter == 1) begin
		clk_25mhz <= ~clk_25mhz;
		counter <= 0;
	end
end

endmodule
