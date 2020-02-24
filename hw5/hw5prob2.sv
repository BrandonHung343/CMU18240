`default_nettype none

module hw5prob2
  (input logic Input, clock, reset_n,
   output logic Prob2);

  logic [1:0] state, nextState;

  always_comb begin 
    nextState[0] = ~Input;
    nextState[1] = state[0] & Input;
  end

  assign Prob2 = ~state[1] & state[0] & ~Input;

  always_ff @(posedge clock, negedge reset_n)
    if (~reset_n)
      state <= 2'b0;
    else
      state <= nextState;
endmodule: hw5prob2

