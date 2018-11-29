start:
    SETB P3.3			; enable int1
	SETB P3.4			; enable display 3
	MOV P1, #11111001B	; put pattern for 1 on display
	CALL delay
	CLR P3.3
	MOV P1, #10100100B	; put pattern for 2 on display
	CALL delay
	CLR P3.4			; enable t0
	SETB P3.3			; enable display 1
	MOV P1, #10110000B	; put pattern for 3 on display
	CALL delay
	CLR P3.3			; enable display 0
	MOV P1, #10011001B	; put pattern for 4 on display
	CALL delay	           
	JMP l1               ; jump to l1
l1:
  setb p3.3
  setb p3.4
  mov p1,#11001111B
  call delay
  clr p3.3
  mov p1,#10010010B
  call delay
  
  
    setb p3.3
    clr p3.4
    mov p1,#10000110B
    call delay
    CLR P3.3
    MOV P1,#10001101B
    CALL DELAY
   jmp start  	; jump back to start



delay:              ; a crude delay
	MOV R0, #5
	DJNZ R0, $
	RET
