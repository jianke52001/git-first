/*
优先编码器，由拨码键盘输入，结果由数码管显示
*/
module encode(a,c,en);

input[8:1] a;
output[7:0] c;
reg[7:0] c;
output[7:0] en;

reg[3:0] c_tmp;

integer i;

assign en=8'b11111110;

always@(a) 
begin
	c_tmp=0;
	for(i=1;i<9;i=i+1) begin
		if(a[i])
			c_tmp=i;
	end
end
	

always@(c_tmp)
begin
	case(c_tmp)
		4'b0000:
			c=8'b0000_0011;
		4'b0001:
			c=8'b1001_1111;
		4'b0010:
			c=8'b0010_0101;
		4'b0011:
			c=8'b0000_1101;
		4'b0100:
			c=8'b1001_1001;
		4'b0101:
			c=8'b0100_1001;
		4'b0110:
			c=8'b0100_0001;
		4'b0111:
			c=8'b0001_1111;
		4'b1000:
			c=8'b0000_0001;
		4'b1001:
			c=8'b0001_1001;
		4'b1010:
			c=8'b0001_0001;
		4'b1011:
			c=8'b1100_0001;
		4'b1100:
			c=8'b0110_0011;
		4'b1101:
			c=8'b1000_0101;
		4'b1110:
			c=8'b0110_0001;
		4'b1111:
			c=8'b0111_0001;
	 endcase
end
endmodule 