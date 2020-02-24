`default_nettype none

module system ();
  logic clock, Input, reset_n;
  logic out1, out2;

  hw5prob3_test (.clock, .Input, .reset_n)
  hw5prob1 a (.Prob1(out1), .clock, .Input, .reset_n)
  hw5prob2 b (.Prob2(out2), .clock, .Input, .reset_n)
endmodule: system

module hw5prob3_test
  (output logic clock, Input, reset_n);
  
  initial begin
    reset_n = 0;
    reset_n <= 1;
    clock = 0;
    forever #10 clock = ~clock;
  end
  
  initial begin
        Input = 0;
    #10 Input = 1;
    #20 Input = 0;
    #10 Input = 1;
    #10 Input = 0;
    #20 Input = 1;
    #10 Input = 0;
    #10 Input = 1;
    #10 Input = 0;
    #10 Input = 1;
    #15 $finish();
  end
  
endmodule : hw5prob3_test
    

