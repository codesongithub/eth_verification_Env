class eth_bad_pkt extends eth_pkt;
	 static int count_bad;
	//virtual function void print(string pkt_name="badPacket_def");
	 function void print(string pkt_name="badPacket_def");
		super.print(pkt_name);
		//$display("Count_bad=%d",count_bad);
	endfunction
endclass
