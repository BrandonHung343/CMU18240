`default_nettype none

module hw1prob10
  (input logic a, b,
   output logic f);

   nand #2 (f, a, b);

endmodule

module testNand
  (input logic f, 
   output logic a, b);

  initial begin
  $monitor($time,,
           "a = %b, b = %b, output = %b",
            a, b, f);
  a = 0;
  b = 0;
  #1
  a = 1;
  b = 1;
  #1
  a = 0;
  b = 0;
  end

endmodule: testNand

module system();
  logic a, b, f;
  hw1prob10 greg (.a, .b, .f);
  testNand erin (.a, .b, .f);
endmodule: system
