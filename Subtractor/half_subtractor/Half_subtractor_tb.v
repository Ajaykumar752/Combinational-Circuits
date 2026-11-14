
module half_subtractor_tb;
reg a,b;
wire sub,borrow;

 half_subtractor_gate uut(.a(a), 
 .b(b),
  .sub(sub),
   .borrow(borrow)
   );
 initial begin
 $monitor("a=%b, b=%b, sub=%b, borrow=%b", a,b,sub,borrow);
 
 a=0; b=0;
 #10;
 
 a=0; b=1;
 #10;
 
 a=1; b=0;
 #10;
 
 a=1; b=1;
 #10; 
 $finish;
 end
endmodule
