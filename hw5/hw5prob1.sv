`default_nettype none

module hw5prob1
  (input logic Input, clock, reset_n,
   output logic Prob1);

  enum logic [1:0] {s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11}
                    state, nextState;

  always_comb begin 
    if (~Input & (state[0] & Input |
        state[1] & ~state[0] & ~Input)) nextState = s3;
    else if (~Input & ~(state[0] & Input |
        state[1] & ~state[0] & ~Input)) nextState = s1;
    else if (Input & (state[0] & Input |
        state[1] & ~state[0] & ~Input)) nextState = s2;
    else
        nextState = s0;
  end

  assign Prob1 = state[1] & state[0];

  always_ff @(posedge clock, negedge reset_n)
    if (~reset_n)
      state <= s0;
    else
      state <= nextState;
endmodule: hw5prob1

