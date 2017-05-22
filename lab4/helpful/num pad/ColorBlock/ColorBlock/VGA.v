`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:30:38 03/19/2013 
// Design Name: 
// Module Name:    vga640x480 
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
module vga640x480(
	input wire clk,			//pixel clock: 25MHz
	input wire clr,			//asynchronous reset
	output wire hsync,		//horizontal sync out
	output wire vsync,		//vertical sync out
	output reg [2:0] red,	//red vga output
	output reg [2:0] green, //green vga output
	output reg [1:0] blue	//blue vga output
	);

// video structure constants
parameter hpixels = 800;// horizontal pixels per line
parameter vlines = 521; // vertical lines per frame
parameter hpulse = 96; 	// hsync pulse length
parameter vpulse = 2; 	// vsync pulse length
parameter hbp = 144; 	// end of horizontal back porch
parameter hfp = 784; 	// beginning of horizontal front porch
parameter vbp = 31; 		// end of vertical back porch
parameter vfp = 511; 	// beginning of vertical front porch
// active horizontal video is therefore: 784 - 144 = 640
// active vertical video is therefore: 511 - 31 = 480

// registers for storing the horizontal & vertical counters
reg [9:0] hc;
reg [9:0] vc;


localparam [7:0] YELLOW = 8'b11111001;
localparam [7:0] PURPLE = 8'b10101111;
localparam [7:0] GREEN  = 8'b00110101;
localparam [7:0] PINK   = 8'b11101101;
localparam [7:0] BLUE   = 8'b00110011;
localparam [7:0] ORANGE = 8'b11110001;
localparam [7:0] AQUA   = 8'b00110110;
localparam [7:0] GRASS  = 8'b10011101;

// Horizontal & vertical counters --
// this is how we keep track of where we are on the screen.
// ------------------------
// Sequential "always block", which is a block that is
// only triggered on signal transitions or "edges".
// posedge = rising edge  &  negedge = falling edge
// Assignment statements can only be used on type "reg" and need to be of the "non-blocking" type: <=
always @(posedge clk)
begin
	if (clr == 1)
	begin
		hc <= 0;
		vc <= 0;
	end
	else
	begin
		// keep counting until the end of the line
		if (hc < hpixels - 1)
			hc <= hc + 1;
		else
		// When we hit the end of the line, reset the horizontal
		// counter and increment the vertical counter.
		// If vertical counter is at the end of the frame, then
		// reset that one too.
		begin
			hc <= 0;
			if (vc < vlines - 1)
				vc <= vc + 1;
			else
				vc <= 0;
		end
		
	end
end

// generate sync pulses (active low)
// ----------------
// "assign" statements are a quick way to
// give values to variables of type: wire
assign hsync = (hc < hpulse) ? 0:1;
assign vsync = (vc < vpulse) ? 0:1;

// display 100% saturation colorbars
// ------------------------
// Combinational "always block", which is a block that is
// triggered when anything in the "sensitivity list" changes.
// The asterisk implies that everything that is capable of triggering the block
// is automatically included in the sensitivty list.  In this case, it would be
// equivalent to the following: always @(hc, vc)
// Assignment statements can only be used on type "reg" and should be of the "blocking" type: =
always @(*)
begin
	// first check if we're within vertical active video range
	if (vc >= (vbp+59) && vc < (vfp-63) && hc > hbp && hc < hfp)
	begin
		// now display different colors every 80 pixels
		// while we're within the active horizontal range
		// -----------------
		// row1 col1
		
		// display red bar
		if (vc >= (vbp+238) && vc < (vbp+243))
		begin
			red = 3'b111;
			green = 0;
			blue = 0;
		end
		else if (hc >= (hbp + 66) && hc < (hbp+146) && vc < (vbp +139))
		begin
			red = PURPLE[7:5];
			green = PURPLE[4:2];
			blue = PURPLE[1:0];
		end
		// row1 col2
		else if (hc >= (hbp+280) && hc < (hbp+360) && vc < (vbp +139))
		begin
			red = GREEN[7:5];
			green = GREEN[4:2];
			blue = GREEN[1:0];
		end
		// row1 col3
		else if (hc >= (hbp+494) && hc < (hbp+574) && vc < (vbp +139))
		begin
			red = PINK[7:5];
			green = PINK[4:2];
			blue = PINK[1:0];
		end
		// row 2 col1 top
		else if (hc >= (hbp + 66) && hc < (hbp+146) && vc >= (vbp +198) && vc < (vbp + 238) )
		begin
			red = YELLOW[7:5];
			green = YELLOW[4:2];
			blue = YELLOW[1:0];
		end
		// row2 col2 top 
		else if (hc >= (hbp+280) && hc < (hbp+360) && vc >= (vbp +198) && vc < (vbp + 238) )
		begin
			red = BLUE[7:5];
			green = BLUE[4:2];
			blue = BLUE[1:0];
		end
		// row2 col3 top
		else if (hc >= (hbp+494) && hc < (hbp+574) && vc >= (vbp +198) && vc < (vbp + 238) )
		begin
			red = BLUE[7:5];
			green = BLUE[4:2];
			blue = BLUE[1:0];
		end
		// row 2 col1 bottom
		else if (hc >= (hbp + 66) && hc < (hbp+146) && vc >= (vbp +243) && vc < (vbp + 278) )
		begin
			red = YELLOW[7:5];
			green = YELLOW[4:2];
			blue = YELLOW[1:0];
		end
		// row2 col2 bottom 
		else if (hc >= (hbp+280) && hc < (hbp+360) && vc >= (vbp +243) && vc < (vbp + 278) )
		begin
			red = BLUE[7:5];
			green = BLUE[4:2];
			blue = BLUE[1:0];
		end
		// row2 col3 bottom
		else if (hc >= (hbp+494) && hc < (hbp+574) && vc >= (vbp +243) && vc < (vbp + 278) )
		begin
			red = BLUE[7:5];
			green = BLUE[4:2];
			blue = BLUE[1:0];
		end
		// row 3 col1
		else if (hc >= (hbp + 66) && hc < (hbp+146) && vc >= (vbp +337) && vc < (vbp + 417) )
		begin
			red = AQUA[7:5];
			green = AQUA[4:2];
			blue = AQUA[1:0];
		end
		// row3 col2
		else if (hc >= (hbp+280) && hc < (hbp+360) && vc >= (vbp +337) && vc < (vbp + 417))
		begin
			red = ORANGE[7:5];
			green = ORANGE[4:2];
			blue = ORANGE[1:0];
		end
		// row3 col3
		else if (hc >= (hbp+494) && hc < (hbp+574) && vc >= (vbp +337) && vc < (vbp + 417))
		begin
			red = GRASS[7:5];
			green = GRASS[4:2];
			blue = GRASS[1:0];
		end
		// we're outside active horizontal range so display black
		else
		begin
			red = 2;
			green = 2;
			blue = 1;
		end
		
		
	end
	// we're outside active vertical range so display black
	else
	begin
		red = 0;
		green = 0;
		blue = 0;
	end
end

endmodule
