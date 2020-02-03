module Tutorial
  (output logic f,
   input logic a, b, c, d);
  
   logic f1, f2;
  
   nand g1(f, f1, f2),
        g2(f1, a, b),
        g3(f2, c, d);
 
endmodule: Tutorial
