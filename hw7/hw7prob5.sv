`default_nettype none

module fsm
  (input logic clock, reset_L, start, inputB, inputC,
   output logic en, done, clear);
   
  enum logic [3:0] {init=4'b1000, checkC=4'b0100, 
                    checkB=4'b0010, stop=4'b0000} Q, D;
                  
  always_comb 
    unique case (Q)
      init: D <= start ? checkC : init;
      checkC: D <= inputC ? checkB : stop;
      checkB: D <= checkC;
      stop: D <= stop;
    endcase
  
  always_ff @(posedge clock, negedge reset_L)
    if (~reset_L) Q <= init;
    else Q <= D;


  assign clear = (Q == init) ? 1 : 0;  
  assign en = (((Q == checkB) && inputB) || (Q == init)) ? 1 : 0;
  assign done = (Q == stop) ? 1 : 0;
endmodule: fsm

module prob5FSMD
  // #(parameter W = 8)
  (input logic start, inputC, inputB,
   input logic clock, reset_L,
   input logic [7:0] inputA,
   output logic done, 
   output logic [7:0] value);
   
  logic en, dontUse, clear;
  logic [7:0] addOut;
  
  fsm dut (.*);
  Adder #(8) a1 (.A(inputA), .B(value), .Cin(1'b0),
                 .S(addOut), .Cout(dontUse));
  Register #(8) r1 (.D(addOut), .en, .clear, 
                    .clock, .Q(value));
endmodule: prob5FSMD
                    
  
  
  
  

                    
