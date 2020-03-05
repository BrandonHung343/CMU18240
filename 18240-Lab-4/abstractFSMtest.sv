module myAFSM_test();
  logic [3:0] credit;
  logic [1:0] coin;
  logic drop, clock, reset_N;
  myAbstractFSM dut(.*);
  initial begin
    $monitor($time,, "state=%s, coin=%d, credit=%d, drop=%b",
            dut.currState.name, coin, credit, drop);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
  // initialize values
    coin <= 2'b00; reset_N <= 0;
  // reset is synchronous, so must wait for a clock edge
    @(posedge clock); 
    @(posedge clock); 
  // One edge is enough, but what the heck
    @(posedge clock);
  // release reset and start the vector 01 10 00 11
    reset_N <= 1; // changes "after" the clock edge
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
    reset_N <= 0;
    @(posedge clock); // init
    reset_N <= 1;
    @(posedge clock); // init
    coin <= 2'b11;
    @(posedge clock); // 1 cred Soda
    @(posedge clock); // 1 cred
    coin <= 2'b00;
    @(posedge clock); // 1 cred
    @(posedge clock);
    
    #1 $finish;
  end
endmodule: myAFSM_test
