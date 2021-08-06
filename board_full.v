module board_full(board1,board2,board3,board4,board5,board6,board7,board8,board9,is_full);
input [1:0]board1;
input [1:0]board2;
input [1:0]board3;
input [1:0]board4;
input [1:0]board5;
input [1:0]board6;
input [1:0]board7;
input [1:0]board8;
input [1:0]board9;
output is_full;
assign is_full = (board1[0]||board1[1])&&(board2[0]||board2[1])&&(board3[0]||board3[1])&&(board4[0]||board4[1])&&(board5[0]||board5[1])&&(board6[0]||board6[1])&&(board7[0]||board7[1])&&(board8[0]||board8[1])&&(board9[0]||board9[1]);

endmodule
