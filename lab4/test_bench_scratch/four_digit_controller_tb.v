initial begin
	clk = 0;
	state = 0;

	#10;
	state = 1; // blinking
	#100000001;

	#10;
	state = 2; // blinking
	#100000001;

	#10;
	state = 3;

	#10;
	state = 4;

	#10;
	state = 5; // blinking
	#100000001;

	#10;
	state = 6;

	#10;
	state = 7;

	$finish;
end

always begin
	clk = ~clk;
	#1;
end