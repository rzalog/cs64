initial begin
	clk = 0;
	enter = 0;
	master_key = 0;
	first_digit = 4'd10;
	second_digit = 4'd10;

	#10;

	// Go to state 1 (prompt for value)
	enter = 1;
	#100;
	enter = 0;

	first_digit = 4'd5;

	// Bad value
	enter = 1;
	#10;
	enter = 0;
	#10;

	second_digit = 4'd6;

	// Good value, go to state 2 (initial password)
	enter = 1;
	#10;
	enter = 0;
	#10;

	first_digit = 4'd10;

	// Bad password, stay
	enter = 1;
	#10;
	enter = 0;
	#10;

	first_digit = 4'd3;
	second_digit = 4'd3;

	// Good password, go to state 3 (YES)
	enter = 1;
	#10;
	enter = 0;
	#10;

	// Wait a good amount of time, to go to state 4 (locked)
	#200000000;

	// Enter to go to state 5 (ask for password)
	enter = 1;
	#10;
	enter = 0;
	#10;

	first_digit = 4'd2;
	second_digit = 4'd2;

	// Incorrect password to go to state 7 (BAD)
	enter = 1;
	#10;
	enter = 0;
	#10;

	// Delay to go back to state 4 (locked)
	#200000000;

	first_digit = 4'd3;
	second_digit = 4'd3;

	// Correct password to go to state 6 (display value)
	enter = 1;
	#10;
	enter = 0;
	#10;

	// Enter to go back to state 0
	enter = 1;
	#10;
	enter = 0;
	#10;

	$finish;
end

always begin
	clk = ~clk;
	#1;
end