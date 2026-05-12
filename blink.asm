ORG 0000H          ; Start address

MAIN:
    CLR P1.0       ; LED ON (Assuming LED is connected to GND)
    ACALL DELAY_5S ; Wait 5 seconds
    SETB P1.0       ; LED OFF
    ACALL DELAY_5S ; Wait 5 seconds
    SJMP MAIN      ; Repeat forever

DELAY_5S:
    MOV R2, #40    ; Outer loop (Adjust this value to tune timing)
LOOP3:
    MOV R0, #255   ; Middle loop
LOOP1:
    MOV R1, #255   ; Inner loop
LOOP2:
    DJNZ R1, LOOP2 ; Decrements R1 until 0
    DJNZ R0, LOOP1 ; Decrements R0 until 0
    DJNZ R2, LOOP3 ; Decrements R2 until 0
    RET            ; Return to main program

END                ; End of program
