    .ORG $1234
A   .DW $e ; val of a
B   .DW $e ; val of b
RES .DW $0

    .ORG $1000
     LW R2, R0, A ; load value of A into R2
     LW R3, R0, B ; load value of B into R3
     SLTI R0, R2, $0 ; see if A is 0
     BRZ resa ; go to end, store A in RES if yes
     SLTI R0, R3, $0 ; see if B is 0
     BRZ resb ; go to end, store B in RES if yes
     ; start of the loop
loop SLT R4, R2, R3 ; compare the registers
     BRZ resa    ; equal, store either one in RES 
     BRN altb; a < b
     ; a > b, so a = a - b 
     SUB R2, R2, R3
     BRA loop ; back again
     ; a < b, so b = b - a
altb SUB R3, R3, R2
     BRA loop ; back to loop
resa SW R0, R2, RES ; store M[RES] = a
     BRA done ; go to end
resb SW R0, R3, RES ; store M[RES] = b
done LW R7, R0, RES;
     STOP
    

     
     
    
    
