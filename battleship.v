module battleship (
input count0 , count1 , count2 , row0 , row1 , row2 ,  col0 , col1 , col2 , rom0 , rom1 , rom2 , fire,
output reg [0:63] data,
output reg [0:7] outR = 0,  
output reg [0:7] outG = 0,
output reg [2:0] rowD
);

integer i;
integer row;
always @(*) begin
	if(row0==0&&row1==0&&row2==0) begin
		row = 0;
	end
	else if(row0==1&&row1==0&&row2==0) begin
		row = 1;
	end
	else if(row0==0&&row1==1&&row2==0) begin
		row = 2;
	end
	else if(row0==1&&row1==1&&row2==0) begin
		row = 3;
	end
	else if(row0==0&&row1==0&&row2==1) begin
		row = 4;
	end
	else if(row0==1&&row1==0&&row2==1) begin
		row = 5;
	end
	else if(row0==0&&row1==1&&row2==1) begin
		row = 6;
	end
	else begin
		row = 7;
	end
end
always @(*) begin
	if(col0 == count0 && col1 == count1 && col2 == count2) begin
		for(i=0;i<=7;i=i+1) begin	
			outR[i] = 0;
			outG[i] = 0;
		end
		outR[row] = 1;
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