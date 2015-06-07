module decoder();

task rowDecode;
input a0, a1, a2; 
output row;
initial begin
	if(a0==0&&a1==0&&a2==0) begin
		row = 0;
	end
	else begin
		row = 7;
	end
end
endtask

endmodule
