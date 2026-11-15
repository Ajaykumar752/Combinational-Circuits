`timescale 1ns / 1ps
module mux2_1_gate(
input a,b,s,
output y
    );
    wire w1,w2,w3;
    
    not n0(w1,s);
    and a1(w2,a,w1);
    and a2(w3,s,b);
    or or1(y,w2,w3);
    
    
endmodule

