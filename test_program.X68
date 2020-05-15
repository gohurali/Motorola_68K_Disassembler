*-----------------------------------------------------------
* Title      : test_program
* Written by : Gohur Ali
* Date       : 5/14/19
* Description: Test program of various instructions for decoding
*-----------------------------------------------------------
    ORG    $3000
START:                  ; first instruction of program

* Put program code here
    nop
    nop
    
    movem.l     D0/D2/D6,-(SP)
    movem.l     A4/A6,-(SP)
    movem.l     D2/D3/D5/A4/A6,-(SP)
    movem.l     A2/A4/A6,-(SP)
    movem.l     D1/D2/D5/D6/A4/A6,-(SP)
    movem.l     D1/D2/D5/D6/A4/A6,(A4)
    movem.l     D1-D3,-(SP)
    movem.l     D2/D3/D5/A4/A6,(A4)
    movem.l     D2/D3/D5/A4/A6,$500
    movem.l     D1/D2/D5/D6/A4/A6,$CEECAEEA
    
    movem.l     D5,-(SP)
    movem.l     (SP)+,D4
    movem.l     $12,A1
    movem.l     A6,$AAAABBBB
    
    movem.l     (SP)+,D1/D2/D5/D6/A4/A6
    movem.l     (A6),D1/D2/D5/D6/A4/A6
    movem.l     $400,D1/D2/D5/D6/A4/A6
    movem.l     $CEECAEEA,D1/D2/D5/D6/A4/A6

    movem.l     (SP)+,D2/D3/D5/A4/A6
    movem.l     $300,D2/D3/D5/A4/A6
    movem.l     (A4),D2/D3/D5/A4/A6
    
    MOVEA.W #$9100, A0 *A0<-- FFFF9100
    MOVEA.W #$1000, A1
    LEA     $9100, A0  *A0<-- 00009100
 	MOVEA.W #$4213, A0 *A0<-- 00004213
	MOVEA.L #$9100, A0 *A0<--- 00009100
	MOVEA.L #$00004213, A0 *A0<-- 00004213
	MOVE.L #$00008000, D0
	MOVEA.W D0, A0

    MULS.W #$1234,D1
	
	MOVE.B  $00004340, D3 *Word addressing
	MOVE.B  $0000A340, D3 *Long word addressing
	MOVE.B  $A340, D3     *Long Word addressing
	MOVE.B  $FFFFA340, D3 *word addressing
	MOVE.B  $FFFF4340, D3 *long word addressing
	
	LEA  $00004340, A1 *Word addressing
	LEA  $0000A340, A1 *Long word addressing
	LEA  $A340, A1     *Long Word addressing
	MOVEA.W #$A340, A1 *Word Addressing
	LEA  $FFFFA340, A1 *word addressing
	LEA  $FFFF4340, A1 *long word addressing

	
	
	MOVE.L  #$AAAAAAAA, D0
	MOVE.B  #$BB, D0
	MOVE.L  #-3, D0
	ASL.L   #8, D0
	MOVE.L  #-3, D0
	MOVEQ   #253,D0
	ASL.W   #8, D0

	MOVE.L  #$F, D0
	ASL.B   #5, D0

    MOVEQ   #$11, D0
	MOVE.L  #$3456ABCF, D0
	ASR.W 	#3, D0
	MOVE.L  #$3456ABCF, D0
	ASL.W 	#3, D0
 
    movea.w     #$5782,A1
    movea.w     #$ABCD,A4
    movea.w     #$CA8E,A5
    movea.l     #$CA8E,A5
    movea.l     #$C7ABCA8E,A5
    movea.w     #$8E,A5
    movea.l     #$8E,A5
    movea.w     #$7BCD,A5
    movea.l     #$7BCD,A5
    movea.w     #$ABCD,A5
    movea.l     #$ABCD,A5
    movea.l     #$FFFF7777,A5
    movea.l     #$FFFFABCD,A5
    movea.l     #$C7ABCA8E,A5
    
    move.l  #$CCCEAA40,D3
    move.b  #$40,D3
    move.w  #$6,D2
    move.w  #$D32,D7
    move.l  #$CAFFEFFA,D5
    move.l  D5,$CAFFEFFA
    MOVE.B  $40,D3
    MOVE.B  $00004340,D3
    MOVE.B  $A340, D3
    MOVE.B  $FFFFA340, D3
    MOVE.B  $FFFF4340, D3
    MOVE.W  $A340, D3
    
    
    and.b       #%01101010,D0
    and.w       #%01101010,D0
    and.l       #%01101010,D0
    or.b        #%01101010,D0
    or.w        #%01101010,D0
    or.l        #%01101010,D0

    and.b       D1,D0
    and.w       D2,D0
    and.l       D3,D1
    or.b        D4,D0
    or.w        D5,D0
    or.l        D6,D0
    
    add.b       D1,(A1)
    add.b       D3,D0
    add.w       D4,(A3)+
    add.l       D3,-(A4)
    adda.w      #$23,A1
    adda.w      #$00000023,A1
    adda.l      D5,A1
    ADDA.W    #$1234,A2
    ADDA.W    #$CCCC,A2
    ADDA.L    #$12345678,A2
    ADDA.L    #$1234,A2
    addq.b      #5,D2
    addq.w      #6,D6
    addq.l      #7,D4
    
    move.w     ($1000),D1
    move.w      $1000,D1
    
    move.b      #5,D1
    move.w      #5,D1
    move.l      D2,D1
    move.b      D1,D3
    move.w      D3,D5
    move.l      A4,D6
    move.w      (A3),D7

    moveq       #5,D4
    moveq       #10,D5


    MOVEQ     #$0000000,D0
    MOVEQ     #$00000012,D0
    MOVEQ     #$000000FF,D0


    movem.w     (SP)+,D2-D6
    movem.w     (SP)+,D5
    movem.w     (SP)+,D0
    movem.w     (SP)+,D7
    movem.w     (SP)+,D7
    
    movem.w     (SP)+,A0
    movem.w     (SP)+,A2
    movem.w     (SP)+,A3-A6
    movem.w     (SP)+,D2-D5/A3-A6
    movem.w     (SP)+,A7

    movem.l     (A5),A1/D7
    movem.w     (A6)+,A1-A5/D0-D3

    movem.w     A0,-(SP)
    movem.w     D1,-(SP)
    movem.w     D2,-(SP)
    movem.w     D3,-(SP)
    movem.w     D4,-(SP)
    movem.w     D5,-(SP)
    movem.w     D6,-(SP)
    movem.w     D7,-(SP)
    
    MOVEM.W   A1-A7,$12
    MOVEM.L   D1-D7,$12
    MOVEM.W   A1/D7,$12
    MOVEM.L   A1/D7,$12
    MOVEM.W   A1-A7,$1234
    MOVEM.L   D1-D7,$1234
    MOVEM.W   A1/D7,$1234
    MOVEM.L   A1/D7,$1234 

    MOVEM.W   A1-A7,$12345678
    MOVEM.L   D1-D7,$12345678
    MOVEM.W   A1/D7,$12345678
    MOVEM.L   A1/D7,$12345678
    
    
