`default_nettype none

module lab5p1_test ();
  logic ready,
  logic [15:0] dna_length,
  logic clock, reset_N,
  logic done, found_it, error;
  
  lab5p1 psm(.*);
  initial begin
    $monitor($time,, "ready=%b, reset_N = %b, done=%b, error=%b\
                      state=%b, found_it = %b, dna_length = %d", 
                      ready, reset_N, done, error, psm.FSM.state, found_it, dna_length);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
    reset_N = 0;
    dna_length = 4;
    ready = 0;
    @(posedge clock);
    reset_N = 1;
    @(posedge clock);
    ready = 1;
    wait(done);
    $finish;
   end
    
endmodule: lab5p1_test
    