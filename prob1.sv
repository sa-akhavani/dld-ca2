`timescale 1ns/1ns

module Q1_myAO (output w, input a, b, c);
	wire i;
	and #(13, 17) g1 (i, a, b);
	or #(19, 17) g2 (w, i, c);
endmodule