* -----------------------------------------    
    MOVEM.W   $12,A1-A7
    MOVEM.L   $12,D1-D7
    MOVEM.W   $12,A1/D7
    MOVEM.L   $12,A1/D7

    MOVEM.W   $1234,A2-A7
    MOVEM.W   $1234,A3-A7
    MOVEM.W   $1234,A4-A7
    MOVEM.W   $1234,A5-A7
    MOVEM.W   $1234,A6-A7
    MOVEM.W   $1234,A0-A7

    MOVEM.L   $1234,D1-D7

    MOVEM.W   A1-A7,$1234
    MOVEM.L   D1-D7,$1234

    MOVEM.W   A1/D7,$12CA
    MOVEM.W   A1/D7,$1234
    MOVEM.L   A3/D7,$1234

    MOVEM.L   A1/D7,$1234
    MOVEM.L   A1-A7,$1234

* ---------------------------------

    MOVEM.W   $1234,A1-A7
    MOVEM.W   $1234,A1/D7
    MOVEM.L   $1234,A1/D7

* ------------------------------------------
    MOVEM.W   $12345678,A1-A7
    MOVEM.L   $12345678,D1-D7
    MOVEM.W   $12345678,A1/D7
    MOVEM.L   $12345678,A1/D7
    
    movem.l     A4,-(SP)
    movem.l     D1-D3/A4-A7,-(SP)
    movem.l     D3-D6,-(SP)

    movem.l     D4/A3-A5,-(SP)

    movem.l     D0-D2/A6,-(SP)
    movem.l     D7,-(SP)
    movem.l     A1/D7,(A1)
    movem.l     A1/D7,$3000
    movem.w     $4300,A1/D7
    movem.l     D7/A1,(A1)


    movem.l     D7/A1,-(SP)
    movem.l     A1/D7,-(SP)
    movem.l     A1/D7,-(A5)
    movem.l     A1/D7,(A5)
    
    not.b       D1
    not.w       D2
    not.l       D6


    lsl         $50
    lsr         $100
    
    asr         $345
    asl         $75
    
    sub         D1,A1

    lsl.b       #1,D0
    lsl.w       #2,D0
    lsl.l       #3,D3
    lsr.l       #3,D6
    lsr.b       #5,D0
    lsr.w       #5,D0
    lsr.l       #5,D0
   
    asl.b       #5,D0
    asl.w       #4,D2
    asl.l       #7,D5
    asr.b       #5,D1
    asr.w       #8,D7
    asr.l       #2,D3
    
    asl.b       D2,D0
    asl.w       D0,D2
    asl.l       D1,D5
    asr.b       D4,D1
    asr.w       D6,D7
    asr.l       D7,D3
    rol.b       #5,D7
    rol.w       #4,D5
    rol.l       #1,D3
    
    ror.b       #5,D0
    ror.w       #7,D1
    ror.l       #8,D3
    
    
    lea         $1,A1
    
    rol         $50
    ror         $60
    
    jsr         sr_test
    jsr         $3200
    jsr         $12345678
    jsr         (A1)


    cmp.b       #5,D0
    bcc         sr_test
    bgt         sr_test
    ble         sr_test
    blt         sr_test
    bra         sr_test
    beq         sr_test

    jsr         sr_test
sr_test:
    rts
    
    


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source
















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
