`default_nettype none

module MagComp
  # (parameter WIDTH = 1)
  (input logic [WIDTH-1:0] A, B,
   output logic AltB, AeqB, AgtB);
  
  logic AeqBout, AltBout, AgtBout; 
  always_comb begin
    if (A < B)
      begin
        AeqBout = 1'b0;
        AltBout = 1'b1;
        AgtBout = 1'b0;
      end
    else if (A == B)
      begin
        AeqBout = 1'b1;
        AltBout = 1'b0;
        AgtBout = 1'b0;
      end
    else
      begin
        AgtBout = 1'b1;
        AltBout = 1'b0;
        AeqBout = 1'b0;
      end
  end

  assign #1 AltB = AltBout;
  assign #1 AeqB = AeqBout;
  assign #1 AgtB = AgtBout; 
endmodule: MagComp


module Multiplexer
  # (parameter WIDTH = 2)
  // parameter S_WIDTH = $clog2(WIDTH);
  (input logic [WIDTH-1:0] I,
   input logic [$clog2(WIDTH)-1:0] S,
   output logic Y);

  logic Yout;
  
  always_comb begin
    if (S < WIDTH) 
      Yout = I[S];
  end

  assign #1 Y = Yout;
  
endmodule: Multiplexer

module Mux2to1
  // input width
  # (parameter WIDTH = 1)
  (input logic [WIDTH-1:0] I0, I1,
   input logic S,
   output logic [WIDTH-1:0] Y);
   
  assign #1 Y = S ? I1 : I0;

endmodule: Mux2to1

module Decoder 
    # (parameter WIDTH = 1)
    // parameter I_WIDTH = $clog2(WIDTH);
    (input logic [$clog2(WIDTH)-1:0] I,
     input logic en,
     output logic [WIDTH-1:0] D);

    logic [WIDTH-1:0] Dout; 

    always_comb begin
      Dout = 0;
      if (en)
        begin
          if (I < WIDTH)
            Dout[I] = 1'b1;
        end 
      else
        Dout = I;
    end
  
    assign #1 D = Dout;
    
endmodule: Decoder
  
module Adder
  # (parameter WIDTH = 1)
  (input logic [WIDTH-1:0] A, B,
   input logic Cin,
   output logic [WIDTH-1:0] S,
   output logic Cout);
   
  assign #1 {Cout, S} = A + B + Cin;
  
endmodule: Adder
 
module Register
  # (parameter WIDTH = 1)
  (input logic [WIDTH-1:0] D,
   input logic en, clear,
   input logic clock, reset_L,
   output logic [WIDTH-1:0] Q);
   
  logic Qout;
  always_ff @(posedge clock, 
              negedge reset_L)
    if (~reset_L)
      Qout <= 0;
    else if (en)
      Qout <= clear ? 0 : D;
  assign #1 Q = Qout; 
      
endmodule: Register
  


      
        
      
  
  
  
   
   
  
