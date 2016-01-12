`timescale 1ns/1ns

module Q2_myBarrel (output W, X, Y, Z, input A, B, C, D, i, j, k, l);
//	Z
	Q1_myAO aaa (Z, D, i, 0);
//	Y
	wire qq;
	Q1_myAO bbb (qq, C, i, 0);
	Q1_myAO ccc (Y, D, j, qq);
//	X
	wire ww, xx;
	Q1_myAO ddd (xx, B, i, 0);
	Q1_myAO eee (ww, C, j, xx);
	Q1_myAO fff (X, D, k, ww);
//	W
	wire yy, zz, cc;
	Q1_myAO ggg (yy, A, i, 0);
	Q1_myAO hhh (zz, B, j, yy);
	Q1_myAO jjj (cc, C, k, zz);
	Q1_myAO kkk (W, D, l, cc);
endmodule