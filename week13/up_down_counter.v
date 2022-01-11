`timescale 1ns / 1ps

module up_down_counter(
    input CLK, input UP,
    output [3:0] Q, output [6:0] Seg,
    output digit
    );
    assign digit = 1'b1;
    reg[3:0] Q;
    reg[6:0] Seg;
  
    initial Q <= 4'b0000;
    
    always @(posedge CLK) begin
    if(UP) begin
        Q <= Q + 4'b0001;
        Seg <= 7'b0111110;
    end
    else begin
        Q <= Q - 4'b0001;
        Seg <= 7'b0111101;
    end end
    endmodule

