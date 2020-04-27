`default_nettype none

module GetRemaining
 (input logic [3:0] Remaining,
  input logic CoughUpMore,
  output logic NotEnoughChange);
  
  always_comb begin
  NotEnoughChange = 1'b0;
  if (~CoughUpMore)
    begin  
    if (Remaining > 1'b0)
      NotEnoughChange = 1'b1;
    end 
  end       
endmodule: GetRemaining

module CalcCoin
 (input logic [3:0] FirstChange, 
  input logic [1:0] Pentagons, Triangles, Circles,
  input logic CoughUpMore,
  output logic [2:0] FirstCoin,
  output logic [1:0] PentLeft, TriLeft, CircLeft);
 
  always_comb begin
  PentLeft = Pentagons;
  TriLeft = Triangles;
  CircLeft = Circles;
  FirstCoin = 3'd000;
  if (~CoughUpMore)
    begin
    if (FirstChange >= 3'd5)
begin
if (Pentagons > 0)
 begin
FirstCoin = 3'b101;
PentLeft = Pentagons - 1;
 end
else if (Triangles > 0)
 begin
FirstCoin = 3'b011;
TriLeft = Triangles - 1;
 end
else if (Circles > 0)
 begin
FirstCoin = 3'b001;
CircLeft = Circles - 1;
 end
else
 FirstCoin = 3'b000;
end

    else if (FirstChange >= 3'd3)
      begin  
        if (Triangles > 0)
          begin
            FirstCoin = 3'b011;
            TriLeft = Triangles - 1;
          end
        else if (Circles > 0)
          begin
          // for else's begin  
            FirstCoin = 3'b001;
            CircLeft = Circles - 1;
          end
        else
          FirstCoin = 3'b000;
      end

    else if (FirstChange >= 1)
      begin
        if (Circles > 0)
          begin
            FirstCoin = 3'b001;
            CircLeft = Circles - 1;
          end
        else
          FirstCoin = 3'b000;
  end

    else
      FirstCoin = 3'b000;
  end //always_combs
  end
endmodule: CalcCoin


module make_change
  (input logic [3:0] Cost, Paid,
   input logic [1:0] Pentagons, Triangles, Circles,
   output logic [2:0] FirstCoin, SecondCoin,
   output logic ExactAmount, NotEnoughChange, CoughUpMore,
   output logic [3:0] Remaining);

   logic [3:0] FirstChange, SecondChange;
   logic [1:0] PentLeft, TriLeft, CircLeft, Pent2Left, Tri2Left, Circ2Left; 

   always_comb begin
     if (Paid < Cost)
 begin
       CoughUpMore = 1'b1;
FirstChange = 3'd0;
SecondChange = 3'd0;
Remaining = 4'd0;
 end
     else
       begin
       CoughUpMore = 1'b0;
       // get amount for first coin
       FirstChange = Paid - Cost;
       SecondChange = Paid - Cost - {1'b0, FirstCoin};
       Remaining = SecondChange - {1'b0, SecondCoin};
end
   end // for always_begin

assign ExactAmount = (Paid == Cost) ? 1'b1 : 1'b0;

   CalcCoin c1 (.FirstChange, .Pentagons, .Triangles,
                .Circles, .FirstCoin, .PentLeft,
                .TriLeft, .CircLeft, .CoughUpMore);

   CalcCoin c2 (.FirstChange(SecondChange), .Pentagons(PentLeft),
                .Triangles(TriLeft), .Circles(CircLeft), 
                .FirstCoin(SecondCoin), .PentLeft(Pent2Left),
                .TriLeft(Tri2Left), .CircLeft(Circ2Left),
                .CoughUpMore);
       // calculate remaining
   GetRemaining r1 (.Remaining, .NotEnoughChange, .CoughUpMore);
 

endmodule: make_change
               
           

 
       
       
        

     
     
     






