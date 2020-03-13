`default_nettype none
module fsm
  (input logic clock, reset_L,
   output logic Cin);
   
  logic D, Q;
  
  assign D <= 1;
  
  always_ff @(posedge clock, negedge reset_L)
    if (~reset_L) Q <= 0;
    else Q <= D;
    
  always_comb begin
    if (~Q)
      Cin = 1;
  end
  
endmodule: fsm


module serialTwosComp
  (input logic A, clock, reset_L,
   output logic B);
   
  logic Cin, Cout, en, clear, addOut;
  // logic [1:0] nextState;
  
  assign B = ~addOut;
  
  Adder #(1) a1 (.A, .B(1'b0), .Cin, .Cout, .S(addOut));
  Register #(1) coutReg (.D(Cout), .en(1'b1), .clear(1'b0), .clock, .reset_L, .Q(Cin));
  fsm dut (.*);
  
endmodule: serialTwosComp
  
module serialTwosComp_test ();
  // number is 10111011
  logic A, B, Cin, Cout;
  logic reset_L, clock;
  
  serialTwosComp stc (.*);
  initial begin
    $monitor($time,, "A=%b, B=%b, Cin=%b, Cout=%b", 
                      A, B, stc.Cin, stc.Cout);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
    reset_L = 0;
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
    #1 $finish;
  end
  
endmodule: serialTwosComp_test
    
    
  
  
  
  
  
  
  
  
  