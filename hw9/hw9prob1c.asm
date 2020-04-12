 ; Moves $11 around from R4 -> R2 -> R6 in that order, clearing each one after
 .ORG $0
 LI R4, $11
 MV R2, R4
 MV R4, R0
 MV R6, R2
 MV R2, R0
 STOP
   
