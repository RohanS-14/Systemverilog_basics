//Functions in system verilog 

module function_sample();
	int s;
	
	function int increment;
		input int c, b;	//default is input 
		integer i;
			for(i=0;i < c; i=i+1)
			begin
				b=b+i;
				increment = b;
			end
	endfunction
	
	initial 
		begin
			$monitor("%d",s);
			s = increment(20,3);
			s = 5 + increment(20,3);
			
		end
	
//	void'(increment(1,100)); //type cast, so that it wont return anything 

endmodule

//void dosen't return anythng 
//doesn't