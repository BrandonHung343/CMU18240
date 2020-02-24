`default_nettype none

module GetRemaining
 (input logic [3:0] Remaining,
  input logic CoughUpMore,
  output logic NotEnoughChange, 
  output logic ExactAmount);
  
  always_comb begin
  NotEnoughChange = 0;
  ExactAmount = 0;
  if (~CoughUpMore)
    begin  
    if (Remaining > 0)
      NotEnoughChange = 1;
    else
      ExactAmount = 1;
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
  if (~CoughUpMore)
  begin
  if (FirstChange >= 5)
    begin
      if (FirstChange == 6)
      // 6 case; if we have 2+ triangles then return those triangles.
      // otherwise we just proceed as normal
        begin
        if (Pentagons > 0)
          begin
            if (Circles > 0)
              begin
                FirstCoin = 3'b101;
                PentLeft = Pentagons - 1;
              end
            else if (Triangles > 1)
              begin
                FirstCoin = 3'b011;
                TriLeft = Triangles - 1;
              end
            else
              begin
                FirstCoin = 3'b101;
                PentLeft = Pentagons - 1;
              end
          end
        else
          begin
            if (Triangles > 0)
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
        end

      else
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
  end

  else if (FirstChange >= 3)
    begin  
      if (Triangles > 0)
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
        begin
          FirstCoin = 3'b000;
        end
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
  end

  else
    FirstCoin = 3'b000;
  

  end //always_combs
endmodule: CalcCoin


module make_change
  (input logic [3:0] Cost, Paid,
   input logic [1:0] Pentagons, Triangles, Circles,
   output logic [2:0] FirstCoin, SecondCoin,
   output logic ExactAmount, NotEnoughChange, 
                CoughUpMore,
   output logic [3:0] Remaining);

   logic [3:0] FirstChange, SecondChange;
   logic [1:0] PentLeft, TriLeft, CircLeft;
   logic [1:0] Pent2Left, Tri2Left, Circ2Left; 

   always_comb begin

     CoughUpMore = 0;

     if (Paid < Cost)
       CoughUpMore = 1;
     else
       begin
       // get amount for first coin
       FirstChange = Paid - Cost;
       SecondChange = Paid - Cost - {0, FirstCoin};
       Remaining = SecondChange - {0, SecondCoin};
       end // for else's begin      
 
   end // for always_begin

   CalcCoin c1 (.FirstChange, .Pentagons, .Triangles,
                .Circles, .FirstCoin, .PentLeft,
                .TriLeft, .CircLeft, .CoughUpMore);

   CalcCoin c2 (.FirstChange(SecondChange), .Pentagons(PentLeft),
                .Triangles(TriLeft), .Circles(CircLeft), 
                .FirstCoin(SecondCoin), .PentLeft(Pent2Left),
                .TriLeft(Tri2Left), .CircLeft(Circ2Left),
                .CoughUpMore);
       // calculate remaining
   GetRemaining r1 (.Remaining, .NotEnoughChange, .ExactAmount, .CoughUpMore);
 

endmodule: make_change
               
           

 
       
       
        

     
     
     






