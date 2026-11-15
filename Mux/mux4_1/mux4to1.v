`timescale 1ns / 1ps
module mux4to1(
input i0,i1,i2,i3,s1,s0,
output y
    );
    assign y =(~s1 & ~s0 &i0)|
            (~s1 & s0 & i1)|
              (s1 & ~s0 &i2)|
             (s1 &s0 &i3);
endmodule
