class eth_good_pkt extends eth_pkt;
	 static int count_good;
	//virtual function void print(string pkt_name="GoodPacket_def");
	 function void print(string pkt_name="GoodPacket_def");
		super.print(pkt_name);
		//$display("Count_good=%d",count_good);
	endfunction
endclass
