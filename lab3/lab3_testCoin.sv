`default_nettype none

module lab3_testCoin ();
   logic [3:0] FirstChange;
   logic [1:0] Pentagons, Triangles, Circles;
   logic CoughUpMore;
   logic [2:0] Coin;
   logic [1:0] PentLeft, TriLeft, CircLeft;

   CalcCoin c1 (.FirstChange, .Pentagons, .Triangles, .Circles, 
                .CoughUpMore, .FirstCoin(Coin),
                .PentLeft, .TriLeft, .CircLeft);

   initial begin
   $monitor(,, "FirstChange = %d, Pentagon = %d, Triangles = %d, Circles = %d,\
                CoughUpMore = %b, Coin = %d, PentLeft = %d, TriLeft = %d, / 
                CircLeft = %d", 
                FirstChange, Pentagons, Triangles, Circles, 
                CoughUpMore, Coin, PentLeft,
                TriLeft, CircLeft);
   #1 CoughUpMore = 0;
   #5 FirstChange = 7;
      Pentagons = 2;
      Triangles = 0;
      Circles = 1;
   #5 FirstChange = 9;
      Pentagons = 0;
      Triangles = 3;
      Circles = 3;
      
   end 
endmodule: lab3_testCoin 
     
