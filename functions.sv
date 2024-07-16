module function_example;
	int s;
	
	function int suml
	input int a,b;
	sum = a+b;
	endfunction
	
	initial begin
		s=sum(10,5);
		$display("value of s = %d",s);
		end
endmodule

