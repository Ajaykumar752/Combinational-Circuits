module claa_4_bit(

 input [3:0]a,b,
 input cin,
 output[3:0]sum,
 output c_out
    );
    wire p1,p2,p3,p4;  //propagation
    wire c1,c2,c3,c4; //carry-in
    wire g1,g2,g3,g4; //generation
    assign p1 = a[0]^b[0];
    assign p2 = a[1]^b[1];
    assign p3 = a[2]^b[2];
    assign p4 = a[3]^b[3]; 
    
    assign g1 =a[0]&b[0];
    assign g2 =a[1]&b[1];
    assign g3 =a[2]&b[2];
    assign g4 =a[3]&b[3];
    
    assign c1 =cin;
    assign c2 =g1 | (p1 & c1);
    assign c3 = g2 | (p2 &g1 )|(p2 & p1 &c1);
    assign c4 = g3 | (p3 & g2)| (p2&p3&g1) | (p1&p2&p3&c1);
    
    assign sum[0] =p1^c1;
    assign sum[1] =p2^c2;
    assign sum[2] =p3^c3;
    assign sum[3] =p4^c4;
    
    assign c_out= g4 | (p4&g3) | (p4&p3&g2) | (p4&p3&p2&g1) | (p4&p3&p2&p1&c1); 
endmodule

