`default_nettype none
module fsm
  (input logic clock, reset_L,
   output logic firstInput, clear);
   
  enum logic [1:0] {init=2'b00, round1=2'b01, next=2'b10} D, Q;
  
  always_comb
    unique case(Q)
      init: D <= round1;
      round1: D <= next;
      next: D <= next;
      default: D <= init;
    endcase
 
  
  always_ff @(posedge clock, negedge reset_L)
    if (~reset_L) Q <= init;
    else Q <= D;
    
  always_comb begin
    unique case (Q)
      next: begin
              firstInput = 0;
              clear = 0;
            end
      init: begin
              firstInput = 1;
              clear = 1;
            end
      round1: begin
               firstInput = 1;
               clear = 0;
              end
    endcase
  end 
endmodule: fsm


module serialTwosComp
  (input logic A, clock, reset_L,
   output logic B);
   
  logic Cin, Cout, en, clear, firstInput, flippedA;
  // logic [1:0] nextState;
  assign flippedA = ~A; 
  Adder #(1) a1 (.A(flippedA), .B(firstInput), .Cin, .Cout, .S(B));
  Register #(1) coutReg (.D(Cout), .en(1'b1), .clear, 
                         .clock, .Q(Cin));
  fsm dut (.*);
  
endmodule: serialTwosComp
  
module serialTwosComp_test ();
  // number is 10111011
  logic A, B, Cin, Cout;
  logic reset_L, clock;
  
  serialTwosComp stc (.*);
  initial begin
    $monitor($time,, "A=%b, B=%b, Cin=%b, Cout=%b, \
                      firstInput=%b, reset=%b, s=%s",
                      A, B, stc.Cin, stc.Cout, 
                      stc.firstInput, reset_L, stc.dut.Q.name);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
    reset_L = 0;
    A = 1;
    Cin = 0;
    Cout = 0;
    @(posedge clock);
    reset_L = 1;
    @(posedge clock);
    A = 1;
    @(posedge clock);
    @(posedge clock);
    A = 0;
    @(posedge clock);
    A = 1;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    A = 0;
    @(posedge clock);
    A = 1;
    @(posedge clock);
    reset_L = 0;
    @(posedge clock);
    A = 0;
    reset_L = 1;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    #1 $finish;
  end
  
endmodule: serialTwosComp_test
    
    
  
  
  
  
  
  
  
  
  
