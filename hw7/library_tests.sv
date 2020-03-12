module MagComp_test ();
  logic [4:0] A1, B1;
  logic AltB, AgtB, AeqB;
  
  MagComp #(5) five (.A(A1), .B(B1), .AltB, .AgtB, .AeqB);
  
  initial begin
    $monitor($time,, "A1=%d, B1=%d, AltB=%b, AgtB=%b, AeqB=%b",
            A1, B1, AltB, AgtB, AeqB);
    #5 A1 = 5'b10000;
       B1 = 5'b00010;
    #5 A1 = 5'b00001;
       B1 = 5'b00001;
    #5 B1 = 5'b01111;
    #1 $finish;
  end
endmodule: MagComp_test

module Multiplexer_test ();
  logic [6:0] I;
  logic Y;
  logic [2:0] S;
  
  Multiplexer #(7) m1 (.*);
  
  initial begin
    $monitor($time,, "I=%b, Y=%b, S=%d",
            I, Y, S);
    #5 I = 7'b0000000;
       S = 3'b000;
    #5 S = 3'b101;
    #5 I = 7'b0100000;
    #5 S = 3'b111;
    #5 I = 7'b1111000;
       S = 3'b001;
    #5 S = 3'b100;
    #1 $finish;
  end
  
endmodule: Multiplexer_test

module Mux2to1_test ();
  logic [6:0] I0, I1, Y;
  logic S;
  
  Muz2to1 #(7) m1 (.*);
  
  initial begin
    $monitor($time,, "I0=%b, I1=%b, Y=%b, S=%b",
            I0, I1, Y, S);
    #5 I0 = 7'b0000000;
       I1 = 7'b1111111;
       S = 1'b1;
    #5 S = 1'b0;
    #1 $finish;
  end
endmodule: Mux2to1_test

module Decoder_test ();
  parameter WIDTH = 3;
  parameter I_WIDTH = $clog2(WIDTH);
    
  logic [WIDTH-1:0] D;
  logic [I_WIDTH-1:0] I;
  logic en;
  
  Decoder (#WIDTH) dec (.*);
  
  initial begin
    $monitor($time,, "I=%d, en=%b, D=%b", I, en, D);
    #5 I = 2'b11;
       en = 0;
    #5 en = 1;
    #5 I = 2'b01;
    #1 $finish;
  end
endmodule: Decoder_test

module Adder_test ();
  parameter WIDTH = 8;
  logic Cin, Cout;
  logic [WIDTH-1:0] A, B, S;
  
  Adder (#WIDTH) add (.*);
  
  initial begin
    $monitor($time,, "A=%d, B=%d, C=$b", A, B, Cin, Cout, S);
    #5 A = 27;
       B = 0;
       Cin = 1'b0;
    #5 A = 38;
       B = 200;
    #5 Cin = 1'b1;
    #5 A = 129;
       B = 129;
    #1 $finish;
  end
endmodule: Adder_test


module Register_test
  parameter WIDTH = 3;
  logic [WIDTH-1:0] D, Q;
  logic en, clear;
  logic clock, reset_L;
  
  Register (#WIDTH) regis (.*);
  
  initial begin
    $monitor($time,, "Q=%d, D=%d, en=%d, clear=%b",
            Q, D, en, clear);
    clock = 0;
    forever #5 clock = ~clock;
  end
   
  initial begin
    D = 3'b000;
    en = 0;
    reset_L <= 0;
    @(posedge clock); 
    reset_L <= 1;
    @(posedge clock); 
    D = 3'b100;
  // reset is synchronous, so must wait for a clock edge
    @(posedge clock); 
    en = 1;
    @(posedge clock); 
    @(posedge clock);
    D = 3'b010;
    #1 $finish;
  end
      
endmodule: Register_test



    
    


  
  