`default_nettype none
module hw6prob3
  (input logic A, B, clock, reset_N,
   output logic F);
   
   enum logic [8:0] {idle = 9'b000000001, aA = 9'b000000010,
                     AA = 9'b000000100, AAA = 9'b000001000,
                     nA = 9'b000010000, bB = 9'b000100000,
                     BB = 9'b001000000, BBB = 9'b010000000,
                     nB = 9'b100000000} state, nextState;
   always_ff @ (posedge clock, negedge reset_N)
     if (~reset_N) state <= idle;
     else state <= nextState;

   always_comb 
     unique case (state)
       idle: begin
               if (A) nextState = aA;
               else if (B) nextState = bB;
               else nextState = idle;
             end
       aA: begin
               if (A) nextState = AA;
               else nextState = nA;
          end
       AA: begin
               if (A) nextState = AAA;
               else nextState = nA;
          end
       AAA: begin 
               if (A) nextState = aA;
               else if (B) nextState = bB;
               else nextState = idle;
            end
       nA: begin
               if (A) nextState = aA;
               else nextState = nA;
           end
       bB: begin 
               if (B) nextState = BB;
               else nextState = nB;
          end
       BB: begin
               if (B) nextState = BBB;
               else nextState = nB;
           end
       BBB: begin
               if (A) nextState = aA;
               else if (B) nextState = bB;
               else nextState = idle;
            end
       nB: begin
               if (B) nextState = bB;
               else nextState = nB;
           end 
     endcase
   
   always_comb begin
     F = ((state == AA) & A) | ((state == BB) & B);
   end

endmodule: hw6prob3
  
                
