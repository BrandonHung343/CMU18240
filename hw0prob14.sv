`default_nettype none
module hw0prob14
  (input logic a, 
   input logic b, 
   input logic c,
   output logic p );
   logic n_b, f1;
   not g1(n_b, b);
   and #2 g2(f1, a, n_b);
   or #3 g3(p, c, f1);
endmodule: hw0prob14
