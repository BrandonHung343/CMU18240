`default_nettype none

module system ();
  
  logic [7:0] A;
  logic [2:0] Yif;
  logic [2:0] Ycase;
  logic [2:0] Ytern;
  logic validIf;
  logic validCase;
  logic validTern;

  hw2prob7_if i (.A, .Y(Yif), .valid(validIf));
  hw2prob7_case j (.A, .Y(Ycase), .valid(validCase));
  hw2prob7_tern k (.A, .Y(Ytern), .valid(validTern));

  initial begin
    $monitor($time,,
     "a7 = %b, a6 = %b, a5 = %b, a4 = %b, a3 = %b, a2 = %b, a1 = %b, a0 = %b\n \
      If: y2if = %b, y1if = %b, y0if = %b, validIf = %b\n \
      Case: y2case = %b, y1case = %b,y0case = %b, validCase = %b\n \
      Tern: y2tern = %b, y1tern = %b, y0tern = %b, validTern = %b", 
      A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0], Yif[2], Yif[1], Yif[0], validIf,
      Ycase[2], Ycase[1], Ycase[0], validCase, 
      Ytern[2], Ytern[1], Ytern[0], validTern);

     #5 {A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0]} = 0;
     #5 A[7] = 1;
     #5 A[3] = 1;
     #5 A[6] = 1;
        A[7] = 0;
        A[3] = 0;
     #5 A[5] = 1;
     #5 A[6] = 0;
     #5 A[4] = 1;
     #5 A[5] = 0;
     #5 A[3] = 1;
     #5 A[4] = 0;
     #5 A[2] = 1;
     #5 A[3] = 0;
     #5 A[1] = 1;
     #5 A[2] = 0;
     #5 A[0] = 1;
     #5 A[1] = 0;
     #5 A[0] = 0;
   end
 

endmodule: system
