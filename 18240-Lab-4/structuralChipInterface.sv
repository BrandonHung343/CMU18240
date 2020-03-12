`default_nettype none

module structuralChipInterface (
  input logic [2:0] KEY,
  input logic [17:0] SW,
  output logic [6:0] HEX1, HEX0,
  output logic [7:0] LEDG);

  logic [3:0] creditVal;
  logic dropVal;

  myStructuralFSM dut(.clock(KEY[0]), .reset(SW[5]), .coin(SW[1:0]),
                    .credit(creditVal), .drop(dropVal));

  BCDtoSevenSegment muah(.bcd(creditVal), .segment(HEX0));
  // BCDtoSevenSegment muwe (.bcd({1'b0, dut.q2, dut.q1, dut.q0}), segment(HEX1));
  
  always_comb begin
    if (dropVal)
      LEDG = 8'b11111111;
    else
      LEDG = 8'b00000000;
  end
endmodule: structuralChipInterface
