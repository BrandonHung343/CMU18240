`default_nettype none

module hw1prob7
  (input logic a, b, c, d,
   output logic prime, div3);

  logic p1, p2, p3, p4, t1, t2, t3, t4, 
        t5, t6, a_not, b_not, c_not, d_not;

  not (a_not, a),
      (b_not, b),
      (c_not, c),
      (d_not, d);

  and (t1, a_not, b_not, c, d),
      (t2, a_not, b, c, d_not),
      (t3, a, b_not, c_not, d),
      (t4, a, b, c_not, d_not),
      (t5, a, b, c, d),
      (p2, a_not, b_not, c),
      (p3, a_not, b, d),
      (p4, d, p1);

  or (prime, p2, p3, p4),
     (div3, t1, t2, t6),
     (t6, t3, t4, t5);

  xor (p1, b, c);

endmodule: hw1prob7

      
  
