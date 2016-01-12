`timescale 1ns/1ns

module Q3_myAssign (output W, X, Y, Z, input A, B, C, D, i, j, k, l);
	assign #(32, 34) Z = D & i;
	assign #(51, 51) Y = (C & i) | (D & j);
	assign #(70,68) X = (B & i) | (C & j) | (D & k);
	assign #(89,85) W = (A & i) | (B & j) | (C & k) | (D & l);
endmodule