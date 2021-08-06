module gameAI(board1,board2,board3,board4,board5,board6,board7,board8,board9,en,select,rst,clk,turns,mode,mode_out1,mode_out0);
input [1:0]board1;
input [1:0]board2;
input [1:0]board3;
input [1:0]board4;
input [1:0]board5;
input [1:0]board6;
input [1:0]board7;
input [1:0]board8;
input [1:0]board9;
input en,rst,clk;
input mode;
input [3:0]turns;
reg [8:0]outans;
output [8:0]select;
output mode_out1,mode_out0;
assign select = en?outans:9'b0_0000_0000;
assign mode_out1=mode;
assign mode_out0=~mode;
reg[1:0] random;

always@(posedge clk)
begin
if(!en)
	begin
	outans={9'b0_0000_0000};
	random=random+1;
	end
else
	begin
		random=random+1;
		if(turns==1)
		begin
			if(board5[0]==1)
			begin
				outans={9'b1_0000_0000};
			end
			else
			begin
				outans={9'b0_0001_0000};
			end
		end
		else 
		begin
			if(mode==1)
				begin
				//winning
				if((board3[1]&&board2[1]&&(~board1[1])&&(~board1[0]))||(board4[1]&&board7[1]&&(~board1[1])&&(~board1[0]))||(board5[1]&&board9[1]&&(~board1[0])&&(~board1[1])))
				begin
					outans={9'b0_0000_0001};
				end
				else if((board1[1]&&board3[1]&&(~board2[1])&&(~board2[0]))||(board5[1]&&board8[1]&&(~board2[1])&&(~board2[0])))
				begin
					outans={9'b0_0000_0010};
				end
				else if((board1[1]&&board2[1]&&(~board3[1])&&(~board3[0]))||(board6[1]&&board9[1]&&(~board3[1])&&(~board3[0]))||(board5[1]&&board7[1]&&(~board3[0])&&(~board3[1])))
				begin
					outans={9'b0_0000_0100};
				end
				else if((board1[1]&&board7[1]&&(~board4[1])&&(~board4[0]))||(board5[1]&&board6[1]&&(~board4[1])&&(~board4[0])))
				begin
					outans={9'b0_0000_1000};
				end
				else if((board5[1]&&board4[1]&&(~board6[1])&&(~board6[0]))||(board9[1]&&board3[1]&&(~board6[1])&&(~board6[0])))
				begin
					outans={9'b0_0010_0000};
				end
				else if((board3[1]&&board5[1]&&(~board7[1])&&(~board7[0]))||(board1[1]&&board4[1]&&(~board7[1])&&(~board7[0]))||(board8[1]&&board9[1]&&(~board7[0])&&(~board7[1])))
				begin
					outans={9'b0_0100_0000};
				end
				else if((board2[1]&&board5[1]&&(~board8[1])&&(~board8[0]))||(board7[1]&&board9[1]&&(~board8[1])&&(~board8[0])))
				begin
					outans={9'b0_1000_0000};
				end
				else if((board1[1]&&board7[1]&&(~board4[1])&&(~board4[0]))||(board5[1]&&board6[1]&&(~board4[1])&&(~board4[0]))||(board4[1]&&board7[1]&&(~board1[0])&&(~board1[1])))
				begin
					outans={9'b0_0000_1000};
				end
				else if((board1[1]&&board9[1]&&(~board5[1])&&(~board5[0]))||(board2[1]&&board8[1]&&(~board5[1])&&(~board5[0]))||(board3[1]&&board7[1]&&(~board5[0])&&(~board5[1]))||(board4[1]&&board6[1]&&(~board5[1])&&(~board5[0]))||(board2[1]&&board8[1]&&(~board5[0])&&(~board5[1])))
				begin
					outans={9'b0_0001_0000};
				end
				//blocking
				else if((board5[0]&&board9[0]&&(~board1[0])&&(~board1[1]))||(board2[0]&&board3[0]&&(~board1[0])&&(~board1[1]))||(board4[0]&&board7[0]&&(~board1[0])&&(~board1[1])))
				begin
					outans={9'b0_0000_0001};
				end
				else if((board1[0]&&board3[0]&&(~board2[0])&&(~board2[1]))||(board5[0]&&board8[0]&&(~board2[0])&&(~board2[1])))
				begin
					outans={9'b0_0000_0010};
				end
				else if((board1[0]&&board2[0]&&(~board3[0])&&(~board3[1]))||(board6[0]&&board9[0]&&(~board3[0])&&(~board3[1]))||(board5[0]&&board7[0]&&(~board3[0])&&(~board3[1])))
				begin
					outans={9'b0_0000_0100};
				end
				else if((board1[0]&&board7[0]&&(~board4[0])&&(~board4[1]))||(board5[0]&&board6[0]&&(~board4[0])&&(~board4[1])))
				begin
					outans={9'b0_0000_1000};
				end
				else if((board5[0]&&board4[0]&&(~board6[0])&&(~board6[1]))||(board9[0]&&board3[0]&&(~board6[0])&&(~board6[1])))
				begin
					outans={9'b0_0010_0000};
				end
				else if((board3[0]&&board5[0]&&(~board7[0])&&(~board7[1]))||(board1[0]&&board4[0]&&(~board7[0])&&(~board7[1]))||(board8[0]&&board9[0]&&(~board7[0])&&(~board7[1])))
				begin
					outans={9'b0_0100_0000};
				end
				else if((board2[0]&&board5[0]&&(~board8[0])&&(~board8[1]))||(board7[0]&&board9[0]&&(~board8[0])&&(~board8[1])))
				begin
					outans={9'b0_1000_0000};
				end
				else if((board8[0]&&board7[0]&&(~board9[0])&&(~board9[1]))||(board3[0]&&board6[0]&&(~board9[0])&&(~board9[1]))||(board1[0]&&board5[0]&&(~board9[0])&&(~board9[1])))
				begin
					outans={9'b1_0000_0000};
				end
				//unwinning
				else if(turns==2)
				begin
				//O _ _
				//_ X _
				//_ _ O
					if((board1[0]&&board9[0]&&board5[1])||(board3[0]&&board7[0]&&board5[1]))
					begin
						outans={9'b0_0000_0010};
					end

				//X _ _
				//_ O _
				//_ _ O
					if((board1[1]&&board5[0]&&board9[0]))
					begin
						outans={9'b0_0000_0100};
					end
					if((board1[0]&&board5[0]&&board9[1]))
					begin
						outans={9'b0_0100_0000};
					end
					if((board3[1]&&board5[0]&&board7[0]))
					begin
						outans={9'b0_0000_0001};
					end
					if((board3[0]&&board5[0]&&board7[1]))
					begin
						outans={9'b1_0000_0000};
					end

				//_ O _
				//_ X O
				//_ _ _
					if(board5[1]&&board2[0]&&board6[0])
					begin
						outans={9'b0_0000_0100};
					end
					if(board5[1]&&board2[0]&&board4[0])
					begin
						outans={9'b0_0000_0001};
					end
					if(board8[0]&&board4[0]&&board5[1])
					begin
						outans={9'b0_0100_0000};
					end
					if(board8[0]&&board6[0]&&board5[1])
					begin
						outans={9'b1_0000_0000};
					end

				//_ O _
				//_ X _
				//_ O _
					if(board4[0]&&board5[1]&&board6[0])
					begin
						outans={9'b0_0000_0010};
					end
					if(board2[0]&&board5[1]&&board8[0])
					begin
						outans={9'b0_0010_0000};
					end
					
				//_ _ O
				//_ X _
				//_ O _
					if(board1[0]&&board5[1]&&board8[0])
					begin
						outans={9'b1_0000_0000};
					end
					if(board7[0]&&board5[1]&&board6[0])
					begin
						outans={9'b0_0000_0100};
					end
					if(board2[0]&&board5[1]&&board9[0])
					begin
						outans={9'b0_0000_0001};
					end
					if(board3[0]&&board5[1]&&board4[0])
					begin
						outans={9'b0_0100_0000};
					end
				//O _ _
				//_ X _
				//_ O _
					if(board3[0]&&board5[1]&&board8[0])
					begin
						outans={9'b0_0100_0000};
					end
					if(board1[0]&&board5[1]&&board6[0])
					begin
						outans={9'b1_0000_0000};
					end
					if(board2[0]&&board5[1]&&board7[0])
					begin
						outans={9'b0_0000_0100};
					end
					if(board9[0]&&board5[1]&&board4[0])
					begin
						outans={9'b0_0000_0001};
					end

				end
				else 
				begin
				if(random==1)
				begin
					if(board5[0]==0&&board5[1]==0)
					begin
						outans={9'b0_0001_0000};
					end
					else if(board3[0]==0&&board3[1]==0)
					begin
						outans={9'b0_0000_0100};
					end
					else if(board7[0]==0&&board7[1]==0)
					begin
						outans={9'b0_0100_0000};
					end
					else if(board1[0]==0&&board1[1]==0)
					begin
						outans={9'b0_0000_0001};
					end
					else if(board9[0]==0&&board9[1]==0)
					begin
						outans={9'b1_0000_0000};
					end
					else if(board4[0]==0&&board4[1]==0)
					begin
						outans={9'b0_0000_1000};
					end
					else if(board6[0]==0&&board6[1]==0)
					begin
						outans={9'b0_0010_0000};
					end
					else if(board2[0]==0&&board2[1]==0)
					begin
						outans={9'b0_0000_0010};
					end
					else if(board8[0]==0&&board8[1]==0)
					begin
						outans={9'b0_1000_0000};
					end
					else
					begin
						outans={9'b0_0000_0000};
					end
				end
				else if(random==2)
				begin
					if(board5[0]==0&&board5[1]==0)
					begin
						outans={9'b0_0001_0000};
					end
					else if(board7[0]==0&&board7[1]==0)
					begin
						outans={9'b0_0100_0000};
					end
					else if(board1[0]==0&&board1[1]==0)
					begin
						outans={9'b0_0000_0001};
					end
					else if(board9[0]==0&&board9[1]==0)
					begin
						outans={9'b1_0000_0000};
					end
					else if(board3[0]==0&&board3[1]==0)
					begin
						outans={9'b0_0000_0100};
					end
					else if(board2[0]==0&&board2[1]==0)
					begin
						outans={9'b0_0000_0010};
					end
					
					else if(board8[0]==0&&board8[1]==0)
					begin
						outans={9'b0_1000_0000};
					end
					else if(board4[0]==0&&board4[1]==0)
					begin
						outans={9'b0_0000_1000};
					end
					else if(board6[0]==0&&board6[1]==0)
					begin
						outans={9'b0_0010_0000};
					end
					
					else
					begin
						outans={9'b0_0000_0000};
					end
				end
				else if(random==3)
				begin
					if(board5[0]==0&&board5[1]==0)
					begin
						outans={9'b0_0001_0000};
					end
					else if(board9[0]==0&&board9[1]==0)
					begin
						outans={9'b1_0000_0000};
					end
					else if(board3[0]==0&&board3[1]==0)
					begin
						outans={9'b0_0000_0100};
					end
					else if(board7[0]==0&&board7[1]==0)
					begin
						outans={9'b0_0100_0000};
					end
					else if(board1[0]==0&&board1[1]==0)
					begin
						outans={9'b0_0000_0001};
					end
					else if(board2[0]==0&&board2[1]==0)
					begin
						outans={9'b0_0000_0010};
					end
					
					else if(board4[0]==0&&board4[1]==0)
					begin
						outans={9'b0_0000_1000};
					end
					else if(board6[0]==0&&board6[1]==0)
					begin
						outans={9'b0_0010_0000};
					end
					
					else if(board8[0]==0&&board8[1]==0)
					begin
						outans={9'b0_1000_0000};
					end
					
					else
					begin
						outans={9'b0_0000_0000};
					end
				end
				else if(random==0)
				begin
					if(board5[0]==0&&board5[1]==0)
					begin
						outans={9'b0_0001_0000};
					end
					else if(board1[0]==0&&board1[1]==0)
					begin
						outans={9'b0_0000_0001};
					end
					
					else if(board3[0]==0&&board3[1]==0)
					begin
						outans={9'b0_0000_0100};
					end
					else if(board9[0]==0&&board9[1]==0)
					begin
						outans={9'b1_0000_0000};
					end
					else if(board7[0]==0&&board7[1]==0)
					begin
						outans={9'b0_0100_0000};
					end
					else if(board4[0]==0&&board4[1]==0)
					begin
						outans={9'b0_0000_1000};
					end
					else if(board6[0]==0&&board6[1]==0)
					begin
						outans={9'b0_0010_0000};
					end
					else if(board2[0]==0&&board2[1]==0)
					begin
						outans={9'b0_0000_0010};
					end
					
					else if(board8[0]==0&&board8[1]==0)
					begin
						outans={9'b0_1000_0000};
					end
					
					else
					begin
						outans={9'b0_0000_0000};
					end
				end
			end
			end
			else if(mode==0)
			begin
				//blocking
				if((board5[0]&&board9[0]&&(~board1[0])&&(~board1[1]))||(board2[0]&&board3[0]&&(~board1[0])&&(~board1[1]))||(board4[0]&&board7[0]&&(~board1[0])&&(~board1[1])))
				begin
					outans={9'b0_0000_0001};
				end
				else if((board1[0]&&board3[0]&&(~board2[0])&&(~board2[1]))||(board5[0]&&board8[0]&&(~board2[0])&&(~board2[1])))
				begin
					outans={9'b0_0000_0010};
				end
				else if((board1[0]&&board2[0]&&(~board3[0])&&(~board3[1]))||(board6[0]&&board9[0]&&(~board3[0])&&(~board3[1]))||(board5[0]&&board7[0]&&(~board3[0])&&(~board3[1])))
				begin
					outans={9'b0_0000_0100};
				end
				else if((board1[0]&&board7[0]&&(~board4[0])&&(~board4[1]))||(board5[0]&&board6[0]&&(~board4[0])&&(~board4[1])))
				begin
					outans={9'b0_0000_1000};
				end
				else if((board5[0]&&board4[0]&&(~board6[0])&&(~board6[1]))||(board9[0]&&board3[0]&&(~board6[0])&&(~board6[1])))
				begin
					outans={9'b0_0010_0000};
				end
				else if((board3[0]&&board5[0]&&(~board7[0])&&(~board7[1]))||(board1[0]&&board4[0]&&(~board7[0])&&(~board7[1]))||(board8[0]&&board9[0]&&(~board7[0])&&(~board7[1])))
				begin
					outans={9'b0_0100_0000};
				end
				else if((board2[0]&&board5[0]&&(~board8[0])&&(~board8[1]))||(board7[0]&&board9[0]&&(~board8[0])&&(~board8[1])))
				begin
					outans={9'b0_1000_0000};
				end
				else if((board8[0]&&board7[0]&&(~board9[0])&&(~board9[1]))||(board3[0]&&board6[0]&&(~board9[0])&&(~board9[1]))||(board1[0]&&board5[0]&&(~board9[0])&&(~board9[1])))
				begin
					outans={9'b1_0000_0000};
				end
				
				//winning
				else if((board3[1]&&board2[1]&&(~board1[1])&&(~board1[0]))||(board4[1]&&board7[1]&&(~board1[1])&&(~board1[0]))||(board5[1]&&board9[1]&&(~board1[0])&&(~board1[1])))
				begin
					outans={9'b0_0000_0001};
				end
				else if((board1[1]&&board3[1]&&(~board2[1])&&(~board2[0]))||(board5[1]&&board8[1]&&(~board2[1])&&(~board2[0])))
				begin
					outans={9'b0_0000_0010};
				end
				else if((board1[1]&&board2[1]&&(~board3[1])&&(~board3[0]))||(board6[1]&&board9[1]&&(~board3[1])&&(~board3[0]))||(board5[1]&&board7[1]&&(~board3[0])&&(~board3[1])))
				begin
					outans={9'b0_0000_0100};
				end
				else if((board1[1]&&board7[1]&&(~board4[1])&&(~board4[0]))||(board5[1]&&board6[1]&&(~board4[1])&&(~board4[0])))
				begin
					outans={9'b0_0000_1000};
				end
				else if((board5[1]&&board4[1]&&(~board6[1])&&(~board6[0]))||(board9[1]&&board3[1]&&(~board6[1])&&(~board6[0])))
				begin
					outans={9'b0_0010_0000};
				end
				else if((board3[1]&&board5[1]&&(~board7[1])&&(~board7[0]))||(board1[1]&&board4[1]&&(~board7[1])&&(~board7[0]))||(board8[1]&&board9[1]&&(~board7[0])&&(~board7[1])))
				begin
					outans={9'b0_0100_0000};
				end
				else if((board2[1]&&board5[1]&&(~board8[1])&&(~board8[0]))||(board7[1]&&board9[1]&&(~board8[1])&&(~board8[0])))
				begin
					outans={9'b0_1000_0000};
				end
				else if((board1[1]&&board7[1]&&(~board4[1])&&(~board4[0]))||(board5[1]&&board6[1]&&(~board4[1])&&(~board4[0]))||(board4[1]&&board7[1]&&(~board1[0])&&(~board1[1])))
				begin
					outans={9'b0_0000_1000};
				end
				else if((board1[1]&&board9[1]&&(~board5[1])&&(~board5[0]))||(board2[1]&&board8[1]&&(~board5[1])&&(~board5[0]))||(board3[1]&&board7[1]&&(~board5[0])&&(~board5[1]))||(board4[1]&&board6[1]&&(~board5[1])&&(~board5[0]))||(board2[1]&&board8[1]&&(~board5[0])&&(~board5[1])))
				begin
					outans={9'b0_0001_0000};
				end
				//unwinning
				else if(turns==2)
				begin
				//O _ _
				//_ X _
				//_ _ O
					if((board1[0]&&board9[0]&&board5[1])||(board3[0]&&board7[0]&&board5[1]))
					begin
						outans={9'b0_0000_0010};
					end

				//X _ _
				//_ O _
				//_ _ O
					if((board1[1]&&board5[0]&&board9[0]))
					begin
						outans={9'b0_0000_0100};
					end
					if((board1[0]&&board5[0]&&board9[1]))
					begin
						outans={9'b0_0100_0000};
					end
					if((board3[1]&&board5[0]&&board7[0]))
					begin
						outans={9'b0_0000_0001};
					end
					if((board3[0]&&board5[0]&&board7[1]))
					begin
						outans={9'b1_0000_0000};
					end

				//_ O _
				//_ X O
				//_ _ _
					if(board5[1]&&board2[0]&&board6[0])
					begin
						outans={9'b0_0000_0100};
					end
					if(board5[1]&&board2[0]&&board4[0])
					begin
						outans={9'b0_0000_0001};
					end
					if(board8[0]&&board4[0]&&board5[1])
					begin
						outans={9'b0_0100_0000};
					end
					if(board8[0]&&board6[0]&&board5[1])
					begin
						outans={9'b1_0000_0000};
					end

				//_ O _
				//_ X _
				//_ O _
					if(board4[0]&&board5[1]&&board6[0])
					begin
						outans={9'b0_0000_0010};
					end
					if(board2[0]&&board5[1]&&board8[0])
					begin
						outans={9'b0_0010_0000};
					end
					
				//_ _ O
				//_ X _
				//_ O _
					if(board1[0]&&board5[1]&&board8[0])
					begin
						outans={9'b1_0000_0000};
					end
					if(board7[0]&&board5[1]&&board6[0])
					begin
						outans={9'b0_0000_0100};
					end
					if(board2[0]&&board5[1]&&board9[0])
					begin
						outans={9'b0_0000_0001};
					end
					if(board3[0]&&board5[1]&&board4[0])
					begin
						outans={9'b0_0100_0000};
					end
				//O _ _
				//_ X _
				//_ O _
					if(board3[0]&&board5[1]&&board8[0])
					begin
						outans={9'b0_0100_0000};
					end
					if(board1[0]&&board5[1]&&board6[0])
					begin
						outans={9'b1_0000_0000};
					end
					if(board2[0]&&board5[1]&&board7[0])
					begin
						outans={9'b0_0000_0100};
					end
					if(board9[0]&&board5[1]&&board4[0])
					begin
						outans={9'b0_0000_0001};
					end

				end
				else 
				begin
					if(board1[0]==0&&board1[1]==0)
					begin
						outans={9'b0_0000_0001};
					end
					else if(board2[0]==0&&board2[1]==0)
					begin
						outans={9'b0_0000_0010};
					end
					else if(board3[0]==0&&board3[1]==0)
					begin
						outans={9'b0_0000_0100};
					end
					else if(board4[0]==0&&board4[1]==0)
					begin
						outans={9'b0_0000_1000};
					end
					else if(board5[0]==0&&board5[1]==0)
					begin
						outans={9'b0_0001_0000};
					end
					else if(board6[0]==0&&board6[1]==0)
					begin
						outans={9'b0_0010_0000};
					end
					else if(board7[0]==0&&board7[1]==0)
					begin
						outans={9'b0_0100_0000};
					end
					else if(board8[0]==0&&board8[1]==0)
					begin
						outans={9'b0_1000_0000};
					end
					else if(board9[0]==0&&board9[1]==0)
					begin
						outans={9'b1_0000_0000};
					end
					else
					begin
						outans={9'b0_0000_0000};
					end
				end
			end
		end
	end
end
endmodule

