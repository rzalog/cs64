

initial begin
	clk = 0;
	digit_changed = 0;

	number_input = 4'd10;
	two_digit_clear = 0;
	first_val_digit = 4'd3;
	second_val_digit = 4'd4;
	disp_val = 0;

	#10;

	// Test number input (should see 54)
	number_input = 5;

	digit_changed = 1;
	#10;
	digit_changed = 0;
	#10;

	number_input = 4;
	
	digit_changed = 1;
	#10;
	digit_changed = 0;
	#10;

	// Test that two_digit_clear clears digits
	two_digit_clear = 1;
	#10;
	two_digit_clear = 0;
	#10;

	// See that disp_val makes the input val digits display
	disp_val = 1;
	#10;
	disp_val = 0;
	#10;

	$finish;

end

always begin
	clk = ~clk;
	#1;
end