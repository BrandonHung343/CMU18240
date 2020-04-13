        
        .ORG $2000
BOARD   .DW  $4273;.DW  $1324 ; placements of queens in row 0-3;.
        .DW  $6051;DW  $0657 ; placement of queens in row 4-7
        
        .ORG $1000
        LI R7, $0 ; initialize board 1 or board2 counter
        LI R6, $0 ; initialize the index counter, which is +4 each time
        LI R1, $0 ; initialize the how much to shift by counter, mod 12
        LI R3, $0 ; initialize R3 as our diag counter
        LI R5, $0 ; initialize R5 as other diag counter
        LI R2, $0 ; initialize R2 as column counter

ztothr  LI R7, $0 ; initialize to use board 
        MV R1, R6 ; initializes R1 to R6
        BRA loop
        
frtosev LI R7, $2 ; initial to use board + 1
        LI R1, $10 ; subtract 16 get ready
        SUB R1, R6, R1 ; subtract 16 from R6
        
loop    LW R4, R7, BOARD ; loads in the word
        LI R7, $F000 ; initialize the thing to get our bits out
        SLL R4, R4, R1 ;shift the appropriate amount to the left
        AND R4, R4, R7 ; get rid of unnecessary bits
        SRLI R4, R4, $C ; shift over to have bits in rightmost spot, R4 = col
        SRLI R6, R6, $2 ; Store the row, which is r6 / 4, R6 = row
        
        ADD R7, R4, R6 ; current value of row + col
        LI R1, $1 ; get ready to find shift location with R3
        SLL R1, R1, R7 ; shift by row + col
        AND R0, R3, R1 ; if 0, its a new TR to BL diag
        BRZ chklrd ; check TL->BR diag
        BRA seen
        
chklrd  OR R3, R3, R1 ; was ok so set that bit to a 1 in R3
        
        ADDI R7, R4, $7 ; get R7 = 7 + col
        SUB R7, R7, R6 ; get R7 = 7 + col - row for TL to BR diag
        LI R1, $1 ; get ready to find shift location with R5
        SLL R1, R1, R7 ; R1 shifted by R7 to the left
        AND R0, R5, R1 ; check if visited; if 0, seen before
        BRZ chkcol ; check column
        BRA seen
        
chkcol  OR R5, R5, R1 ; was ok so set that bit to a 1 in R5
        LI R1, $1 ; get ready to find column with R2
        SLL R1, R1, R4 ; shift by number of columns
        SLLI R6, R6, $2 ; restore R6 back to a counter 
        AND R0, R2, R1 ; if 0, it's a new column
        BRZ next
        BRA seen
        
next    OR R2, R2, R1 ; set columns right
        SLTI R1, R6, $1C ; check if we are at 28 yet
        BRZ good
        ADDI R6, R6, $4 ; add 4 to R6 
        SLTI R1, R6, $10 ; check if less than or equal to 20 
        BRN ztothr ; branch if we are 0 - 12
        BRA frtosev ; branch to 4-7 row        
                
good    LI R7, $1 ; we are good!
        BRA done ; go to done
        
seen    LI R7, $0 ; already seen before, go home sam
done    STOP
        
        
        
        
        

        
        
