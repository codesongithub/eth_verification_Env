module top;
	eth_env env=new();
	initial begin
	       fork
		env.run();
	join
		env.dispCount();
		$finish;
	end 
endmodule	
