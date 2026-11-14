module half_subtractor_gate(
input a,b,
output sub,borrow
    );
    assign sub = a^b;
    assign borrow = (~a)&b;
endmodule
