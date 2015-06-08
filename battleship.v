module battleship (
input count0 , count1 , count2 , row0 , row1 , row2 ,  col0 , col1 , col2 , fire,
output reg [0:7] outR = 0,  
output reg [0:7] outG = 0
);

integer i;
integer j;
integer k;
integer row;
integer col;
integer index;
reg ships [0:63];
reg hits [0:7][0:7];
reg misses [0:7][0:7];

initial begin
	for(i=0;i<=63;i=i+1) begin	
		ships[i] = 0;
	end
	ships[0] = 1;
	ships[1] = 1;
	ships[2] = 1;
	ships[16] = 1;
	ships[21] = 1;
	ships[24] = 1;
	ships[29] = 1;
	ships[34] = 1;
	ships[35] = 1;
	ships[37] = 1;
	ships[49] = 1;
	ships[50] = 1;
	ships[62] = 1;
	for(k=0;i<=7;i=i+1) begin	
		for(i=0;i<=7;i=i+1) begin	
			hits[k][j] = 0;
			misses[k][j] = 0;
		end	
	end
end

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
	if(col0==0&&col1==0&&col2==0) begin
		col = 0;
	end
	else if(col0==1&&col1==0&&col2==0) begin
		col = 1;
	end
	else if(col0==0&&col1==1&&col2==0) begin
		col = 2;
	end
	else if(col0==1&&col1==1&&col2==0) begin
		col = 3;
	end
	else if(col0==0&&col1==0&&col2==1) begin
		col = 4;
	end
	else if(col0==1&&col1==0&&col2==1) begin
		col = 5;
	end
	else if(col0==0&&col1==1&&col2==1) begin
		col = 6;
	end
	else begin
		col = 7;
	end
end
always @(ships[0],ships[1],ships[2],ships[3],ships[4],ships[5],ships[6],ships[7],ships[8],ships[9],ships[10],ships[11],ships[12],ships[13],ships[14],ships[15],ships[16],ships[17],ships[18],ships[19],ships[20],ships[21],ships[22],ships[23],ships[24],ships[25],ships[26],ships[27],ships[28],ships[29],ships[30],ships[31],ships[32],ships[33],ships[34],ships[35],ships[36],ships[37],ships[38],ships[39],ships[40],ships[41],ships[42],ships[43],ships[44],ships[45],ships[46],ships[47],ships[48],ships[49],ships[50],ships[51],ships[52],ships[53],ships[54],ships[55],ships[56],ships[57],ships[58],ships[59],ships[60],ships[61],ships[62],ships[63]) begin
	index = (col+(row*8));
	if(col0 == count0 && col1 == count1 && col2 == count2) begin
		for(i=0;i<=7;i=i+1) begin	
			outR[i] = 0;
			outG[i] = 0;
		end
		if(hits[row][col]==1) begin
			outR[row] = 1;
		end
		else if(misses[row][col]==1) begin
			outG[row] = 1;
		end
		else if(fire==1&&ships[index]==1) begin
			hits[row][col] = 1;
		end
		else if(fire==1&&ships[index]==0) begin
			misses[row][col] = 1;
		end
		else begin
			outR[row] = 1;
			outG[row] = 1;
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
col0,col1,col2,fire,outR[0],outR[1],outR[2],outR[3],outR[4],outR[5],outR[6],outR[7],outG[0],outG[1],outG[2],outG[3],outG[4],outG[5],outG[6],outG[7],ships[0],ships[1],ships[2],ships[3],ships[4],ships[5],ships[6],ships[7],ships[8],ships[9],ships[10],ships[11],ships[12],ships[13],ships[14],ships[15],ships[16],ships[17],ships[18],ships[19],ships[20],ships[21],ships[22],ships[23],ships[24],ships[25],ships[26],ships[27],ships[28],ships[29],ships[30],ships[31],ships[32],ships[33],ships[34],ships[35],ships[36],ships[37],ships[38],ships[39],ships[40],ships[41],ships[42],ships[43],ships[44],ships[45],ships[46],ships[47],ships[48],ships[49],ships[50],ships[51],ships[52],ships[53],ships[54],ships[55],ships[56],ships[57],ships[58],ships[59],ships[60],ships[61],ships[62],ships[63]
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