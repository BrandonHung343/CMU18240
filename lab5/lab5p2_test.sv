`default_nettype none

module lab5p2_test ();
  logic ready;
  logic [15:0] dna_length, dna_start;
  logic [11:0] pattern_start;
  logic clock, reset_N;
  logic done, found_it, error;
  
  lab5p2 psm(.*);
  initial begin
    $monitor($time,, "ready=%b, reset_N = %b, done=%b, error=%b\
                      state=%s, found_it=%b, dna_length=%d \n\
                      nuc=%b, pat=%h, wordCount=%d, wordEq=%b\
                      fsm_notif=%b, nextState=%s, muxedpatCount=%d\n\
                      en_wc=%b, en_pc=%b, cl_wc=%b, cl_pc=%b\
                      re_p=%b, re_s=%b, en_tmp=%b, ld_tmp=%b\n\
                      muxedPatCount=%d, checkAhead=%d\
                      patternSignal=%d, ld_wc=%b, ld_pc=%b\
                      patCount=%d", 
                      ready, reset_N, done, error, psm.FSM.state.name, 
                      found_it, dna_length, psm.nuc, psm.pattern, 
                      psm.WordCount, psm.seqEq, psm.fsm_notif,
                      psm.FSM.nextState.name, psm.MuxedPat,
                      psm.en_wc, psm.en_pc, psm.cl_wc, psm.cl_pc,
                      psm.re_p, psm.re_s, psm.en_tmp, psm.ld_tmp,
                      psm.MuxedPatCount, psm.checkPatAhead, 
                      psm.patternSignal, psm.ld_wc, psm.ld_pc,
                      psm.PatternCount);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
    reset_N = 0;
    dna_start = 0;
    pattern_start = 189;
    dna_length = 20;
    ready = 0;
    @(posedge clock);
    reset_N = 1;
    @(posedge clock);
    ready = 1;
    @(posedge clock);
    ready = 0;
    wait(done);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    $finish;
   end
    
endmodule: lab5p2_test
    
