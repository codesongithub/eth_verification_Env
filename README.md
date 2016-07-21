# eth_verification_Env
Hello_world_kind_of_Ethernet_verification_environment
This work demonstrate a simple verification SV based( not UVM) environment. Feature are
- eth_pkt.sv-->as Object.Ethernet packet is considered as object ( as transaction)
- eth_gen.sv-->as Generator. generates 10 packets. packets could be good,bad,ill
- eth_bfm.sv-->as BFM. Receives packet from genearator via mailbox
- eth_cfg.sv-->as Interface. Provides mailbox funcationality
- eth_bad_pkt.sv-->extends eth_pkt and represents bad packet. 
- eth_good_pkt.sv, eth_ill_packet.sv--> follows above similar defn
- eth_env.sv--> as Environment. Instantiate Generator and BFM
- top.sv--> instantiate environment
- eth.sv--> includes *.sv files

How to run
- Simulation transcript is genrated for Questa sim
- do run.do --> use this command at questsim command promt
OR
- executes commmands in run.do one by one

further queries at btnaveenkumar@gmail.com

