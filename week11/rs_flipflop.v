`timescale 1ns / 1ps

module rs_flipflop(
    input CLK, 
    input R, 
    input S,
    output Q, 
    output Qc
    );
    
    assign Q = ~((CLK & R) | Qc);
    assign Qc = ~((CLK & S) | Q);
endmodule