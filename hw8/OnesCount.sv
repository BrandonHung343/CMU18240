`default_nettype none
module OnesCount
 #(parameter w = 30)
 (input  logic         d_in_ready, clock, reset,
  input  logic [w-1:0] d_in,
  output logic         dor,
  output logic [$clog2(w)-1:0] d_out);

  logic lowBit, done, Cclr_L, Cinc_L;
  logic Sload_L, Sshift_L, Oclr_L;
  logic Oinc_L;
  logic dummy1, dummy2;

  logic [$clog2(w)-1:0] SC;

  fsm #(w) control (.*);
    
  ShiftRegister #(w) sr (.Q(lowBit), .D(d_in), .clock, .load(~Sload_L), .en(~Sshift_L), .left(1'b0));
  
  Counter #($clog2(w)) sc (.clock, .en(1'b1), .D(6'b0), .load(1'b0), .clear(~Cclr_L), .up(~Cinc_L), .Q(SC));
  
  MagComp #($clog2(w)) cmp (.AltB(dummy1), .AeqB(done), .AgtB(dummy2), .A(SC), .B(5'd30));
  
  Counter #($clog2(w)) oct (.clock, .clear(~Oclr_L), .up(~Oinc_L), .Q(d_out), .en(1'b1), .D(6'b0), .load(1'b0));
            
endmodule: OnesCount

module fsm 
 #(parameter w = 30)
  (input  logic clock, reset, done,
   input  logic d_in_ready, lowBit,
   output logic Cclr_L, Cinc_L, Sload_L, Sshift_L, Oclr_L, Oinc_L, dor);

  enum logic {A = 1'b0, B = 1'b1} cur_state, n_state;

  always_comb begin
    case (cur_state)
      A: begin  //State A
         n_state = d_in_ready ? B : A;
         Cclr_L  = d_in_ready ? 0 : 1;
         Sload_L = d_in_ready ? 0 : 1;
         Oclr_L  = d_in_ready ? 0 : 1;
         Sshift_L = 1; 
         Cinc_L   = 1; 
         Oinc_L   = 1; 
         dor = 0; // D_out_ready
         end
      B: begin  //State B
         n_state  = (done)? A : B;
         dor      = (done)? 1 : 0;
         Cclr_L   = 1; 
         Sload_L  = 1; 
         Oclr_L   = 1;
         Cinc_L   = (done) ? 1 : 0;
         Sshift_L = (done) ? 1 : 0;
         Oinc_L = (done)? 1:~lowBit;
         end
    endcase
  end

  always_ff @(posedge clock, posedge reset) 
    if (reset) 
      cur_state <= A;
    else 
      cur_state <= n_state;

endmodule: fsm