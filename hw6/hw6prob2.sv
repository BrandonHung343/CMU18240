`default_nettype none
module hw6prob2
  (input logic b, clock, reset,
   output logic found3zeros_N);
  
   enum logic [2:0] {seen1 = 3'b000, seen0 = 3'b001, int1 = 3'b010,
                     int2 = 3'b011, seen00 = 3'b100, seen000 = 3'b101}
                     state, nextState;

   always_ff @ (posedge clock, posedge reset)
     if (reset) state <= seen1;
     else state <= nextState;
 
   always_comb
     unique case (state)
       seen1: nextState = (b) ? seen1 : seen0;
       seen0: nextState = (b) ? int1 : seen00;
       int1: nextState = (~b) ? seen00 : int2;
       int2: nextState = (~b) ? seen00 : seen1;
       seen00: nextState = (~b) ? seen000 : int1;
       seen000 : nextState = (~b) ? seen000 : seen00;
     endcase

   always_comb begin
     found3zeros_N = (state != seen000);
   end
endmodule: hw6prob2

module hw6prob2_test();
  logic b, clock, reset, found3zeros_N;
  hw6prob2 fsm (.b, .clock, .reset, .found3zeros_N);

  initial begin
    $monitor ($stime,, "b = %b, state = %s, found3zeros_N = %b", 
              b, fsm.state.name, found3zeros_N);
    clock = 0;
    reset = 1;
    reset <= 0;
    forever #5 clock = ~clock;
  end

  initial begin
    b <= 0;
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    b <= 1;
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    @ (posedge clock);
    $finish;
  end
endmodule: hw6prob2_test




   








       
