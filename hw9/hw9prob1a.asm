; puts 15 in r1, 14 in r2, right shifts r2 by 1, puts r1 - r2 in r3  
 .ORG   $100
 LI     R1, $F  ; R1 <- $15 (immediate)
 LI     R2, $E   ; R2 <- $14 (immediate)
 SRLI   R2, R2, $1 ; R2 <- R2 << 1 (immediate)
 SUB    R3, R1, R2 ; R3 <- R1 - R2 (register)
 STOP 

       

