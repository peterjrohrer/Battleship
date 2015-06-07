module battleship (
input count0 , count1 , count2 , row0 , row1 , row2 ,  col0 , col1 , col2 , rom0 , rom1 , rom2 , fire,
output reg [0:63] data,
output reg [0:7] outR = 0,  
output reg [0:7] outG = 0,
output reg [2:0] rowD
);

`include "decoder.v"
integer i;
integer r;

always @(*) begin
	rowDecode(row0, row1, row2, r);
	if(col0 == count0 && col1 == count1 && col2 == count2) begin
		for(i=0;i<=7;i=i+1) begin	
			outR[i] = 0;
			outG[i] = 0;
		end
		for(i=0;i<=7;i=i+1) begin	
			rowDecode(row0, row1, row2, r);
			outR[r] = 1;
		end
	end
	else begin
		for(i=0;i<=7;i=i+1) begin	
			outR[i] = 0;
			outG[i] = 0;
		end
	end
end
/*
always @(*) begin
	for(i=0; i<=7; i++) begin
		if(a==i) begin
			rowD[i] = 1;
		end
		else begin
			rowD[i] = 0;
		end
	end
end
always @(*) 
	while(fire == 1) begin
		while(count == col) begin
			assign out[rowD] = ;
		end	
	end
end*/
endmodule