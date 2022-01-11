`timescale 1ns / 1ps

module shift_register(
    input CLK, input S,
    input In, input R, 
    output[3:0] Q
    );
    reg [3:0] Q;

    always @(posedge CLK) begin
    if(R) begin
      Q <= 4'b0000;
    end
    else if(S) begin
        Q[0] <= In;
        Q[1] <= Q[0];
        Q[2] <= Q[1];
        Q[3] <= Q[2];
    end end
endmodule
