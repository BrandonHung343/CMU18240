`default_nettype none

module MagComp
  # (parameter WIDTH = 1)
  (input logic [WIDTH-1:0] A, B,
   output logic AltB, AeqB, AgtB);
  
  always_comb begin
    if (A < B)
      begin
        AeqB = 1'b0;
        AltB = 1'b1;
        AgtB = 1'b0;
      end
    else if (A == B)
      begin
        AeqB = 1'b1;
        AltB = 1'b0;
        AgtB = 1'b0;
      end
    else
      begin
        AgtB = 1'b1;
        AltB = 1'b0;
        AeqB = 1'b0;
      end
  end
 
endmodule: MagComp


module Multiplexer
  # (parameter WIDTH = 2)
  parameter S_WIDTH = $clog2(WIDTH);
  (input logic [WIDTH-1:0] I,
   input logic [S_WIDTH-1:0] S,
   output logic Y);
  
  always_comb begin
    if (S < WIDTH) 
      Y = I[S];
  end
  
endmodule: Multiplexer

module Mux2to1
  // input width
  # (parameter WIDTH = 1)
  (input logic [WIDTH-1:0] I0, I1,
   input logic S,
   output logic [WIDTH-1:0] Y);
   
  assign Y = S ? I1 : I0;

endmodule Mux2to1

module Decoder 
    # (parameter WIDTH = 1);
    parameter I_WIDTH = $clog2(WIDTH);
    (input logic [I_WIDTH-1:0] I,
     input logic en,
     output logic [WIDTH-1:0] D);
     
    always_comb begin
      D = 0;
      if (en)
        begin
          if (I < WIDTH)
            D[I] = 1'b1;
        end 
      else
        D = I;
    end
    
endmodule: Decoder
  
module Adder
  # (parameter WIDTH = 1)
  (input logic [WIDTH-1:0] A, B,
   input logic Cin,
   output logic [WIDTH-1:0] S,
   output logic Cout);
   
  assign {Cout, S} = A + B + Cin;
  
endmodule: Adder
 
module Register
  # (parameter WIDTH = 1)
  (input logic [WIDTH-1:0] D,
   input logic en, clear,
   input logic clock, reset_L,
   output logic [WIDTH-1:0] Q);
   
  always_ff @(posedge clock, 
              negedge reset_L)
    if (~reset_L)
      Q <= 0;
    else if (en)
      Q <= clear ? 0 : D;
      
endmodule: Register
  


      
        
      
  
  
  
   
   
  