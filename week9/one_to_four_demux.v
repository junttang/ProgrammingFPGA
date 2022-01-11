module one_to_four_demux(
    input S0, S1, A,
    output O1, O2, O3, O4
    );
    
    assign O1 = A & ~S0 & ~S1;
    assign O2 = A & ~S0 & S1;
    assign O3 = A & S0 & ~S1;
    assign O4 = A & S0 & S1;
endmodule