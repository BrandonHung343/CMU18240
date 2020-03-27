`default_nettype none

module fsm
  (input logic [2:0] fsm_notif, 
   input logic end_seq, len_reached
   input logic ready,
   input logic clock, reset_N,
   output logic en_pc, cl_pc, re_p, re_s, en_wc, cl_wc,
                cl_lc, en_cl, done, found_it, error);
                
   enum logic [3:0] {start = 4'b0000, readLetPat = 4'b0001,
                     checkPattern = 4'b0010, compTwoFirst = 4'b0011,
                     compTwoSec = 4'b0100, compThreeFirst = 4'b0101,
                     compThreeSec = 4'b0110, compThreeThird = 4'b0111,
                     zeroMatchAll = 4'b0110, oneMatchAll = 4'b0111,
                     zeroMatchUpTo = 4'b1000, oneMatchUpTo = 4'b1001,
                     doneOneLeft = 4'b1010, doneTwoLeft = 4'b1011}
                     state, nextState;
                     
   // next state logic
   always_comb
    unique case (state)
      start : nextState = (ready) ? readLetPat : start;
      readLetPat : nextState = checkPattern;
      checkPattern : begin
                       if (fsm_notif == 0)
                         nextState = readLetPat;
                       else if (fsm_notif == 1) // no matches
                         nextState = start;
                       else if (fsm_notif == 3)
                         nextState = compTwoFirst;
                       else if (fsm_notif == 4)
                         nextState = compThreeFirst;
                       else if (fsm_notif == 5)
                         nextState = zeroMatchAll;
                       else if (fsm_notif == 6)
                         nextState = zeroMatchUpTo;
                       else if (fsm_notif == 7)
                         nextState = start;
                      end
      compTwoFirst : nextState = (fsm_notif == 0) ? doneOneLeft: compTwoSec;
      compTwoSec : nextState = (fsm_notif == 0) ? readLetPat : start; //bad
      compThreeFirst : nextState = 
                      (fsm_notif == 0) ? doneTwoLeft : compThreeSec;
      compThreeSec : nextState = 
                    (fsm_notif == 0) ? doneOneLeft : compThreeThird;
      compThreeThird : nextState = 
                    (fsm_notif == 0) ? readLetPat : start; // bad
      zeroMatchAll : nextState = 
                    (fsm_notif == 0) ? oneMatchAll : start // bad
      oneMatchAll : begin
                      if (fsm_notif == 0 && len_reached == 0)
                        nextState = oneMatchAll;
                      else if (fsm_notif == 1)
                        nextState = start; // bad or good
                      else if (len_reached == 1)
                        nextState = readLetPat;
                    end
      zeroMatchUpTo : nextState = 
                    (fsm_notif == 0) ? oneMatchUpTo : start; // bad
      oneMatchUpTo : nextState = (fsm_notif == 0 && len_reached == 0)
                                 ? oneMatchUpTo : readLetPat; // good
      doneOneLeft : nextState = readLetPat;
      doneTwoLeft : nextState = doneOneLeft;
    endcase

    always_comb begin
      if (fsm_notif == 2)
        nextState = start;
    end

   always_ff @(posedge clock)
    if (~reset_N)
      state <= start;
    else
      state <= nextState;
      
      
    // en_pc, cl_pc, re_p, re_s, 
    // en_wc, cl_wc, cl_lc, en_cl;
   always_comb begin
    done = 0;
    found_it = 0;
    error = 0;
    if (nextState == start && fsm_notif == 2)
      begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 0;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 0;
        re_s = 0;
        done = 1;
        found_it = 0;
        error = 1;
      end
    else if (nextState == start && fsm_notif == 1)
      begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 0;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 0;
        re_s = 0;
        done = 1;
        found_it = 0;
        error = 0;
      end
    else 
      begin // needs match at end
        if (state == start)
          begin
            if (ready == 1)
              begin
                en_wc = 1;
                en_pc = 1;
                cl_wc = 1;
                cl_pc = 1;
                en_lc = 1;
                cl_lc = 1;
                re_p = 0;
                re_s = 0;
              end
            else
              begin
                en_wc = 0;
                en_pc = 0;
                cl_wc = 0;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
              end
          end
        
        else if (state == readLetPat)
          begin
            re_s = 1;
            re_p = 1;
            cl_wc = 0;
            cl_pc = 0;
          end
        
        else if (state == checkPattern)
          begin
            if (nextState == readLetPat)
              begin // done, matched, increment word and pattern
                en_wc = 1;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
            else if (nextState == compTwoFirst || nextState == compThreeFirst)
              begin // found a /, increment pattern to figure out next word
                en_wc = 0;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 0;
              end
            else if (nextState == zeroMatchAll || nextState == zeroMatchUpTo)
              begin // same word, reset the letter counter and get the next pattern
                en_wc = 0; 
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 1;
                cl_lc = 1;
                re_p = 1;
                re_s = 1;
              end
            else if (nextState == start && fsm_notif == 7)
              begin // end of string, found 
                en_wc = 0;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
                done = 1;
                found_it = 1;
                error = 0;
              end
          end
              
        else if (state == compTwoFirst)
          begin
            if (nextState == doneOneLeft)
              begin // up the pattern counter, no reads
                en_wc = 0;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
              end
            else if (nextState == compTwoSec)
              begin // up the pattern counter and read
                en_wc = 0;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
          end
        
        else if (state == compTwoSec)
          begin
            if (nextState == start)
              begin // not found, reset
                en_wc = 0;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
                done = 1;
                found_it = 0;
                error = 0;
              end
            else if (nextState == readLetPat)
              begin // found, inc word and pattern
                en_wc = 1;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
          end
        
        else if (state == compThreeFirst)
          begin
            if (nextState == compThreeSec)
              begin // up pattern counter and read
                en_wc = 0;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
            else if (nextState == doneTwoLeft)
              begin // up the pattern counter, no reads
                en_wc = 0;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
              end
          end
        
        else if (state == compThreeSec)
          begin
            if (nextState == compThreeThird)
              begin // new word and pattern
                en_wc = 0;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
            else if (nextState == doneOneLeft)
              begin // up the pattern counter, no reads
                en_wc = 0;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
              end
          end
         
        else if (state == compThreeThird)
          begin
            if (nextState == start)
              begin // not found, reset
                en_wc = 0;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
                done = 1;
                found_it = 0;
                error = 0;
              end
            else if (nextState == readLetPat)
              begin // found, inc word and pattern
                en_wc = 1;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
          end
          
        else if (state == doneOneLeft || state == doneTwoLeft)
          begin // skip one pattern
            en_wc = 0;
            cl_wc = 0;
            en_pc = 1;
            cl_pc = 0;
            en_lc = 0;
            cl_lc = 0;
            re_p = 0;
            re_s = 0;
          end
          
        else if (state == zeroMatchAll)
          begin
            if (nextState == start)
              begin // didn't match the number
                en_wc = 0;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
                done = 1;
                found_it = 0;
                error = 0;
              end
            else if (nextState == oneMatchAll)
              begin // found at least one match, inc counter
                en_wc = 1;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 1;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
          end
          
        else if (state == oneMatchAll)
          begin
            if (nextState == start && fsm_notif == 1)
              begin // didn't match the numbers
                en_wc = 0;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
                done = 1;
                found_it = 0;
                error = 0;
              end
            else if (nextState == readLetPat)
              begin // matched enough numbers to work, read pat word
                en_wc = 1;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
            else if (nextState == oneMatchAll)
              begin // keep matching and reading seq, inc counter
                en_wc = 1;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 1;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
              
          end
          
        else if (state == zeroMatchUpTo)
          begin
            if (nextState == start)
              begin // first letter didn't match, bad
                en_wc = 0;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 0;
                re_s = 0;
                done = 1;
                found_it = 0;
                error =  0;
              end
            else if (nextState == oneMatchUpTo)
              begin // matched one
                en_wc = 1;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 1;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
          end
        
        else if (state == oneMatchUpTo)
          begin
            if (nextState == oneMatchUpTo)
              begin // another match
                en_wc = 1;
                cl_wc = 0;
                en_pc = 0;
                cl_pc = 0;
                en_lc = 1;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
            else if (nextState == readLetPat)
              begin // matched enough numbers to work, read pat word
                en_wc = 1;
                cl_wc = 0;
                en_pc = 1;
                cl_pc = 0;
                en_lc = 0;
                cl_lc = 0;
                re_p = 1;
                re_s = 1;
              end
          end
      end
  end
        
endmodule: fsm
    
   