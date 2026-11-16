module decoder_2to4(y,i,en);
input [1:0] i;
input en;
output reg[3:0]y;

always@(*) begin
    case({en,i})
        3'b100: y=4'b0001;
        3'b101: y=4'b0010;
        3'b110: y=4'b0100;
        3'b111: y=4'b1000;
        
        3'b000,
        3'b001,
        3'b010,
        3'b011: y=4'b0000;
          default:$display("errors");
        endcase
    end
endmodule
