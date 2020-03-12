module MagCompTest ();
  logic [5:0] A1, B1;
  logic AltB, AgtB, AeqB;
  
  MagComp five (.A(A1), .B(B1), .AltB, .AgtB, .AeqB);
  
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
endmodule: MagCompTest