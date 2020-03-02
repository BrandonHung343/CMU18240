`default_nettype none
module hw6prob6
  (input logic clock, reset, r1, r2, r3,
   output logic g1, g2, g3);
   
   enum logic [2:0] {idle = 3'b000, A = 3'b001, 
                     B = 3'b010, C = 3'b100} state, nextState;

   always_ff @(posedge clock, posedge reset)
     if(reset) state <= idle;
     else state <= nextState;

   always_comb begin
     if ((g1 & r1) | (r1 & (~r2) & (~r3)) | 
         (r1 & (~g1) & (~g2) & (~g3)) |
         ((~g2) & r1 & r2 & (~r3))) nextState = C;
     else if (((~g3) & (~r1) & (r2)) | (g3 & (~r1) & (r2) & (~r3)) | (g2 & r2))
         nextState = B;
     else if (((~g3) & (~r1) & (~r2) & r3) | ((~g1) & (~g2) & g3 & r3))
         nextState = A;
     else
         nextState = idle;
   end

   always_comb begin 
     g1 = state[2];
     g2 = state[1];
     g3 = state[0];
   end
endmodule: hw6prob6

module hw6prob6_test1 ();
   logic clock, reset, r1, r2, r3, g1, g2, g3;

   hw6prob6 fsm (.*);
  
   initial begin 
     $monitor ($stime,, "r1 = %b, r2 = %b, r3 = %b, \
               g1 = %b, g2 = %b, g3 = %b, state = %s", 
               r1, r2, r3, g1, g2, g3, fsm.state.name);
     clock = 0;
     reset = 1;
     reset <= 0;
     forever #5 clock = ~clock;
  end

  initial begin
     r1 = 0;
     r2 = 0;
     r3 = 0;
     @ (posedge clock);
     r2 = 1;
     r3 = 1;
     @ (posedge clock);
     @ (posedge clock);
     r2 = 0;
     r1 = 1;
     @ (posedge clock);
     @ (posedge clock);
     r1 = 0;
     @ (posedge clock);
     @ (posedge clock);
     r3 = 0;
     @ (posedge clock);
    $finish;
  end

endmodule: hw6prob6_test1

module hw6prob6_test2 ();
   logic clock, reset, r1, r2, r3, g1, g2, g3;

   hw6prob6 fsm (.*);
  
   initial begin 
     $monitor ($stime,, "r1 = %b, r2 = %b, r3 = %b, \
               g1 = %b, g2 = %b, g3 = %b, state = %s", 
               r1, r2, r3, g1, g2, g3, fsm.state.name);
     clock = 0;
     reset = 1;
     reset <= 0;
     forever #5 clock = ~clock;
  end

  initial begin
     r1 = 0;
     r2 = 0;
     r3 = 0;
     @ (posedge clock);
     r3 = 1;
     @ (posedge clock);
     r3 = 0;
     r2 = 1;
     @ (posedge clock);
     r2 = 0;
     r1 = 1;
     @ (posedge clock);
     r1 = 0;
     @ (posedge clock);
     r3 = 1;
     @ (posedge clock);
     r2 = 1;
     @ (posedge clock);
     r2 = 0;
     r1 = 1;
     @ (posedge clock);
     r2 = 2;
     @ (posedge clock); 
     r3 = 0;
     r2 = 1;
     r1 = 0;
     @ (posedge clock);
     r3 = 1;
     @ (posedge clock);
     r3 = 0;
     r1 = 1;
     @ (posedge clock);
     r1 = 0;
     r3 = 1;
     @ (posedge clock);
     r1 = 1;
     @ (posedge clock);
     r3 = 0;
     r1 = 1;
     r2 = 0;
     @ (posedge clock);
     r3 = 1;
     @ (posedge clock);
     r3 = 0;
     r2 = 1;
     @ (posedge clock);
     r3 = 1;
     @ (posedge clock);
     $finish;
  end

endmodule: hw6prob6_test2


