`timescale 1ns / 1ps

module rs_latch(
  input E, 
  input R, 
  input S,
  output Q, 
  output Qc
  );
  
  assign Q = ~((E & R) | Qc);
  assign Qc = ~((E & S) | Q);
endmodule