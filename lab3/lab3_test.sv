`default_nettype none

module test_change();
  logic [3:0] cost, paid;
  logic [1:0] pentagons, triangles, circles;
  logic [2:0] first_coin, second_coin;
  logic exact_amount, not_enough_change, cough_up_more;
  logic [3:0] remaining;

  make_change DUT(.Cost(cost), .Paid(paid), .Pentagons(pentagons), .Triangles(triangles), .Circles(circles), .FirstCoin(first_coin), .SecondCoin(second_coin), 
   .ExactAmount(exact_amount), .NotEnoughChange(not_enough_change), .CoughUpMore(cough_up_more), .Remaining(remaining));
  
  initial begin
  $monitor("cost = %b, paid = %b, pentagons = %b, triangles = %b, circles = %b   --    first_coin = %b, second_coin = %b, exact_amount = %b, not_enough_change = %b, cough_up_more = %b, remaining = %b\n",
    cost, paid, pentagons, triangles, circles, first_coin, second_coin, exact_amount, not_enough_change, cough_up_more, remaining);
  
  cost = 4'b0000;
  paid = 4'b0111;
  pentagons = 2'b10;
  triangles = 2'b11;
  circles = 2'b11;
  
  #10 cost = 4'b0011;
    paid = 4'b1010;
    pentagons = 2'b00;
    triangles = 2'b00;
    circles = 2'b01;
  #10 cost = 4'b0101;
    paid = 4'b1010;
    pentagons = 2'b00;
    triangles = 2'b10;
    circles = 2'b00;
  #10 cost = 4'b0101;
    paid = 4'b1010;
    pentagons = 2'b01;
    triangles = 2'b10;
    circles = 2'b11;
  #10 cost = 4'b0101;
    paid = 4'b1010;
    pentagons = 2'b00;
    triangles = 2'b01;
    circles = 2'b11;
  #10 cost = 4'b1111;
    paid = 4'b0111;
    pentagons = 2'b00;
    triangles = 2'b00;
    circles = 2'b00;
  #10 cost = 4'b0010;
    paid = 4'b0100;
    pentagons = 2'b11;
    triangles = 2'b11;
    circles = 2'b11;
  #10 cost = 4'b0100;
    paid = 4'b0100;
    pentagons = 2'b10;
    triangles = 2'b10;
    circles = 2'b00;
  #10 cost = 4'b0100;
    paid = 4'b0001;
    pentagons = 2'b10;
    triangles = 2'b11;
    circles = 2'b11;
  #10 cost = 4'b0000;
    paid = 4'b0000;
    pentagons = 2'b00;
    triangles = 2'b01;
    circles = 2'b00;
  #10 cost = 4'b0010;
    paid = 4'b1000;
    pentagons = 2'b11;
    triangles = 2'b11;
    circles = 2'b11;
  #10 cost = 4'b0001;
    paid = 4'b0111;
    pentagons = 2'b00;
    triangles = 2'b10;
    circles = 2'b00;
  #10 cost = 4'b0011;
    paid = 4'b1011;
    pentagons = 2'b01;
    triangles = 2'b00;
    circles = 2'b11;
  #10 cost = 4'b0001;
    paid = 4'b1111;
    pentagons = 2'b11;
    triangles = 2'b11;
    circles = 2'b11;
  #10 cost = 4'b0011;
    paid = 4'b1010;
    pentagons = 2'b01;
    triangles = 2'b11;
    circles = 2'b00;
  #10 cost = 4'b1111;
    paid = 4'b1111;
    pentagons = 2'b00;
    triangles = 2'b00;
    circles = 2'b00;
  #10 $finish;
  end

endmodule: test_change



