module clkmod(clk,fout,rst);
input clk,rst;
output reg fout;
reg [6:0]out;
always@(posedge clk or posedge rst)
begin
if(rst==1)
begin
fout=0;
out=4'b11111;
end
else if(rst==0)
begin
if(out==4'b00001)
begin
fout=~fout;
out=6'b111111;
end
else
out=out-1;
end
end
endmodule