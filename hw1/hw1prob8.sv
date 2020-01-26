`default_nettype none
module hw1prob7_test
  (input logic prime, div3,
   output logic a, b, c, d);
   
   initial begin
     $monitor($time,,
     "a = %b, b = %b, c = %b, d = %b, prime = %b, div3 = %b",
     a, b, c, d, prime, div3);
     a = 0;
     b = 0;
     c = 0;
     d = 0;
     #10 d = 1;
     #10 c = 1;
         d = 0;
     #10 d = 1;
     #10 b = 1;
         c = 0;
         d = 0;
     #10 d = 1;
     #10 d = 0;
         c = 1;
     #10 d = 1;
     #10 b = 0; 
         c = 0;
         d = 0;
         a = 1;
     #10 d = 1;
     #10 c = 1; 
         d = 0;
     #10 d = 1;
     #10 b = 1;
         c = 0;
         d = 0;
     #10 d = 1;
     #10 d = 0;
         c = 1;
     #10 d = 1; 
     #10 $finish;
   end
endmodule: hw1prob7_test
 
module system();
  logic a_in, b_in, c_in, d_in, p_out, div_out;
  hw1prob7 INST (.a(a_in), .b(b_in), .c(c_in), .d(d_in), .prime(p_out), .div3(div_out));
  hw1prob7_test (.a(a_in), .b(b_in), .c(c_in), .d(d_in), .prime(p_out), .div3(div_out));
endmodule: system
    
