`timescale 1ns/1ns

module Q5_myBarrelVectorGenerate (output [15:0]W, input [15:0]D, [15:0]N);
// A -> D[0]
// i -> N[0]
// W -> W[0]

	wire [15:0][16:0]xv;
	genvar i, j;
	
	generate for (i = 0; i < 16; i = i + 1) begin: row
		assign xv[i][0] = 0;
	end
	endgenerate
	
	generate for (i = 0; i < 16; i = i + 1) begin: gen_rows
		assign W[15-i] = xv[i][i+1];
		
		for (j = 0; j <= i; j = j + 1) begin: gen_cols
			Q1_myAO uuj (xv[i][j + 1], D[15 - i + j], N[j], xv[i][j]);
		end
		
	end	
	endgenerate
	
endmodule