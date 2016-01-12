`timescale 1ns/1ns
module Q5_myBarrelVectorGenerate_tb ();
	logic [15:0]w1 = 0;
	logic [15:0]w2 = 0;
	logic [15:0]d = 1+2+4+8+16+32+64+128+256+512+1024+2048+4096+8192+16384;
	logic [15:0]n = 1;
	Q5_myBarrelVectorGenerate UUT1 (w1, d, n);
	Q6_myBarrelVectorCondition UUT2 (w2, d, n);
	initial repeat (16) 
	#500 n = n*2;
endmodule