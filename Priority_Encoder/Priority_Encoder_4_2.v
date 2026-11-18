`timescale 1ns / 1ps
module priority_encoder_4to2(y,d,v);
input[3:0] d;
output reg [1:0] y;
output reg v;
always@(*)
begin
    if(d[3])
    {v,y}=3'b111;
    
    else if(d[2])
    {v,y}=3'b110;
    
    else if(d[1])
    {v,y}=3'b101;
    
    else if(d[0])
    {v,y}=3'b100;

    else{v,y}=3'b000;
    end
    
endmodule
