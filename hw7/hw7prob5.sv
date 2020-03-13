`default_nettype none

module fsm
  (input logic clock, reset_L, start, inputB, inputC,
   output logic en, done);
   
  enum logic [3:0] {init=4'b1000, checkC=4'b0100, 
                    checkB=4'b0010, stop=4'b0000} Q, D;
                  
  always_comb 
    unique case (Q)
      init: D <= start ? checkC : init;
      checkC: D <= c ? checkB : stop;
      checkB: D <= checkC;
      stop: D <= stop;
    endcase
  
  always_ff @(posedge clock, negedge reset_L)
    if (~reset_L) Q <= init;
    else Q <= D;
  
  assign en = ((Q == stateB) && b) ? 1 : 0;
  assign done = (Q == stop) ? 1 : 0;
endmodule: fsm

module prob5FSMD
  #(parameter W = 8)
  (input logic start, inputC, inputB,
   input logic [7:0] inputA,
   output logic done, 
   output logic clock, reset_L,
   output logic [7:0] value);
   
  logic en;
  logic [W-1:0] addOut;
  
  fsm dut (.*);
  Adder #(W) a1 (.A(inputA), .B(value), .Cin(1'b0),
                 .S(addOut),);
  Register #(W) r1 (.D(addOut), .en, .clear(1'b0), 
                    .clock, .reset_L, .Q(value));
endmodule: prob5FSMD
                    
  
  
  
  

                    