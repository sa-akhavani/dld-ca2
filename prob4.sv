`timescale 1ns/1ns

module Q4_myBarrelVector (output [3:0]W, input [3:0]D, [3:0]N);
//	Z
	Q1_myAO aaa (W[3], D[3], N[0], 0);
//	Y
	wire qq;
	Q1_myAO bbb (qq, D[2], N[0], 0);
	Q1_myAO ccc (W[2], D[3], N[1], qq);
//	X
	wire ww, xx;
	Q1_myAO ddd (xx, D[1], N[0], 0);
	Q1_myAO eee (ww, D[2], N[1], xx);
	Q1_myAO fff (W[1], D[3], N[2], ww);
//	W
	wire yy, zz, cc;
	Q1_myAO ggg (yy, D[0], N[0], 0);
	Q1_myAO hhh (zz, D[1], N[1], yy);
	Q1_myAO jjj (cc, D[2], N[2], zz);
	Q1_myAO kkk (W[0], D[3], N[3], cc);
endmodule