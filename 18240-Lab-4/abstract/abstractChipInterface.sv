`default_nettype none

module abstractChipInterface (
  input logic [2:0] KEY,
  input logic [17:0] SW,
  output logic [6:0] HEX0,
  output logic [7:0] LEDG);

  logic [3:0] creditVal;
  logic dropVal;

  myAbstractFSM dut(.clock(KEY[0]), .reset_N(SW[5]), .coin(SW[1:0]),
                    .credit(creditVal), .drop(dropVal));

  BCDtoSevenSegment muah(.bcd(creditVal), .segment(HEX0));

  always_comb begin
    if (dropVal)
      LEDG = 8'b11111111;
    else
      LEDG = 8'b00000000;
  end
endmodule: abstractChipInterface
