`default_nettype none

module fsm
  (input logic [2:0] fsm_notif, patternSignal,
   input logic end_seq, len_reached,
   input logic ready,
   input logic clock, reset_N,
   output logic en_pc, cl_pc, re_p, re_s, en_wc, cl_wc,
                cl_lc, en_lc, done, found_it, error,
                cl_tmp, en_tmp, ld_tmp, sel_tmp);
                
   enum logic [5:0] {start = 6'b000000, readLetPat = 6'b000001,
                     checkPattern = 6'b000010, compTwoFirst = 6'b000011,
                     compTwoSec = 6'b000100, compThreeFirst = 6'b000101,
                     compThreeSec = 6'b000110, compThreeThird = 6'b000111,
                     oneMatchUpTo = 6'b001001, incPatFinish = 6'b010111,
                     doneOneLeft = 6'b001010, doneTwoLeft = 6'b001011,
                     zeroMatchUpTo = 6'b011100, oneMatchAll = 6'b011101,
                     incLetPat = 6'b001100, endNoGood = 6'b001101, 
                     Error = 6'b001111, incPat21 = 6'b010000, 
                     incPat22 = 6'b010001, incPat31 = 6'b010010,
                     incPat32 = 6'b010011, incPat33 = 6'b010100,
                     incPatUpTo = 6'b010101, incPatAll = 6'b010110,
                     good = 6'b011110, incWordAll = 6'b011111, 
                     incWordZeroUp = 6'b001000, incWordOneUp = 6'b001110,
                     seenA2 = 6'b100001, seenC2 = 6'b100010, 
                     seenT2 = 6'b100011, seenG2 = 6'b100100,
                     seenAC3 = 6'b100101, seenAT3 = 6'b100110, 
                     seenAG3 = 6'b100111, seenCT3 = 6'b101000,
                     seenCG3 = 6'b101001, seenTG3 = 6'b101010,
                     seenA3 = 6'b101011, seenC3 = 6'b101100,
                     seenT3 = 6'b101101, seenG3 = 6'b101110,
                     check21 = 6'b111001, check31 = 6'b111010}
                     state, nextState;
                     
   // next state logic
   always_comb begin
     if (state != start && fsm_notif == 2)
       nextState = Error;
     else if (end_seq && fsm_notif != 7)
       nextState = endNoGood;
     unique case (state)
      start : nextState = (ready) ? readLetPat : start;
      readLetPat : nextState = checkPattern;
      checkPattern : begin
                       if (fsm_notif == 0)
                         nextState = incLetPat;
                       else if (fsm_notif == 1) // no matches
                         nextState = endNoGood;
                       else if (fsm_notif == 2)
                         nextState = Error;
                       else if (fsm_notif == 3)
                         nextState = incPat21;
                       else if (fsm_notif == 4)
                         nextState = incPat31;
                       else if (fsm_notif == 5)
                         nextState = incPatAll;
                       else if (fsm_notif == 6)
                         nextState = incPatUpTo;
                       else if (fsm_notif == 7)
                         nextState = good;
                     end
     validPatternCheck1: begin 
                          if (fsm_notif == 7 ||
                              fsm_notif ==                  
     compTwoFirst : begin
                     if (fsm_notif == 7) 
                       nextState = Error;
                     else if (fsm_notif == 0) 
                       nextState = doneOneLeft;
                     else
                       nextState = incPat22; //bad
                    end

     compTwoSec : begin
                     if (fsm_notif == 7) 
                       nextState = Error;
                     else if (fsm_notif == 0) 
                       nextState = incLetPat;
                     else
                       nextState = endNoGood; //bad
                   end

      compThreeFirst : begin
                         if (fsm_notif == 7) 
                           nextState = Error;
                         else if (fsm_notif == 0) 
                           nextState = doneTwoLeft;
                         else
                           nextState = incPat32; //bad
                       end

      compThreeSec : begin
                         if (fsm_notif == 7) 
                           nextState = Error;
                         else if (fsm_notif == 0) 
                           nextState = doneOneLeft;
                         else
                           nextState = incPat33; //bad
                       end

      compThreeThird : begin
                         if (fsm_notif == 7) 
                           nextState = Error;
                         else if (fsm_notif == 0) 
                           nextState = incLetPat;
                         else
                           nextState = endNoGood; //bad
                       end
                   
      incPatAll : nextState = oneMatchAll;              
      oneMatchAll : begin
                      if (fsm_notif == 0 && len_reached == 0)
                        nextState = incWordAll;
                      else if (len_reached == 1)
                        nextState = incPatFinish;
                      else if (fsm_notif == 1)
                        nextState = endNoGood; // bad
                    end

      incWordAll : nextState = oneMatchAll;
                    
      incPatUpTo : nextState = zeroMatchUpTo;
      zeroMatchUpTo : nextState = 
                    (fsm_notif == 0) ? oneMatchUpTo : endNoGood; // bad
      incWordZeroUp: nextState = oneMatchUpTo;
      oneMatchUpTo : begin 
                       if (fsm_notif == 0 && len_reached == 0)
                         nextState = incWordOneUp;
                       else if (len_reached == 1)
                         nextState = incPatFinish;
                     end
      incWordOneUp : nextState = oneMatchUpTo;
                                 
      incPatFinish: nextState = readLetPat;
                                 
      doneOneLeft : nextState = incLetPat;
      doneTwoLeft : nextState = doneOneLeft;
      
      incLetPat : nextState = readLetPat;
      
      incPat21 : nextState = check21;
      incPat22 : nextState = compTwoSec;
      incPat31 : nextState = check31;
      incPat32 : nextState = compThreeSec;
      incPat33 : nextState = compThreeThird;
      
      // A = 3'b000, C = 3'b001, T = 3'b010, G = 3'b011, 
      // other = 3'b111
      check21 : begin
                  if (patternSignal == 0) // A
                    nextState == seenA2;
                  else if (patternSignal == 1) // C
                    nextState == seenC2;
                  else if (patternSignal == 2) // T
                    nextState == seenT2;
                  else if (patternSignal == 3) // G
                    nextState == seenG2;
                  else
                    nextState == Error;
                end
                  
      check31 : begin
                  if (patternSignal == 0) // A
                    nextState == seenA3;
                  else if (patternSignal == 1) // C
                    nextState == seenC3;
                  else if (patternSignal == 2) // T
                    nextState == seenT3;
                  else if (patternSignal == 3) // G
                    nextState == seenG3;
                  else
                    nextState == Error;
                end
                
      seenA2 : begin
                  if (patternSignal == 0) // A
                    nextState == Error;
                  else if (patternSignal == 1) // C
                    nextState == compTwoFirst;
                  else if (patternSignal == 2) // T
                    nextState == compTwoFirst;
                  else if (patternSignal == 3) // G
                    nextState == compTwoFirst;
                  else
                    nextState == Error;
                end
                
      seenC2 : begin
                  if (patternSignal == 0) // A
                    nextState == compTwoFirst;
                  else if (patternSignal == 1) // C
                    nextState == Error;
                  else if (patternSignal == 2) // T
                    nextState == compTwoFirst;
                  else if (patternSignal == 3) // G
                    nextState == compTwoFirst;
                  else
                    nextState == Error;
                end
                
      seenT2 : begin
                  if (patternSignal == 0) // A
                    nextState == compTwoFirst;
                  else if (patternSignal == 1) // C
                    nextState == compTwoFirst;
                  else if (patternSignal == 2) // T
                    nextState == Error;
                  else if (patternSignal == 3) // G
                    nextState == compTwoFirst;
                  else
                    nextState == Error;
                end
                
      seenG2 : begin
                  if (patternSignal == 0) // A
                    nextState == compTwoFirst;
                  else if (patternSignal == 1) // C
                    nextState == compTwoFirst;
                  else if (patternSignal == 2) // T
                    nextState == compTwoFirst;
                  else if (patternSignal == 3) // G
                    nextState == Error;
                  else
                    nextState == Error;
                end

                
      seenA3 : begin
                  if (patternSignal == 0) // A
                    nextState == Error;
                  else if (patternSignal == 1) // C
                    nextState == seenAC3;
                  else if (patternSignal == 2) // T
                    nextState == seenAT3;
                  else if (patternSignal == 3) // G
                    nextState == seenAG3;
                  else
                    nextState == Error;
                end
                
      seenC3 : begin
                  if (patternSignal == 0) // A
                    nextState == seenAC3;
                  else if (patternSignal == 1) // C
                    nextState == Error;
                  else if (patternSignal == 2) // T
                    nextState == seenCT3;
                  else if (patternSignal == 3) // G
                    nextState == seenCG3;
                  else
                    nextState == Error;
                end
                
      seenT3 : begin
                  if (patternSignal == 0) // A
                    nextState == seenAT3;
                  else if (patternSignal == 1) // C
                    nextState == seenCT3;
                  else if (patternSignal == 2) // T
                    nextState == Error;
                  else if (patternSignal == 3) // G
                    nextState == seenTG3;
                  else
                    nextState == Error;
                end
                
      seenG3 : begin
                  if (patternSignal == 0) // A
                    nextState == seenAG3;
                  else if (patternSignal == 1) // C
                    nextState == seenCG3;
                  else if (patternSignal == 2) // T
                    nextState == seenTG3;
                  else if (patternSignal == 3) // G
                    nextState == Error;
                  else
                    nextState == Error;
                end
                
      seenAC3 : begin
                  if (patternSignal == 0) // A
                    nextState == Error;
                  else if (patternSignal == 1) // C
                    nextState == Error;
                  else if (patternSignal == 2) // T
                    nextState == compThreeFirst;
                  else if (patternSignal == 3) // G
                    nextState == compThreeFirst;
                  else
                    nextState == Error;
                end
                
      seenAT3 : begin
                  if (patternSignal == 0) // A
                    nextState == Error;
                  else if (patternSignal == 1) // C
                    nextState == compThreeFirst;
                  else if (patternSignal == 2) // T
                    nextState == Error;
                  else if (patternSignal == 3) // G
                    nextState == compThreeFirst;
                  else
                    nextState == Error;
                end
                
      seenAG3 : begin
                  if (patternSignal == 0) // A
                    nextState == Error;
                  else if (patternSignal == 1) // C
                    nextState == compThreeFirst;
                  else if (patternSignal == 2) // T
                    nextState == compThreeFirst;
                  else if (patternSignal == 3) // G
                    nextState == Error;
                  else
                    nextState == Error;
                end
                
      seenCT3 : begin
                  if (patternSignal == 0) // A
                    nextState == compThreeFirst;
                  else if (patternSignal == 1) // C
                    nextState == Error;
                  else if (patternSignal == 2) // T
                    nextState == Error;
                  else if (patternSignal == 3) // G
                    nextState == compThreeFirst;
                  else
                    nextState == Error;
                end
                
      seenCG3 : begin
                  if (patternSignal == 0) // A
                    nextState == compThreeFirst;
                  else if (patternSignal == 1) // C
                    nextState == Error;
                  else if (patternSignal == 2) // T
                    nextState == compThreeFirst;
                  else if (patternSignal == 3) // G
                    nextState == Error;
                  else
                    nextState == Error;
                end
                
      seenTG3 : begin
                  if (patternSignal == 0) // A
                    nextState == compThreeFirst;
                  else if (patternSignal == 1) // C
                    nextState == compThreeFirst;
                  else if (patternSignal == 2) // T
                    nextState == Error;
                  else if (patternSignal == 3) // G
                    nextState == Error;
                  else
                    nextState == Error;
                end
      
      endNoGood : nextState = (ready) ? readLetPat : endNoGood;
      Error : nextState = (ready) ? readLetPat : Error;
      good : nextState = (ready) ? readLetPat : good;
      default : nextState = start;
    endcase
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
    en_wc = 0;
    cl_wc = 0;
    en_pc = 0;
    cl_pc = 0;
    en_lc = 0;
    cl_lc = 0;
    en_tmp = 0;
    ld_tmp = 0;
    cl_tmp = 0;
    sel_tmp = 0;
    //en_fc = 0;
 
    if (state == start)
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
    
    else if (state == readLetPat)
      begin
        re_s = 1;
        re_p = 1;
        en_wc = 0;
        en_pc = 0;
        cl_wc = 0;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
     end
    
    else if (state == checkPattern ||
             state == compTwoFirst || 
             state == compTwoSec || 
             state == compThreeFirst || 
             state == compThreeSec ||
             start == compThreeThird)
      begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 0;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 1;
        re_s = 1;
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
      
    else if (state == incLetPat)
      begin
        en_wc = 1;
        cl_wc = 0;
        en_pc = 1;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 1;
        re_s = 1;
      end
  
    else if (state == endNoGood)
      begin
        en_wc = 1;
        cl_wc = 1;
        en_pc = 1;
        cl_pc = 1;
        en_lc = 1;
        cl_lc = 1;
        re_p = 0;
        re_s = 0;
        done = 1;
        found_it = 0;
        error = 0;
      end
        
    else if (state == Error)
      begin
        en_wc = 1;
        cl_wc = 1;
        en_pc = 1;
        cl_pc = 1;
        en_lc = 1;
        cl_lc = 1;
        re_p = 0;
        re_s = 0;
        done = 1;
        found_it = 0;
        error = 1;
      end
      
    else if (state == incPat21 ||
             state == incPat31)
      begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 1;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 1;
        re_s = 1;
        ld_tmp = 1;
        en_tmp = 1;
        sel_tmp = 1;
      end
        
    else if (state == incPat22 || 
             state == incPat32 ||
             state == incPat32 ||
             state == incPat33 ||  
             state == incPatFinish)
      begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 1;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 1;
        re_s = 1;
      end
      
    else if (state == incPatUpTo ||
             state == incPatAll)
      begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 1;
        cl_pc = 0;
        en_lc = 1;
        cl_lc = 1;
        re_p = 1;
        re_s = 1;
      end             
        
    else if (state == oneMatchAll ||
             state == zeroMatchUpTo ||
             state == oneMatchUpTo)
      begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 0;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 1;
        re_s = 1;
      end

    else if (state == incWordOneUp ||
             state == incWordZeroUp ||
             state == incWordAll)
      begin
        en_wc = 1;
        cl_wc = 0;
        en_pc = 0;
        cl_pc = 0;
        en_lc = 1;
        cl_lc = 0;
        re_p = 1;
        re_s = 1;
      end

    else if (state == good)
      begin
        en_wc = 1;
        cl_wc = 1;
        en_pc = 1;
        cl_pc = 1;
        en_lc = 1;
        cl_lc = 1;
        re_p = 0;
        re_s = 0;
        done = 1;
        found_it = 1;
        error = 0;
      end
        
    else if (state == check21 ||
             state == check31)
      begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 0;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 1;
        re_s = 0;
        en_tmp = 1;
        ld_tmp = 0;
        sel_tmp = 1;
      end
      
    else if (state == seenA2 || 
             state == seenA3 ||
             state == seenC2 ||
             state == seenC3 ||
             state == seenT2 ||
             state == seenT3 ||
             state == seenG2 ||
             state == seenG2 ||
             state == seenAC3 ||
             state == seenAG3 ||
             state == seenAT3 || 
             state == seenTG3 ||
             state == seenCG3 || 
             state == seenCT3)
       begin
        en_wc = 0;
        cl_wc = 0;
        en_pc = 0;
        cl_pc = 0;
        en_lc = 0;
        cl_lc = 0;
        re_p = 1;
        re_s = 0;
        en_tmp = 1;
        ld_tmp = 0;
        sel_tmp = 1;
      end
             
 
    end
        
endmodule: fsm
    
   
