`timescale 1ns / 1ps

module four_bit_decade_counter(
    input CLK, input X, input R,
    output Q0, output Q1,
    output Q2, output Q3,
    output Z
    );
    
    assign D0 = ~Q0 & ~Q1 & ~Q2 & X | Q0 & ~Q1 & ~Q2 & ~X | ~Q0 & ~Q3 & X | Q0 & ~Q3 & ~X;
    assign D1 = Q0 & ~Q1 & ~Q3 & X | ~Q0 & Q1 & ~Q3 | Q1 & ~Q3 & ~X;
    assign D2 = Q0 & Q1 & ~Q2 & ~Q3 & X | ~Q0 & & Q2 & ~Q3 | ~Q1 & Q2 & ~Q3 | Q2 & ~Q3 & ~X;
    assign D3 = Q0 & Q1 & Q2 & ~Q3 & X | ~Q0 & ~Q1 & ~Q2 & Q3 | ~Q1 & ~Q2 & Q3 & ~X;

    d_flipflop dff1(CLK, R, D0, Q0);
    d_flipflop dff2(CLK, R, D1, Q1);
    d_flipflop dff3(CLK, R, D2, Q2);
    d_flipflop dff4(CLK, R, D3, Q3);

    assign Z = Q0 & ~Q1 & ~Q2 & Q3 &X;
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