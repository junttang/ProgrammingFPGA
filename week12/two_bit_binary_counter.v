`timescale 1ns / 1ps

module two_bit_binary_counter(
    input CLK,      // Clock input
    input X,        // pulse input
    input R,
    output Q0,      // LSB
    output Q1,      // MSB
    output Z        // final state
    );

    assign D0 = Q0 & ~X | ~Q0 & X;
    assign D1 = Q1 & ~X | Q1 & ~Q0 | ~Q1 & Q0 & X;

    d_flipflop dff1(CLK, R, D0, Q0);
    d_flipflop dff2(CLK, R, D1, Q1);
    
    assign Z = Q0 & Q1 & X;
endmodule

module d_flipflop(
    input CLK, input R,
    input D,
    output Q
    );
    reg Q, Qc;
    
    initial begin
        Q = 0;
        Qc = 0;
    end
    
    always @(posedge CLK) begin
        Q <= D;
        Qc <= ~D;
        if (R) begin
            Q <= 0;
            Qc <= 1;
        end
    end
endmodule