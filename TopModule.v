module TopModule(scanline_horizontal,scanline_vertical,player_input,clk,rst,player_win,cpu_win,st,board1,board2,board3,board4,board5,board6,board7,board8,board9,cpu_en,cpu_select,turns,is_full,mode,mo1,mo0);
output [15:0]scanline_horizontal;
output [15:0]scanline_vertical;
output [1:0]board1,board2,board3,board4,board5,board6,board7,board8,board9;
output cpu_en;
output [8:0]cpu_select;
output player_win;
output cpu_win;
output [3:0]st;
output is_full;
output [3:0]turns;
output mo1,mo0;
input [8:0]player_input;
input clk,rst,mode;


board b(clk,rst,player_input,cpu_select,board1,board2,board3,board4,board5,board6,board7,board8,board9,player_en,cpu_en,player_done,cpu_done,turns,clr);

board_full bf(board1,board2,board3,board4,board5,board6,board7,board8,board9,is_full);

controller ctrl(clk,rst,is_full,player_win,cpu_win,cpu_en,player_en,player_done,cpu_done,st,clr);

win_declarer wd(board1,board2,board3,board4,board5,board6,board7,board8,board9,player_win,cpu_win);

wave_to_scanline wts(board1,board2,board3,board4,board5,board6,board7,board8,board9,scanline_vertical,scanline_horizontal,clk);

gameAI gAI(board1,board2,board3,board4,board5,board6,board7,board8,board9,cpu_en,cpu_select,rst,m_clk,turns,mode,mo1,mo0);

clkmod cm(clk,m_clk,rst);
endmodule
