//statsic and automatic 

module stat_and_auto_funct();
	
	function statics();
		static int a;  //one memory is allocated
		automatic int b;  //memeory is created whne ever it is beging called 
		int c; //deafult its static
		
		a++;
		b++;
		c++;
		$display("static : a =%0d :b = %0d :c= %0d",a,b,c);
	endfunction
	
	function automatic auto(); //if not mentioned it acts like static 
		static int a;  //one memory is allocated
		automatic int b;  //memeory is created whne ever it is beging called 
		int c; //deafult its automatic
		
		a++;
		b++;
		c++;
		$display("dynamic: a =%0d :b = %0d :c= %0d",a,b,c);
	endfunction
	
	initial 
	begin
	repeat(3)statics();
	repeat(3)auto();
	
	$display("\n static outside: a = %0d",statics.a);
	$display("\n static outside: a = %0d",statics.c);
//	$display("\n automatic: a = %d",statics.b); //accessing automatic variable is illegal
// any changes made in subroutine will not effect the values outside the functions 
	end
endmodule
	