`default_nettype none

module hw2prob7_if
  (output logic [2:0] Y,
   output logic valid,
   input logic [7:0] A);
 
   always_comb begin
     valid = 1;
     Y[2] = 0;
     Y[1] = 0;
     Y[0] = 0;
     if (A[7])
       begin 
         Y[2] = 1;
         Y[1] = 1;
         Y[0] = 1;
       end
     else if (A[6])
       begin
         Y[2] = 1;
         Y[1] = 1;
         Y[0] = 0;
       end
     else if (A[5])
       begin
         Y[2] = 1;
         Y[1] = 0;
         Y[0] = 1;
       end
     else if (A[4])
       begin
         Y[2] = 1;
         Y[1] = 0;
         Y[0] = 0;
       end
     else if (A[3])
       begin
         Y[2] = 0;
         Y[1] = 1;
         Y[0] = 1;
       end
     else if (A[2])
       begin
         Y[2] = 0;
         Y[1] = 1;
         Y[0] = 0;
       end
     else if (A[1])
       begin
         Y[2] = 0;
         Y[1] = 0;
         Y[0] = 1;
       end
     else
       begin
         valid = 0;
       end
   end
endmodule: hw2prob7_if

module hw2prob7_case
  (output logic [2:0] Y,
   output logic valid,
   input logic [7:0] A);

   always_comb begin
     valid = 1;
     Y[2] = 0;
     Y[1] = 0;
     Y[0] = 0;
    
     unique casez ({A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0]})
       8'b1???????: begin
                      Y[2] = 1;
                      Y[1] = 1;
                      Y[0] = 1;
                    end
       8'b01??????: begin
                      Y[2] = 1;
                      Y[1] = 1;
                      Y[0] = 0;
                    end
       8'b001?????: begin
                      Y[2] = 1;
                      Y[1] = 0;
                      Y[0] = 1;
                    end
       8'b0001????: begin
                      Y[2] = 1;
                      Y[1] = 0;
                      Y[0] = 0;
                    end
       8'b00001???: begin
                      Y[2] = 0;
                      Y[1] = 1;
                      Y[0] = 1;
                    end
       8'b000001??: begin
                      Y[2] = 0;
                      Y[1] = 1;
                      Y[0] = 0;
                    end
       8'b0000001?: begin
                      Y[2] = 0;
                      Y[1] = 0;
                      Y[0] = 1;
                    end
       8'b00000001: begin
                      Y[2] = 0;
                      Y[1] = 0;
                      Y[0] = 0;
                    end
    endcase
  end

endmodule: hw2prob7_case 
 
module hw2prob7_tern
  (output logic [2:0] Y,
   output logic valid,
   input logic [7:0] A);

   assign Y[2] = (A[7] | A[6] | A[5] | A[4]) ? 1 : 0;
   assign Y[1] = (A[7] | A[6] | (~A[5] & ~A[4] & (A[3] | A[2]))) ? 1 : 0;
   assign Y[0] = (A[7] | ((~A[7] & ~A[6]) & A[5]) |
                 ((~A[7] & ~A[6] & ~A[5] & ~A[4]) & A[3]) |
                 ((~A[7] & ~A[6] & ~A[5] & ~A[4]
                 & ~A[3] & ~A[2]) & A[1]))
                 ? 1 : 0;
   assign valid = (A[7] | A[6] | A[5] | A[4] | A[3] | A[2] | A[1] | A[0]);
endmodule: hw2prob7_tern       
                       
module hw2prob7_test
  (input logic [2:0] y,
   input logic valid,
   output logic [7:0] a);

   initial begin
     $monitor($time,,
     "a7 = %b, a6 = %b, a5 = %b, a4 = %b, a3 = %b, \
      a2 = %b, a1 = %b, a0 = %b, y2 = %b, y1 = %b, \
      y0 = %b, valid = %b", a[7], a[6], a[5], a[4],
      a[3], a[2], a[1], a[0], y[2], y[1], y[0], valid);

     #5 a[7] = 1;
     #5 a[3] = 1;
     #5 a[6] = 1;
        a[7] = 0;
        a[3] = 0;
     #5 a[5] = 1;
     #5 a[6] = 0;
     #5 a[4] = 1;
     #5 a[5] = 0;
     #5 a[3] = 1;
     #5 a[4] = 0;
     #5 a[2] = 1;
     #5 a[3] = 0;
     #5 a[1] = 1;
     #5 a[2] = 0;
     #5 a[0] = 1;
     #5 a[1] = 0;
     #5 a[0] = 0;
   end
endmodule: hw2prob7_test

