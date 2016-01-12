`timescale 1ns/1ns
module Q4_myBarrelVector_tb ();
	logic [3:0]w = 0;
	logic [3:0]d = 1 + 2 + 4 + 8;
	logic [3:0]n = 0;
	Q4_myBarrelVector UUT1 (w, d, n);
	initial begin
	#150 n[0] = 0;
	#150 n[1] = 1;
	#150 n[1] = 0;
	#150 n[2] = 1;
	#150 n[2]=0;
	#150 n[3]=1;
	#150 n[3]=0;
	#150 $stop;
	end
endmodule