class eth_ill_pkt extends eth_pkt;
	 static int count_ill;
	//virtual function void print(string pkt_name="illPacket_def");
	 function void print(string pkt_name="illPacket_def");
		super.print(pkt_name);
		//$display("Count_ill=%d",count_ill);
	endfunction
endclass
