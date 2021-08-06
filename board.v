module board(clk,rst,select_player,select_cpu,board1,board2,board3,board4,board5,board6,board7,board8,board9,enable_player,enable_cpu,player_done,cpu_done,turns,clr);
//12100839
input rst,clk;
input clr;
input [8:0]select_cpu;
input [8:0]select_player;
input enable_player, enable_cpu;
output reg [1:0]board1;
output reg [1:0]board2;
output reg [1:0]board3;
output reg [1:0]board4;
output reg [1:0]board5;
output reg [1:0]board6;
output reg [1:0]board7;
output reg [1:0]board8;
output reg [1:0]board9;
output reg player_done=0;
output reg cpu_done=1;
output reg [3:0]turns=0;
always@(posedge clk)
begin
	if(clr)
	begin
		board1<=2'b00;
		board2<=2'b00;
		board3<=2'b00;
		board4<=2'b00;
		board5<=2'b00;
		board6<=2'b00;
		board7<=2'b00;
		board8<=2'b00;
		board9<=2'b00;
		turns=0;
		player_done=0;
		cpu_done=1;
		
	end
	else 
	begin
		if(select_player[1]==1'b1 && enable_player==1 && board2== 0)
		begin
			board2<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_player[0]==1'b1&& enable_player==1&&board1== 0)
		begin
			board1<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_player[2]==1'b1&& enable_player==1&&board3== 0)
		begin
			board3<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_player[3]==1'b1&& enable_player==1&&board4== 0)
		begin
			board4<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_player[4]==1'b1&& enable_player==1&&board5== 0)
		begin
			board5<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_player[5]==1'b1&& enable_player==1&&board6== 0)
		begin
			board6<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_player[6]==1'b1&& enable_player==1&&board7== 0)
		begin
			board7<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_player[7]==1'b1&& enable_player==1&&board8== 0)
		begin
			board8<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_player[8]==1'b1&& enable_player==1&&board9== 0)
		begin
			board9<={2'b01};
			player_done=1;
			cpu_done=0;
			turns=turns+1;
		end
		else if(select_cpu[0]==1'b1&& enable_cpu==1&&board1== 0)
		begin
			board1<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else if(select_cpu[1]==1'b1&& enable_cpu==1&&board2== 0)
		begin
			board2<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else if(select_cpu[2]==1'b1&& enable_cpu==1&&board3== 0)
		begin
			board3<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else if(select_cpu[3]==1'b1&& enable_cpu==1&&board4== 0)
		begin
			board4<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else if(select_cpu[4]==1'b1&& enable_cpu==1&&board5== 0)
		begin
			board5<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else if(select_cpu[5]==1'b1&& enable_cpu==1&&board6== 0)
		begin
			board6<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else if(select_cpu[6]==1'b1&& enable_cpu==1&&board7== 0)
		begin
			board7<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else if(select_cpu[7]==1'b1&& enable_cpu==1&&board8==0)
		begin
			board8<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else if(select_cpu[8]==1'b1&& enable_cpu==1&&board9==0)
		begin
			board9<={2'b10};
			cpu_done=1;
			player_done=0;
		end
		else 
		begin
			board1<=board1;
			board2<=board2;
			board3<=board3;
			board4<=board4;
			board5<=board5;
			board6<=board6;
			board7<=board7;
			board8<=board8;
			board9<=board9;
		end
	end
end
endmodule 