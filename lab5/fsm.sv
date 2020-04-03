`default_nettype none

module fsm
  (input logic [2:0] fsm_notif, 
   input logic end_seq, len_reached,
   input logic ready,
   input logic clock, reset_N,
   output logic en_pc, cl_pc, re_p, re_s, en_wc, cl_wc,
                cl_lc, en_lc, done, found_it, error);
                
   enum logic [4:0] {start = 5'b00000, readLetPat = 5'b00001,
                     checkPattern = 5'b00010, compTwoFirst = 5'b00011,
                     compTwoSec = 5'b00100, compThreeFirst = 5'b00101,
                     compThreeSec = 5'b00110, compThreeThird = 5'b00111,
                     oneMatchUpTo = 5'b01001, incPatFinish = 5'b10111,
                     doneOneLeft = 5'b01010, doneTwoLeft = 5'b01011,
                     zeroMatchUpTo = 5'b11100, oneMatchAll = 5'b11101,
                     incLetPat = 5'b01100, endNoGood = 5'b01101, 
                     Error = 5'b01111, incPat21 = 5'b10000, 
                     incPat22 = 5'b10001, incPat31 = 5'b10010,
                     incPat32 = 5'b10011, incPat33 = 5'b10100,
                     incPatUpTo = 5'b10101, incPatAll = 5'b10110,
                     good = 5'b11110, incWordAll = 5'b11111, 
                     incWordZeroUp = 5'b01000, incWordOneUp = 5'b01110}
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
      
      incPat21 : nextState = compTwoFirst;
      incPat22 : nextState = compTwoSec;
      incPat31 : nextState = compThreeFirst;
      incPat32 : nextState = compThreeSec;
      incPat33 : nextState = compThreeThird;
      
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
             state == incPat22 || 
             state == incPat31 ||
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
        
 
    end
        
endmodule: fsm
    
   
