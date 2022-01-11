`timescale 1ns / 1ps

module d_flipflop(
  input CLK, 
  input D, 
  output Q, 
  output Qc
  );
  
  assign Q = ~(~(CLK & D) & Qc);
  assign Qc = ~(~(CLK & ~D) & Q);
endmodule