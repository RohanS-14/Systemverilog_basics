//pass by value and pass by subroutine 

module value_ref();
	int x,y,z;
	function int byvalue(int x,y);
		
		return x+y;

		$display("x = %0d, y = %0d",x,y);
	endfunction

//// any changes made in subroutine will not effect the values outside the functions 


	function int byref_2(ref int x,y);

		x = x+y;
		y = x+y;
		return x+y;
		$display("x = %0d, y = %0d",x,y);
	endfunction
	
	initial begin
		x= 20;
		y= 30;
		$display("\n x = %0d, y = %0d",x,y);
		z = byvalue(x,y);
		$display("\n z = %0d ",z);
	end
	
	initial begin
		x= 20;
		y= 30;
		$display("\n x = %0d, y = %0d",x,y);
		z= byref_2(x,y);
		$display("\n z = %0d ",z);
	end
	
		
endmodule 

//output 
/* run
# 
#  x = 20, y = 30
# 
#  z = 50 
# 
#  x = 20, y = 30
# 
#  z = 0 
*/