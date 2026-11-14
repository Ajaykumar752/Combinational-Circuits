module fulladder_gate(
    input a,b,cin,
    output sum,cout
    );
    wire w1,w2,w3;
    xor(w1,a,b);
    xor(sum,w1,cin);
    
    and(w2,a,b);
    and(w3,cin,w1);
    
    or(cout,w3,w2);
    
endmodule
