`timescale 1ns/1ns
module Q2_myBarrel_tb ();
	logic w = 0, x = 0,y=0,z=0;
	logic a=1,b=1,c=1,d=1;
	logic i=1,j=0,k=0,l=0;
	Q2_myBarrel UUT (w,x,y,z,a,b,c,d,i,j,k,l);
	initial begin
	#150 i = 0;
	#150 j = 1;
	#150 j = 0;
	#150 k = 1;
	#150 k=0;
	#150 l=1;
	#150 l=0;
	#150 $stop;
	end
endmodule