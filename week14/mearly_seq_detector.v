`timescale 1ns / 1ps

module mearly_seq_detector(
    input CLK, input X, input R,
    output A, output B,
    output Z            // found!!
    );

    assign D1 = A & ~B | ~A & B & X;
    assign D2 = ~A & ~B & X | A & ~B & ~X | A & B & X;

    d_flipflop DFF1(CLK, R, D1, A);
    d_flipflop DFF2(CLK, R, D2, B);
    d_flipflop DFFZ(CLK, R, A & B & X, Z);
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