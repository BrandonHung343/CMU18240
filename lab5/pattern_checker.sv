`default_nettype none

module PatternChecker 
  #(parameter NW = 2,
              PW = 8)
  (input logic [NW-1:0] nuc,
   input logic [PW-1:0] pattern,
   output logic [2:0] fsm_notif,
   output logic [3:0] how_much,
   output logic [2:0] patternSignal);
   //patternSignal: 
   // A = 3'b000, C = 3'b001, T = 3'b010, G = 3'b011, 
   // other = 3'b111
   
   // fsm_notif: match = 3'b000, no_match = 3'b001, 
   //                  error = 3'b010, next2 = 3'b011,
   //                 next3 = 3'b100, exactlyN = 3'b101, 
   //                 upTo = 3'b110, end = 3'b111;
   // how_much only active for exactlyN, upTo 
   
  always_comb begin
    patternSignal = 3'b111;
    casez (pattern)
      6'h00 : fsm_notif = 3'b111;
      6'h10 : begin
                fsm_notif = (nuc == 2'b00) ? 3'b000 : 3'b001;
                patternSignal = 3'b001;
              end
      6'h11 : begin
                fsm_notif = (nuc == 2'b01) ? 3'b000 : 3'b001;
                patternSignal = 3'b010;
              end
      6'h12 : begin
                fsm_notif = (nuc == 2'b10) ? 3'b000 : 3'b001;
                patternSignal = 3'b000;
              end
      6'h13 : begin
                fsm_notif = (nuc == 2'b11) ? 3'b000 : 3'b001;
                patternSignal = 3'b011;
              end
      6'h20 : fsm_notif = 3'b000;
      6'h21 : fsm_notif = 3'b011;
      6'h22 : fsm_notif = 3'b100;
      6'h0? : begin
                fsm_notif = 3'b101;
                how_much = pattern[3:0];
              end
      6'h3? : begin
                fsm_notif = 3'b110;
                how_much = 16 - pattern[3:0];
              end
      default : fsm_notif = 3'b010;
    endcase
  end
    
endmodule: PatternChecker
      
             
      
      
