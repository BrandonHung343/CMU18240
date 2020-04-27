`default_nettype none

module ChipInterface
 (output logic [6:0] HEX7, HEX6, HEX5, HEX4, 
  output logic [17:0] LEDR,
 input logic [17:0] SW);
 
 logic [2:0] coin1, coin2;
 logic [3:0] leftover, hex5val, hex4val;
 logic always_on, hex5_on;
 
 assign always_on = 1;
 
 make_change asdsad (.Cost(SW[17:14]), .Paid(SW[3:0]), .Pentagons(SW[13:12]), 
 .Triangles(SW[11:10]), .Circles(SW[9:8]), 
  .FirstCoin(coin1), .SecondCoin(coin2), 
 .ExactAmount(LEDR[17]), .NotEnoughChange(LEDR[16]),
 .CoughUpMore(LEDR[15]), .Remaining(leftover));
 
 SevenSegmentDigit seg1 (.bcd(coin1), .blank(always_on), .segment(HEX7));
 SevenSegmentDigit seg2 (.bcd(coin2), .blank(always_on), .segment(HEX6));
 
 always_comb begin
 if (leftover < 10)
 begin
 hex5_on = 0;
 hex4val = leftover;
 hex5val = 0;
 end
 else
 begin
 hex5_on = 1;
 hex4val = leftover - 10;
 hex5val = 1;
 end
 end
 
 SevenSegmentDigit seg3 (.bcd(hex5val), .blank(hex5_on), .segment(HEX5));
 SevenSegmentDigit seg4 (.bcd(hex4val), .blank(always_on), .segment(HEX4));
 
endmodule: ChipInterface

 
 
 
 
 
