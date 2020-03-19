`default_nettype none

module dFlipFlop(
  output logic q,
  input logic d, clock, reset);

  always @(posedge clock)
  if (reset == 1)
    q <= 0;
  else
    q <= d;
    
endmodule: dFlipFlop

module myStructuralFSM(
  input logic [1:0] coin,
  input logic clock, reset,
  output logic [3:0] credit,
  output logic drop);
  
  logic q0, q1, q2;
  logic d0, d1, d2;
  
  dFlipFlop ff0 (.d(d0), .q(q0), .clock, .reset),
            ff1 (.d(d1), .q(q1), .clock, .reset),
			ff2 (.d(d2), .q(q2), .clock, .reset);
			
  // state logic
  // state assignments: init = 000, 1cred = 001,
  // 2cred = 010, 3cred = 011, 0credSoda = 100,
  // 1credSoda = 101, 2credSoda = 110, 3credSoda = 111
  always_comb begin
    d0 = (q2 & q0) | (~q2 & ~q0 & coin[0]) | (q0 & ~coin[1] 
          & ~coin[0]) | (~q2 & ~q0 & coin[1]) | (q2 & q0);
    d1 = (q1 & ~coin[1] & ~coin[0]) | (q1 & ~q0 & coin[0]) |
         (q1 & q0 & coin[1] & ~coin[0]) | (~q2 & q1 & ~q0 &
          coin[0]) | (~q2 & ~q1 & ~q0 & coin[1] & ~coin[0]) |
          (q2 & q1);
    d2 = (~q2 & q1 & coin[1]) | (~q2 & coin[1] & q0) | (~q2 & 
          q1 & q0 & coin[0]) | (~q2 & ~q1 & coin[1] & coin[0]);
  end
          
          
        
    
	
	always_comb begin
	  drop = q2;
	  credit = {1'b0, 1'b0, q1, q0};
	end
	
endmodule: myStructuralFSM
	
	
