`default_nettype none

module mult_test ();
  logic start, done;
  logic clk, reset_L;
  logic [7:0] A, B;
<<<<<<< HEAD
  logic [15:0] out;
=======
>>>>>>> 5be47a890d8ba216ef5136bcbcd8a7163ff006fe
  
  mult_dp mdp (.*);
  
  initial begin
<<<<<<< HEAD
    $monitor($time,, "state=%s, A=%b, B=%b, Product=%h,\
                      done=%b, flipA=%b, flipB=%b, doneAdd=%b,\n\
                      addA=%b, clrOut=%b, ld=%b, enShift=%b,\
                      lsb1=%b, shiftedB=%b, shiftedA=%b, start=%b \n\
                      flipEnd = %b",
                      mdp.dut.state.name, A, B, mdp.out, mdp.done, 
                      mdp.flipA, mdp.flipB, mdp.doneAdd, mdp.addA,
                      mdp.clrOut, mdp.ld, mdp.enShift, mdp.lsb1, 
                      mdp.shiftedB, mdp.shiftedA, start, mdp.flipEnd,
                      );
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    A = 8'h80;
    B = 8'hFF;
    start = 0;
    reset_L = 0;
    @(posedge clk);
    reset_L = 1;
    @(posedge clk);
    @(posedge clk);
    start = 1;
    @(posedge clk);
    @(posedge clk);
    wait(done);
    start = 0;
    @(posedge clk);
    $finish;
  end
endmodule: mult_test

  
=======
    $monitor($time,, "state=%s, A=%b, B=%b, Product=%b,\
                      done=%b, flipA=%b, flipB=%b, doneAdd=%b,\n\
                      addA=%b, clrOut=%b, ld=%b, enShift=%b,\
                      lsb1=%b, shiftedB=%b, shiftedA=%b, ",
                      mdp.dut.state.name, A, B, mdp.out, mdp.done, 
                      mdp.flipA, mdp.flipB, mdp.doneAdd, mdp.addA,
                      mdp.clrOut, mdp.ld, mdp.enShift, mdp.lsb1, 
                      mdp.shiftedB, mdp.shiftedA);
    clk = 0;
    forever #5 clk = ~clk;
  end
>>>>>>> 5be47a890d8ba216ef5136bcbcd8a7163ff006fe
  
  
  
  
  
  
  
<<<<<<< HEAD
=======
  
>>>>>>> 5be47a890d8ba216ef5136bcbcd8a7163ff006fe
