`default_nettype none
module hw7prob5_test ();
  logic clock, reset_L;
  logic inputB, inputC, done, start;
  logic [7:0] inputA, value;
  
  prob5FSMD dut (.*);
  
  initial begin
    $monitor($time,, "state=%s, inputA=%d, inputB=%b, inputC=%b, value=%d,\
                      done=%b, reset_L=%b, start=%b, en=%b", dut.dut.Q.name, 
                      inputA, inputB, inputC, value, done, reset_L, 
                      start, dut.en);
    clock = 0;
    forever #5 clock = ~clock;
  end

  initial begin
    reset_L = 0;
    // en = 0;
    start = 0;
    inputB = 1;
    inputC = 1;
    inputA = 8'b00001000;
    @(posedge clock);
    reset_L = 1;
    @(posedge clock);
    start = 1;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    inputA = 8'b00000001;
    @(posedge clock);
    @(posedge clock);
    inputB = 0;
    @(posedge clock);
    start = 0;
    inputC = 0;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    reset_L = 0;
    @(posedge clock);
    start = 1;
    @(posedge clock);
    #1 $finish;
  end

endmodule: hw7prob5_test
    
    
    

