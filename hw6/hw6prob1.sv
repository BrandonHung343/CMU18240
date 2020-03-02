`default_nettype none
module hw6prob1
  (input logic a, clock, reset_N,
   output logic found_it);
   
   enum logic [2:0] {seen0 = 3'b000, seen1 = 3'b010, 
                     seen10 = 3'b100} state, nextState;

   always_ff @(posedge clock, negedge reset_N)
     if(~reset_N) state <= seen0;
     else state <= nextState;

   always_comb 
     unique case (state)
       seen0: nextState = (a) ? seen1 : seen0;
       seen1: nextState = (a) ? seen1 : seen10;
       seen10: nextState = (a) ? seen1: seen0;
     endcase

   always_comb begin 
     found_it = (state == seen10) & a;
   end
endmodule: hw6prob1

module hw6prob1_test ();
   logic clock, reset_N, a, found_it;

   hw6prob1 fsm (.*);
  
   initial begin 
     $monitor ($stime,, "found_it = %b, a = %b, state = %s",
               found_it, a, fsm.state.name);
     clock = 0;
     reset_N = 0;
     reset_N <= 1;
     forever #5 clock = ~clock;
  end

  initial begin
     a <= 1;
     @ (posedge clock);
     @ (posedge clock);
     a <= 0;
     @ (posedge clock);
     a <= 1;
     @ (posedge clock);
     $finish;
  end

endmodule: hw6prob1_test 

