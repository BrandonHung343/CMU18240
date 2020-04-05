`default_nettype none

module lab5p3_test ();
  logic ready;
  logic [15:0] dna_length, dna_start;
  logic [11:0] pattern_start;
  logic clock, reset_N;
  logic done, found_it, error;
  logic [15:0] found_location;

  initial begin
    $monitor($time,, "ready=%b, reset_N = %b, done=%b, error=%b\
                      state=%s, found_it=%b, dna_length=%d\n\
                      nuc=%b, pat=%h, wordCount=%d, wordEq=%b\
                      fsm_notif=%b, nextState=%s, patCount=%d\n\
                      en_wc=%b, en_pc=%b, ld_pc=%b, ld_wc=%b\n\
                      ld_fc=%b, next_start=%d, dna_start=%d,\
                      start_sel=%b, found_loc=%d, muxedStart=%b\
                      en_fc=%b, checkAhead=%d, ld_tmp=%b, en_tmp = %b\
                      muxedPatCount=%d, patternSignal=%d", 
                      ready, reset_N, done, error, psm.FSM.state.name, 
                      found_it, dna_length, psm.nuc, psm.pattern, 
                      psm.WordCount, psm.seqEq, psm.fsm_notif,
                      psm.FSM.nextState.name, psm.PatternCount,
                      psm.en_wc, psm.en_pc, psm.ld_pc, psm.ld_wc,
                      psm.ld_fc, psm.next_start, dna_start, 
                      psm.start_sel, found_location, psm.MuxedStart,
                      psm.en_fc, psm.checkAhead, psm.ld_tmp, psm.en_tmp,
                      psm.MuxedPatCount, psm.patternSignal);
    clock = 0;
    forever #5 clock = ~clock;
  end
  
  initial begin
    reset_N = 0;
    dna_start = 0;
    pattern_start = 0;
    dna_length = 4;
    ready = 0;
    @(posedge clock);
    reset_N = 1;
    @(posedge clock);
    ready = 1;
    @(posedge clock);
    ready = 0;
    wait(done);
    @(posedge clock);
//    wait(done);
//    @(posedge clock);
//    wait(done);
//    @(posedge clock);
//    wait(done);
//    @(posedge clock);
//    wait(done);
//    @(posedge clock);
//    wait(done)
//    @(posedge clock);
//    wait(done);
//    @(posedge clock);
    $finish;
   end
    
endmodule: lab5p3_test
    
