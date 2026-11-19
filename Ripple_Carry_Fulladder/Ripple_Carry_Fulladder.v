`timescale 1ns / 1ps

module rca_4bit(
    input  [3:0] a, b,
    output [3:0] sum,
    input        cin,
    output       c_out
);
    wire c1, c2, c3;

    full_adder f0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .c_out(c1));
    
    full_adder f1(.a(a[1]), .b(b[1]), .cin(c1),  .sum(sum[1]), .c_out(c2));
    
    full_adder f2(.a(a[2]), .b(b[2]), .cin(c2),  .sum(sum[2]), .c_out(c3));
    
    full_adder f3(.a(a[3]), .b(b[3]), .cin(c3),  .sum(sum[3]), .c_out(c_out));
endmodule

module full_adder(
    input  a, b, cin,
    output sum, c_out
);
    assign sum   = a ^ b ^ cin;
    assign c_out = (a & b) | (b & cin) | (cin & a);
endmodule


