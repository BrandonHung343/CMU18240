`default_nettype none
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
  
  Mux2to1 #(7) m1 (.*);
  
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
  // `define WIDTH1 3
  // `define I_WIDTH1 2
    
  logic [2:0] D;
  logic [1:0] I;
  logic en;
  
  Decoder #(3) dec (.*);
  
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
  // `define 8 8
  logic Cin, Cout;
  logic [7:0] A, B, S;
  
  Adder #(8) add (.*);
  
  initial begin
    $monitor($time,, "A=%d, B=%d, Cin=%b, Cout=%b, S=%d", A, B, Cin, Cout, S);
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


module Register_test ();
  //`define 3 3
  logic [2:0] D, Q;
  logic en, clear;
  logic clock, reset_L;
  
  Register #(3) regis (.*);
  
  initial begin
    $monitor($time,, "Q=%d, D=%d, en=%d, clear=%b",
            Q, D, en, clear);
    clock = 0;
    forever #5 clock = ~clock;
  end
   
  initial begin
    D = 3'b000;
    en = 0;
    clear = 0;
    reset_L <= 0;
    @(posedge clock); 
    reset_L <= 1;
    @(posedge clock); 
    D = 3'b100;
  // reset is synchronous, so must wait for a clock edge
    @(posedge clock); 
    en = 1;
    @(posedge clock); 
    D = 3'b010; 
    @(posedge clock);
    D = 3'b011;
    clear = 1;
    @(posedge clock);
    en = 0;
    @(posedge clock);
    clear = 0;
    @(posedge clock);
    @(posedge clock);
    D = 3'b111;
    en = 1;
    @(posedge clock);
    D = 3'b101;
    en = 0;
    @(posedge clock);
    #1 $finish;
  end
      
endmodule: Register_test

module Counter_test ();
  // WIDTH = 6
  logic en, clear, load, up;
  logic clock;
  logic [5:0] D, Q;

  Counter #(6) counti (.*);
  
  initial begin
    $monitor($time,, "Q=%d, D=%d, en=%d, clear=%b \
                      load=%b, up=%b",
             Q, D, en, clear, load, up);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
 
  initial begin
    en = 0;
    clear = 0;
    load = 0;
    up = 0;
    D = 6'b011101;
    @(posedge clock);
    en = 1;
    load = 1;
    @(posedge clock);
    load = 0;
    up = 1;
    @(posedge clock);
    @(posedge clock);
    clear = 1;
    @(posedge clock);
    clear = 0;
    @(posedge clock);
    load = 1;
    @(posedge clock);
    #1 $finish;
  end
    
endmodule: Counter_test
    
module ShiftRegister_test ();
  // WIDTH = 9
  logic en, load, left;
  logic clock;
  logic [8:0] D, Q;
  
  initial begin
    $monitor($time,, "Q=%d, D=%d, en=%d, load=%b, left=%b",
             Q, D, en, load, left);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  ShiftRegister #(9) shifti (.*);
  
  initial begin
    en = 0;
    left = 0;
    load = 0;
    // up = 0;
    D = 9'b00000001;
    @(posedge clock);
    en = 1;
    load = 1;
    left = 1;
    @(posedge clock);
    load = 0;
    @(posedge clock);
    @(posedge clock);
    left = 0;
    @(posedge clock);
    @(posedge clock);
    en = 0;
    @(posedge clock);
    @(posedge clock);
    load = 1;
    en = 1;
    left = 1;
    @(posedge clock);
    @(posedge clock);
    left = 0;
    @(posedge clock);
    #1 $finish;
  end
    
endmodule: ShiftRegister_test
    
module BarrelShiftRegister_test (); 
  // WIDTH = 5
  logic load, en, clock;
  logic [1:0] by;
  logic [4:0] D, Q;
  
  initial begin
    $monitor($time,, "Q=%d, D=%d, en=%d, load=%b, by=%d",
             Q, D, en, load, by);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  
  BarrelShiftRegister #(5) barri (.*);
  
  initial begin
    en = 0;
    by = 2'b01;
    load = 0;
    // up = 0;
    D = 5'b00001;
    @(posedge clock);
    en = 1;
    load = 1;
    @(posedge clock);
    load = 0;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    load = 1;
    @(posedge clock);
    en = 0;
    @(posedge clock);
    load = 0;
    by = 2'b10;
    en = 1;
    @(posedge clock);
    load = 1;
    @(posedge clock);
    @(posedge clock);
    load = 0;
    by = 2'b11;
    @(posedge clock);
    load = 1;
    @(posedge clock);
    by = 2'b00;
    @(posedge clock);
    @(posedge clock);
    #1 $finish;
  end
    
endmodule: BarrelShiftRegister_test
  
module Memory_test();
  logic re, we, clock;
  logic [7:0] Addr;
  tri [15:0] Data;
  logic en1, en2;
  
  Memory memi (.*);
  initial begin
    $monitor($time,, "Addr=%d, Data=%d, we=%b, re=%b, en1=%b",
             Addr, Data, we, re, en1);
    clock = 0;
    forever #5 clock = ~clock;
  end

  assign Data = (en1) ? 16'b1 : 'z;
 
  initial begin
    re = 0;
    we = 1;
    en1 = 1;
    Addr = 7'b1101101;
    @(posedge clock);
    @(posedge clock);
    en1 = 0;
    re = 1;
    we = 0;
    @(posedge clock);
    @(posedge clock);
    Addr = 7'b1000001;
    @(posedge clock);
    re = 0;
    we = 1;
    en1 = 1;
    // Data = 16'b1111111111111111;
    @(posedge clock);
    en1 = 0;
    re = 1;
    we = 0;
    @(posedge clock);
    Addr = 7'b1101101;
    @(posedge clock);
    #1 $finish;
  end
  
endmodule: Memory_test
    
    


    
    


  
  
