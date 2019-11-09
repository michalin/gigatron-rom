numericLabel        EQU     register0
defaultLabel        EQU     register1
lutLabs             EQU     register2
lutAddrs            EQU     register3
lutIndex            EQU     register4
lutLabel            EQU     register5


%SUB                realTimeProc
                    ; runs real time, (time sliced), code at regular intervals
realTimeProc        PUSH
                    CALLI   realTimeStub                    ; realTimeStub gets replaced by MIDI/SPRITE etc routines
                    POP
                    RET
                    
realTimeStub        RET
%ENDS

%SUB                gotoNumericLabel
                    ; find numeric label and jump to it
gotoNumericLabel    LDWI    lut_numericLabs
                    STW     lutLabs
                    STW     lutIndex
                    LDWI    lut_numericAddrs
                    STW     lutAddrs
                    
gotoNL_loop         LDW     lutIndex
                    DEEK
                    STW     lutLabel
                    LD      lutLabel + 1
                    ANDI    0x80                            ; check for -1
                    BEQ     gotoNL_cont
                    LDW     defaultLabel
                    BEQ     gotoNL_exit
                    CALL    defaultLabel                    ; fetch default address and jump, (note we never return from here)
                    
gotoNL_exit         RET
                    
gotoNL_cont         LDW     lutLabel
                    SUBW    numericLabel
                    BEQ     gotoNL_found
                    INC     lutIndex
                    INC     lutIndex                        ; loop through lut until found or -1
                    BRA     gotoNL_loop
                    
gotoNL_found        LDW     lutIndex
                    SUBW    lutLabs
                    ADDW    lutAddrs
                    DEEK
                    CALL    giga_vAC                        ; fetch label address and jump, (note we never return from here)
%ENDS

%SUB                gosubNumericLabel
                    ; find numeric label and call it, (it had better return or welcome to lala land)
gosubNumericLabel   PUSH
                    LDWI    lut_numericLabs
                    STW     lutLabs
                    STW     lutIndex
                    LDWI    lut_numericAddrs
                    STW     lutAddrs
                    
gosubNL_loop        LDW     lutIndex
                    DEEK
                    STW     lutLabel
                    LD      lutLabel + 1
                    ANDI    0x80                            ; check for -1
                    BEQ     gosubNL_cont
                    LDW     defaultLabel
                    BEQ     gosubNL_exit
                    CALL    defaultLabel                    ; fetch default address and call
                    
gosubNL_exit        POP
                    RET
                    
gosubNL_cont        LDW     lutLabel
                    SUBW    numericLabel
                    BEQ     gosubNL_found
                    INC     lutIndex
                    INC     lutIndex                        ; loop through lut until found or -1
                    BRA     gosubNL_loop
                    
gosubNL_found       LDW     lutIndex
                    SUBW    lutLabs
                    ADDW    lutAddrs
                    DEEK
                    CALL    giga_vAC                        ; fetch label address and call
                    POP
                    RET
%ENDS