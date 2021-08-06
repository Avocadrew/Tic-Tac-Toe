module controller(clk,rst,full,player_win,cpu_win,cpu_input_en,player_input_en,player_done,cpu_done,state,clr);
//12100839
parameter idle=2'b00;
parameter player=2'b01;
parameter cpu=2'b10;
parameter endgame=2'b11;

input clk,rst,full,player_win,cpu_win,player_done,cpu_done;
output reg cpu_input_en, player_input_en;
output reg[3:0]state;
output reg clr=0;
reg [1:0]cur_state,nxt_state;

always@(posedge clk or posedge rst)
begin
	if(rst)
	begin
		cur_state=idle;
	end
	else 
	begin
		cur_state=nxt_state;
	end
end
always@(posedge clk)
begin
	if(cur_state==idle)
	begin
		state=4'b0001;
		nxt_state=player;
		cpu_input_en=0;
		player_input_en=0;
		clr=1;
	end
	if(cur_state==player)
	begin
		clr=0;
		state=4'b0010;
		cpu_input_en=0;
		player_input_en=1;
		if (full==1 || player_win==1 || cpu_win==1)
		begin
			nxt_state=endgame;
		end
		if(player_done==1 && full==0 && player_win==0 && cpu_win==0)
		begin
				nxt_state=cpu;
		end
		if(player_done==0&& full==0 && player_win==0 && cpu_win==0)
		begin
				nxt_state=player;
		end
		
	end
	if(cur_state==cpu)
	begin
		clr=0;
		state=4'b0100;
		cpu_input_en=1;
		player_input_en=0;
		if (full==1 || player_win==1 || cpu_win==1)
		begin
			nxt_state=endgame;
		end
		if(cpu_done==1 && full==0 && player_win==0 && cpu_win==0)
		begin
			nxt_state=player;
		end
		if(cpu_done==0&& full==0 && player_win==0 && cpu_win==0)
		begin
			nxt_state=cpu;
		end
	end
	if(cur_state==endgame)
	begin
		clr=0;
		state=4'b1000;
		cpu_input_en=0;
		player_input_en=0;
	end
end
endmodule
