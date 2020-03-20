`default_nettype none

module myAbstractFSM (
  input logic [1:0] coin,
  output logic drop,
  output logic [3:0] credit,
  input logic clock, reset_N);
  enum logic [2:0] {init = 3'b000, cred1 = 3'b001, cred2 = 3'b010, 
                    cred3 = 3'b011, cred0Soda = 3'b100, cred1Soda = 3'b101,
                    cred2Soda = 3'b110, cred3Soda = 3'b111} 
                    currState, nextState;
// (increase bitwidth if you need more than eight states)
// (don't specify state encoding values)
// Next state logic is defined here. You are basically
// transcribing the "next-state" column of the state transition
// table into a SystemVerilog case statement.
  always_comb begin
    case (currState)
      init: begin
              if (coin == 2'b00)
                nextState = init;
              else if (coin == 2'b01)
                nextState = cred1;
              else if (coin == 2'b10)
                nextState = cred3;
              else
                nextState <= cred1Soda;
             end
   cred1: begin
            if (coin == 2'b00)
              nextState = cred1;
            else if (coin == 2'b01)
              nextState = cred2;
            else if (coin == 2'b10)
              nextState = cred0Soda;
            else
              nextState = cred2Soda;
          end

   cred2: begin
            if (coin == 2'b00)
              nextState = cred2;
            else if (coin == 2'b01)
              nextState = cred3;
            else if (coin == 2'b10)
              nextState = cred1Soda;
            else
              nextState = cred3Soda;
          end

   cred3: begin
            if (coin == 2'b00)
              nextState = cred3;
            else if (coin == 2'b01)
              nextState = cred0Soda;
            else if (coin == 2'b10)
              nextState = cred2Soda;
            else 
              nextState = cred0Soda;
          end

   cred0Soda: nextState = init;
   cred1Soda: nextState = cred1;
   cred2Soda: nextState = cred2;
   cred3Soda: nextState = cred3;
   default: nextState = init;
   endcase
  end


  always_comb begin
    drop = 0; 
    credit = 4'b0000;
    unique case (currState)
   init: credit = 4'b0000;
      cred1: credit = 4'b0001;
   cred2: credit = 4'b0010;
   cred3: credit = 4'b0011;
   cred0Soda: drop = 1;
   cred1Soda: begin
                drop = 1;
                credit = 4'b0001;
              end
   cred2Soda: begin
                drop = 1;
                credit = 4'b0010;
              end
   cred3Soda: begin
                drop = 1;
                credit = 4'b0011;
             end
    endcase
  end

// Synchronous state update described here as an always block.
// In essence, these are your flip flops that will hold the state
// This doesn't do anything interesting except to capture the new
// state value on each clock edge. Also, synchronous reset.
  always_ff @(posedge clock)
  if (~reset_N)
    currState <= init; // or whatever the reset state is
  else
    currState <= nextState;
 
endmodule: myAbstractFSM
