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
  always_comb
    unique case ({q2, q1, q0})
	  3'b000 => begin
	              if (coin == 2'b00)
				    {d2, d1, d0} <= 3'b000;
				  else if (coin == 2'b01)
				    {d2, d1, d0} <= 3'b001;
				  else if (coin == 2'b10)
				    {d2, d1, d0} <= 3'b010;
				  else
				    {d2, d1, d0} <= 3'b101;
				end
	  3'b001 => begin
	              if (coin == 2'b00)
				    {d2, d1, d0} <= 3'b001;
				  else if (coin == 2'b01)
				    {d2, d1, d0} <= 3'b010;
				  else if (coin == 2'b10)
				    {d2, d1, d0} <= 3'b100;
				  else
				    {d2, d1, d0} <= 3'b110;
				end
	  3'b010 => begin
	              if (coin == 2'b00)
				    {d2, d1, d0} <= 3'b010;
				  else if (coin == 2'b01)
				    {d2, d1, d0} <= 3'b011;
				  else if (coin == 2'b10)
				    {d2, d1, d0} <= 3'b101;
				  else
				    {d2, d1, d0} <= 3'b111;
				end
	  3'b011 => begin
	              if (coin == 2'b00)
				    {d2, d1, d0} <= 3'b011;
				  else if (coin == 2'b01)
				    {d2, d1, d0} <= 3'b100;
				  else if (coin == 2'b10)
				    {d2, d1, d0} <= 3'b110;
				  else
				    {d2, d1, d0} <= 3'b100;
				end
	  3'b100 => {d2, d1, d0} <= 3'b000;
	  3'b101 =? {d2, d1, d0} <= 3'b001;
	  3'b110 => {d2, d1, d0} <= 3'b010;
	  3'b111 =? {d2, d1, d0} <= 3'b011;
	endcase
	
	always_comb begin
	  drop = q2;
	  credit = {0, 0, d1, d0};
	end
	
endmodule: myStructuralFSM
	
	