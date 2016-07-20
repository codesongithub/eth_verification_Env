class eth_env;
	eth_bfm bfm=new();
	eth_gen generator=new();
	task run();
		$display("Calling eth_env");
		fork
	       	begin
			generator.run();
		end
		begin  
	       		bfm.run();
		end 
	join
	endtask
	task dispCount();
		generator.printGencount();
		bfm.printBfmcount();
	endtask

			
endclass

