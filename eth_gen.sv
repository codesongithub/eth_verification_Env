class eth_gen;
	eth_good_pkt good_pkt;
	eth_bad_pkt  bad_pkt;
	eth_ill_pkt  ill_pkt;
	bit[1:0] pkt_type;
	static int total_pkts=10;
	task run();for (int i = 0; i < total_pkts; i++) begin
			pkt_type = $urandom_range(0,2);  //random number of 0,1,2 
			case (pkt_type)
				0 : begin //good_pkt
					good_pkt = new();
					good_pkt.pkt_name="GoodPacket";
					eth_good_pkt::count_good+=1;
					assert(good_pkt.randomize());
					eth_cfg::gen2bfm_mb.put(good_pkt);
				end
				1 : begin //bad_pkt
					bad_pkt = new();
					bad_pkt.pkt_name="BadPacket";
					eth_bad_pkt::count_bad+=1;
					assert(bad_pkt.randomize());
					eth_cfg::gen2bfm_mb.put(bad_pkt);
				end
				2 : begin //ill_pkt
					ill_pkt = new();
					ill_pkt.pkt_name="illPacket";
					eth_ill_pkt::count_ill+=1;
					assert(ill_pkt.randomize());
					eth_cfg::gen2bfm_mb.put(ill_pkt);
				end
			endcase
		end
	endtask
	task printGencount();
		$display("Generated Packets\nGoodPackets=%d\nBadPackets =%d\nillPackets= %d",eth_good_pkt::count_good,eth_bad_pkt::count_bad,eth_ill_pkt::count_ill);
	endtask

endclass


