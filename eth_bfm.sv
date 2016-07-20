class eth_bfm;
	eth_pkt pkt;
	int numofGoodPktsRcvd;
	int numofBadPktsRcvd;
	int numofIllPktsRcvd;
	task run();
		$display("inside eth_bfm.run()- total_pkts=%d",eth_gen::total_pkts);
	for(int i=0;i<eth_gen::total_pkts; i++) begin
		eth_cfg::gen2bfm_mb.get(pkt);
		$display("packet received=%s",pkt.pkt_name);
		pkt.print(pkt.pkt_name);
		if(pkt.pkt_name=="GoodPacket") 
			numofGoodPktsRcvd+=1;
			else if (pkt.pkt_name=="BadPacket")
				numofBadPktsRcvd+=1;
				else numofIllPktsRcvd+=1;
	end
	endtask
	task printBfmcount();
		$display("Packets Received at BFM\nGoodPackets=%d\nBadPackets= %d\nillPackets= %d",numofGoodPktsRcvd,numofBadPktsRcvd,numofIllPktsRcvd);
	endtask
endclass
