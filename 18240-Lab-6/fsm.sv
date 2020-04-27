`default_nettype none

module fsm 
  (input logic lsb1, clk, start, reset_L,
   input logic flipA, flipB, doneAdd,
   output logic enShift, ld, flipEnd,
   output logic clrOut, addA, done);
   
   enum logic [1:0] {init = 2'b00, checkB = 2'b01, fin = 2'b11} 
                     state, nextState;
                     
   always_comb
     unique case (state)
       init    : nextState = (start) ? checkB : init;
       checkB  : begin
                   if (~doneAdd)
                     nextState = checkB;
                   else 
                     nextState =  fin;
                 end
<<<<<<< HEAD
       fin     : nextState = init;
     endcase
     
   always_ff @(posedge clk, negedge reset_L)
=======
       fin     : nextState = start;
     endcase
     
   always_ff @(posedge clock, negedge reset_L)
>>>>>>> 5be47a890d8ba216ef5136bcbcd8a7163ff006fe
    if (~reset_L)
      state <= init;
    else
      state <= nextState;  
   
   always_comb begin
     enShift = 0;
     ld = 0;
     flipEnd = 0;
     clrOut = 0;
     addA = 0;
     done = 0;
     unique case (state)
       init    : begin
                   if (~start)
                     begin
                       clrOut = 1;
                       addA = 1;
                     end
                   else
                     begin
                       clrOut = 1;
                       addA = 1;
                       ld = 1;
                     end
                 end
       checkB  : begin
                   if (~doneAdd)
                     begin
                       enShift = 1;
                       if (lsb1)
                         addA = 1;
                     end                      
<<<<<<< HEAD
                end
       fin     : begin 
                   done = 1;
                   flipEnd = (flipA ^ flipB);
                 end
=======
                   else if (doneAdd & (flipA ^ flipB))
                     flipEnd = 1;
                 end
       fin     : done = 1;
>>>>>>> 5be47a890d8ba216ef5136bcbcd8a7163ff006fe
     endcase
   end
   
endmodule: fsm
                     
                   
                     
        
                       
  
                     
                     
   
                     
<<<<<<< HEAD
   
=======
   
>>>>>>> 5be47a890d8ba216ef5136bcbcd8a7163ff006fe
