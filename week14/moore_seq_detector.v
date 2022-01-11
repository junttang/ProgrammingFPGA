`timescale 1ns / 1ps

module moore_seq_detector(
    input CLK, input X, input R,
    output A, output B, output C,
    output Z            // found!!
    );

    assign D1 = B & C & X;
    assign D2 = A & X | B & ~C | ~B & C & X;
    assign D3 = B & ~C & ~X | ~A & ~B & ~C & X;

    d_flipflop DFF1(CLK, R, D1, A);
    d_flipflop DFF2(CLK, R, D2, B);
    d_flipflop DFF3(CLK, R, D3, C);
    assign Z = A;
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