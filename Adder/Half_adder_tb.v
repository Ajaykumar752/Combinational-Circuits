
module halfadder_gatetb;
reg a,b;
wire s,c;
halfadder_gate uut(.a(a), .b(b), .s(s), .c(c));

initial begin
$monitor("a=%b, b=%b, s=%b, c=%b",a,b,s,c);
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
    end
endmodule
