module full_subtractor_tb;
reg a,b,c;
wire diff,borrow;
integer i;
full_subtractor_gate uut(.a(a),
.b(b),
.c(c),
.diff(diff),
.borrow(borrow)
);
initial begin
for(i=0; i<8;i=i+1)
begin
{a,b,c}=i;
#10;
end
$finish;
end
endmodule
