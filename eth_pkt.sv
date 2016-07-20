class eth_pkt;
	int count;
	rand bit[47:0] sa;
	rand bit[9:0] len;
	rand byte payload[$];
	//enum {goodPacket=0,badPacket=1,illPacket=2} pkt_name;
	string pkt_name;
	//virtual function void print(string pkt_name="Default_Packet");
	 function void print(string pkt_name="Default_Packet");
		$display(" %s Fields are-->", pkt_name);
		$display("sa=%h", sa);
		$display("len=%h\n\n", len);
	endfunction
	
	constraint len_c {
		len>0;len<10;
	}
	constraint payload_c {
		payload.size()==len;
	}	
endclass	
