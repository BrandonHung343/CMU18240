`default_nettype none
module hw1prob12
  (input logic a, b, c,
   input logic loc1, loc0,
   output logic dir1, dir0);
  
   logic d11, d12, d13, d14, d15, d16, d17, d01, d02, d03, 
         d04, d05, d06, n_b, n_c, n_loc1, n_loc0;

   not    (n_loc1, loc1),
          (n_loc0, loc0),
          (dir1, loc0),
          (n_b, b),
          (n_c, c);
          
   and    (d01, loc1, loc0),
          (d02, loc0, n_b),
          (d03, n_c, n_loc1, loc0),
          (d04, a, c, loc0),
          (d05, a, b, c, loc1);
  
   or     (d06, d01, d02, d03),
          (dir0, d04, d05, d06);
endmodule: hw1prob12 

module circTester
  (input logic dir1, dir0,
   output logic a, b, c, loc1, loc0);

   initial begin
     $monitor($time,, 
              "a = %b, b = %b, c = %b, loc1 = %b loc0 = %b, dir1 = %b, dir0 = %b",
             a, b, c, loc1, loc0, dir1, dir0);
     for (int i = 0; i < 32; i = i + 1) begin
       {a, b, c, loc1, loc0} = i;
       #10;
     end
   end
endmodule: circTester

module system();
  logic a_in, b_in, c_in, l1_in, l0_in, d1_out, d0_out;
  hw1prob12 INST (.a(a_in), .b(b_in), .c(c_in), .loc1(l1_in), .loc0(l0_in), .dir1(d1_out), .dir0(d0_out));
  circTester MEEP (.a(a_in), .b(b_in), .c(c_in), .loc1(l1_in), .loc0(l0_in), .dir1(d1_out), .dir0(d0_out));
endmodule: system
