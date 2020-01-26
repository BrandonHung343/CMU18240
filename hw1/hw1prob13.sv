`default_nettype none
module hw1prob13
  (input logic a, b, c,
   output logic f, f1, f2, f3, b_not);
   
   
   not #1 (b_not, b);
   and #6 (f1, b_not, a),
          (f2, a, f1);
   or  #5 (f3, f1, c);
   xor #9 (f, f2, f3, 1);
endmodule: hw1prob13

module testTable 
  (output logic a, b, c,
   input logic f, f1, f2, f3, b_not);

   initial begin
   $monitor($time,,
            "a = %b, b = %b, c = %b, b_not = %b, f1 = %b, f2 = %b, f3 = %b, f = %b",
            a, b, c, b_not, f1, f2, f3, f);
   a = 1;
   b = 1;
   c = 0;
 
   #12 a = 0;
       c = 1;
   #15 $finish;
   end
endmodule: testTable

module system();
  logic a, b, c, b_not, f, f1, f2, f3;
  hw1prob13 up (.a, .b, .c, .b_not, .f1, .f2, .f3, .f);
  testTable dawg (.a, .b, .c, .b_not, .f1, .f2, .f3, .f);
endmodule: system 

   
