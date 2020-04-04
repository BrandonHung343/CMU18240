`default_nettype none

module lab5p2 
  (input logic ready,
   input logic [15:0] dna_length,
   input logic clock, reset_N,
   input logic [15:0] dna_start,
   input logic [11:0] pattern_start,
   output logic done, found_it, error);
   
   logic [7:0] pattern;
   logic [1:0] nuc;
   logic [2:0] fsm_notif;
   logic [3:0] how_much;
   logic end_seq, len_reached, en_pc, cl_pc, re_p, 
         re_s, en_wc, cl_wc, cl_lc, en_lc, ld_wc, ld_pc;
   logic seqLt, seqEq, seqGt;
   logic lenLt, lenEq, lenGt;
   logic [15:0] WordCount, MuxedWord;
   logic [11:0] PatternCount, MuxedPat;
   logic [3:0] LetterCount;
   logic [2:0] patternSignal;
   logic [11:0] checkPatAhead, MuxedPatCount, regCheckAhead;
   logic sel_tmp, ld_tmp, cl_tmp, en_tmp;
   
   fsm2 FSM (.*);
   
   MemoryNucs Seq_Mem (.re(re_s), .we(1'b0), .clock,
                                      .Addr(WordCount), .Data(nuc));
   MemoryPattern Pattern_Mem (.re(re_p), .we(1'b0), .clock,
                      .Addr(PatternCount), .Data(pattern));
                      
   PatternChecker PatCheck (.*);
   
   Counter #(16) WordCounter (.en(en_wc), .clear(cl_wc), .load(ld_wc), 
                              .up(1'b1), .clock, 
                              .D(MuxedWord), .Q(WordCount));
                              
   Counter #(12) PatternCounter (.en(en_pc), .clear(cl_pc), .load(ld_pc),
                                 .up(1'b1), .clock,
                                 .D(MuxedPat), .Q(PatternCount));
   
   Counter #(4) LetterCounter (.en(en_lc), .clear(cl_lc), .load(1'b0),
                               .up(1'b1), .clock, 
                               .D(LetterCount), .Q(LetterCount));
                               
   Counter #(12) CheckAheadCounter (.en(en_tmp), .clear(cl_tmp), .load(ld_tmp),
                                    .up(1'b1), .clock, .D(regCheckAhead), 
                                    .Q(checkPatAhead));
   
   MagComp #(16) WordComp (.A(WordCount), .B(dna_length), 
                           .AltB(seqLt), .AeqB(seqEq), .AgtB(seqGt));
   
   MagComp #(4) LetterComp (.A(LetterCount), .B(how_much),   
                            .AltB(lenLt), .AeqB(lenEq), .AgtB(lenGt));

   Mux2to1 #(16) WordMux (.S(ld_wc), .I0(WordCount), 
                          .I1(dna_start), .Y(MuxedWord));  
                          
   
   
   Mux2to1 #(12) PatMux (.S(ld_pc), .I0(MuxedPatCount), 
                         .I1(pattern_start), .Y(MuxedPat));
                         
   Mux2to1 #(12) PatCountLoadMux (.S(ld_tmp), .I0(checkPatAhead), .I1(PatternCount),
                              .Y(regCheckAhead));
                              
   Mux2to1 #(12) PatCountMux (.S(sel_tmp), .I0(PatternCount), .I1(checkPatAhead),
                              .Y(MuxedPatCount));
                 
   
   assign len_reached = (lenEq) ? 1'b1 : 1'b0;
   assign end_seq = (seqEq) ? 1'b1 : 1'b0;

endmodule: lab5p2
    
  
  
