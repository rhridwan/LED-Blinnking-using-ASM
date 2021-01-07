
_main:

;LED_BLINK.c,1 :: 		void main()
;LED_BLINK.c,3 :: 		TRISB.F0 = 0; //Makes RB0 Output PIN
	BCF        TRISB+0, 0
;LED_BLINK.c,5 :: 		while(1) //Infinite Loop
L_main0:
;LED_BLINK.c,7 :: 		PORTB.F0 = 1; //LED ON
	BSF        PORTB+0, 0
;LED_BLINK.c,8 :: 		Delay_ms(5000); //5 Second Delay
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;LED_BLINK.c,9 :: 		PORTB.F0 = 0; //LED OFF
	BCF        PORTB+0, 0
;LED_BLINK.c,10 :: 		Delay_ms(1000); //1 Second Delay
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;LED_BLINK.c,11 :: 		}
	GOTO       L_main0
;LED_BLINK.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
