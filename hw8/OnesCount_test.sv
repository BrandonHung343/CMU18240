`default_nettype none
module OnesCount_test();

  logic d_in_ready, clock, reset, dor;
  logic [29:0] d_in;
  logic [4:0] d_out;

  OnesCount ms (.*);

 
  initial begin
    $monitor($time,, "d_in_ready=%b, dor = %b, d_out=%d, lowbit=%b\
                      state=%b, sc=%d, din=%d, Cclr = %b", 
                      d_in_ready, dor, d_out, ms.lowBit, 
                      ms.control.cur_state, ms.SC, d_in, ms.Cclr_L);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
    d_in = 30'h3FFF;
    @(posedge clock);
    reset = 1;
    @(posedge clock);
    reset = 0;
    d_in_ready = 1;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    d_in_ready = 0;
    d_in = 30'h3FFFFFFF;
    @(posedge clock);
    d_in_ready = 1;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    #1 $finish;
  end
  
endmodule: OnesCount_test
