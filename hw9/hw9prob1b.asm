; sets r6 to 0x23 if r5 < r7; else sets its to 0xBB
   .ORG $0
   LI R5, $15
   LI R7, $17
   SLT R0, R5, R7
   BRNZ dn
up LI R6, $23
   BRA fn
dn LI R6, $BB
fn STOP
