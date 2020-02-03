`default_nettype none 
module chipInterface
  (input logic SW[17:0],
   output logic LEDR[17:0]);

   multiplexer DUT (.a(SW[0]), .b(SW[1]), .sel(SW[17]), .f(LEDR[17]));
endmodule: chipInterface
