module win_declarer(board1,board2,board3,board4,board5,board6,board7,board8,board9,playerwin,cpuwin);
input [1:0]board1;
input [1:0]board2;
input [1:0]board3;
input [1:0]board4;
input [1:0]board5;
input [1:0]board6;
input [1:0]board7;
input [1:0]board8;
input [1:0]board9;
output reg playerwin;
output reg cpuwin;
always@(*)
begin
	if(board1[1]==1&&board2[1]==1&&board3[1]==1) 
	begin
		playerwin=0;
		cpuwin=1;
	end
	else if(board4[1]==1&&board5[1]==1&&board6[1]==1)
	begin
		playerwin=0;
		cpuwin=1;
	end
	else if(board7[1]==1&&board8[1]==1&&board9[1]==1) 
	begin
		playerwin=0;
		cpuwin=1;
	end
	else if(board1[1]==1&&board4[1]==1&&board7[1]==1)
	begin
		playerwin=0;
		cpuwin=1;
	end
	else if(board2[1]==1&&board5[1]==1&&board8[1]==1) 
	begin
		playerwin=0;
		cpuwin=1;
	end
	else if(board3[1]==1&&board6[1]==1&&board9[1]==1)
	begin
		playerwin=0;
		cpuwin=1;
	end
	else if(board1[1]==1&&board5[1]==1&&board9[1]==1)
	begin
		playerwin=0;
		cpuwin=1;
	end
	else if(board3[1]==1&&board5[1]==1&&board7[1]==1)
	begin
		playerwin=0;
		cpuwin=1;
	end
	else if(board1[0]==1&&board2[0]==1&&board3[0]==1) 
	begin
		playerwin=1;
		cpuwin=0;
	end
	else if(board4[0]==1&&board5[0]==1&&board6[0]==1)
	begin
		playerwin=1;
		cpuwin=0;
	end
	else if(board7[0]==1&&board8[0]==1&&board9[0]==1) 
	begin
		playerwin=1;
		cpuwin=0;
	end
	else if(board1[0]==1&&board4[0]==1&&board7[0]==1)
	begin
		playerwin=1;
		cpuwin=0;
	end
	else if(board2[0]==1&&board5[0]==1&&board8[0]==1) 
	begin
		playerwin=1;
		cpuwin=0;
	end
	else if(board3[0]==1&&board6[0]==1&&board9[0]==1)
	begin
		playerwin=1;
		cpuwin=0;
	end
	else if(board1[0]==1&&board5[0]==1&&board9[0]==1)
	begin
		playerwin=1;
		cpuwin=0;
	end
	else if(board3[0]==1&&board5[0]==1&&board7[0]==1)
	begin
		playerwin=1;
		cpuwin=0;
	end
	else
	begin
		playerwin=0;
		cpuwin=0;
	end
end
endmodule
