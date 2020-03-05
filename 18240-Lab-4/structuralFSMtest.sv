module myFSM_test();
  logic [3:0] credit;
  logic [1:0] coin;
  logic drop, clock, reset;
  myStructuralFSM dut(.*);
  initial begin
    $monitor($time,, "state=%d, coin=%d, credit=%d, drop=%b",
            {dut.q2, dut.q1, dut.q0}, coin, credit, drop);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
  // initialize values
    coin <= 'b00; reset <= 1;
  // reset is synchronous, so must wait for a clock edge
    @(posedge clock); 
    @(posedge clock); 
  // One edge is enough, but what the heck
    @(posedge clock);
  // release reset and start the vector 01 10 00 11
    reset <= 0; // changes "after" the clock edge
    coin <= 2'b01;
    @(posedge clock); // 1 credit
    @(posedge clock); // 2 credit
    @(posedge clock); // 3 credit
    @(posedge clock); // 0 credit Soda
    @(posedge clock); // 0 init
    @(posedge clock); // 1 credit
    @(posedge clock); // 2 credit
    coin <= 2'b10;
    @(posedge clock); // 1 cred Soda
    @(posedge clock); // 1 cred 
    coin <= 2'b11;
    @(posedge clock); // 2 cred Soda
    @(posedge clock); // 2 cred
    coin <= 2'b11;
    @(posedge clock); // 3 cred Soda
    @(posedge clock); // 3 cred
    coin <= 2'b11;
    @(posedge clock); // 0 cred Soda
    @(posedge clock); // 0 cred
    coin = 2'b10;
    @(posedge clock); // 3 cred
    coin = 2'b10;
    @(posedge clock); // 2 cred Soda
    @(posedge clock); // 2 cred
    // begin cycle 2
    coin <= 2'b00;
    @(posedge clock); // 2 cred
    coin <= 2'b01;
    @(posedge clock); // 3 cred
    coin <= 2'b00;
    @(posedge clock); // 3 cred
    @(posedge clock);
    reset <= 1;
    @(posedge clock); // init
    reset <= 0;
    @(posedge clock); // init
    coin <= 2'b11;
    @(posedge clock); // 1 cred Soda
    @(posedge clock); // 1 cred
    coin <= 2'b00;
    @(posedge clock); // 1 cred
    coin <= 2'b10;
    @(posedge clock);
    #1 $finish;
  end
endmodule: myFSM_test
