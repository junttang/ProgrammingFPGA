`timescale 1ns / 1ps

module ring_counter(
    input CLK, input R,
    output [3:0] Q
    );
    reg [3:0] Q;
  
    always @(posedge CLK) begin
    if(R)
        Q = 4'b1000;
    else begin
        Q[0] <= Q[3];
        Q[1] <= Q[0];
        Q[2] <= Q[1];
        Q[3] <= Q[2];
    end end
endmodule
