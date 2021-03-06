module wave_to_scanline (board1,board2,board3,board4,board5,board6,board7,board8,board9,scanline_vertical,scanline_horizontal,clk);
input [1:0]board1;
input [1:0]board2;
input [1:0]board3;
input [1:0]board4;
input [1:0]board5;
input [1:0]board6;
input [1:0]board7;
input [1:0]board8;
input [1:0]board9;
input clk;
output reg[15:0]scanline_horizontal;
output reg[15:0]scanline_vertical;
reg [255:0]canvas;
reg [32:0]idx;
reg[4:0] scanline_counter=0;
always@(*)
begin
	canvas=255'b0;
	for(idx=0;idx<16;idx=idx+1)
	begin
		canvas[idx]=1;
	end
	for(idx=80;idx<96;idx=idx+1)
	begin
		canvas[idx]=1;
	end
	for(idx=160;idx<176;idx=idx+1)
	begin
		canvas[idx]=1;
	end
	for(idx=240;idx<256;idx=idx+1)
	begin
		canvas[idx]=1;
	end
	for(idx=0;idx<241;idx=idx+16)
	begin
		canvas[idx]=1;
	end
	for(idx=5;idx<246;idx=idx+16)
	begin
		canvas[idx]=1;
	end
	for(idx=10;idx<251;idx=idx+16)
	begin
		canvas[idx]=1;
	end
	for(idx=15;idx<256;idx=idx+16)
	begin
		canvas[idx]=1;
	end

	if(board1[0]==1)
	begin
		for(idx=17;idx<21;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=33;idx<37;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=49;idx<53;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=65;idx<69;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end
	if(board2[0]==1)
	begin
		for(idx=22;idx<26;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=38;idx<42;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=54;idx<58;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=70;idx<74;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end
	if(board3[0]==1)
	begin
		for(idx=27;idx<31;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=43;idx<47;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=59;idx<63;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=75;idx<79;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end
	if(board4[0]==1)
	begin
		for(idx=97;idx<101;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=113;idx<117;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=129;idx<133;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=145;idx<149;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end
	if(board5[0]==1)
	begin
		for(idx=102;idx<106;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=118;idx<123;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=134;idx<138;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=150;idx<154;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end
	if(board6[0]==1)
	begin
		for(idx=107;idx<111;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=123;idx<127;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=139;idx<143;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=155;idx<159;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end
	if(board7[0]==1)
	begin
		for(idx=177;idx<181;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=193;idx<197;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=209;idx<213;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=225;idx<229;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end
	if(board8[0]==1)
	begin
		for(idx=182;idx<186;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=198;idx<202;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=214;idx<218;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=230;idx<234;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end
	if(board9[0]==1)
	begin
		for(idx=187;idx<191;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=203;idx<207;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=219;idx<223;idx=idx+1)
		begin
			canvas[idx]=1;
		end
		for(idx=235;idx<239;idx=idx+1)
		begin
			canvas[idx]=1;
		end
	end


	if(board1[1]==1)
	begin
		canvas[17]=1;
		canvas[34]=1;
		canvas[51]=1;
		canvas[68]=1;
	end
	if(board2[1]==1)
	begin
		canvas[22]=1;
		canvas[39]=1;
		canvas[56]=1;
		canvas[73]=1;
	end
	if(board3[1]==1)
	begin
		canvas[27]=1;
		canvas[44]=1;
		canvas[61]=1;
		canvas[78]=1;
	end
	if(board4[1]==1)
	begin
		canvas[97]=1;
		canvas[114]=1;
		canvas[131]=1;
		canvas[148]=1;
	end
	if(board5[1]==1)
	begin
		canvas[102]=1;
		canvas[119]=1;
		canvas[136]=1;
		canvas[153]=1;
	end
	if(board6[1]==1)
	begin
		canvas[107]=1;
		canvas[124]=1;
		canvas[141]=1;
		canvas[158]=1;
	end
	if(board7[1]==1)
	begin
		canvas[177]=1;
		canvas[194]=1;
		canvas[211]=1;
		canvas[228]=1;
	end
	if(board8[1]==1)
	begin
		canvas[182]=1;
		canvas[199]=1;
		canvas[216]=1;
		canvas[233]=1;
	end
	if(board9[1]==1)
	begin
		canvas[187]=1;
		canvas[204]=1;
		canvas[221]=1;
		canvas[238]=1;
	end
end
always@(posedge clk)
begin
	scanline_vertical=16'b0000_0000_0000_0000;
	scanline_vertical[scanline_counter]=1;
	for(idx=0;idx<16;idx=idx+1)
	begin
		scanline_horizontal[idx]=canvas[16*idx+scanline_counter];
	end
	scanline_counter=scanline_counter+1;
	if(scanline_counter==16)
	begin
		scanline_counter=0;
	end
end
endmodule
