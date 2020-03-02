`default_nettype none

module hw6prob4 ();
   logic Input, Prob1, clock, reset_n;

   hw5prob1 dut (.Input, .clock, .reset_n, .Prob1);
  
   initial begin 
     $monitor ($stime,, "Prob1 = %b, Input = %b, state = %s",
               Prob1, Input, dut.state.name);
     clock = 0;
     reset_n = 0;
     reset_n <= 1;
     forever #5 clock = ~clock;
  end

  initial begin
     Input <= 1;
     @ (posedge clock);
     Input <= 0;
     @ (posedge clock);
     @ (posedge clock);
     Input <= 1;
     @ (posedge clock);
     Input <= 0;
     @ (posedge clock);
     @ (posedge clock);
     Input <= 1;
     @ (posedge clock);
     Input <= 0;
     @ (posedge clock);
     Input <= 1;
     @ (posedge clock);
     @ (posedge clock);
     $finish;
  end

endmodule: hw6prob4 

