              address
              |    encoding
              |    |     instruction
              |    |     |    operands
              |    |     |    |
              V    V     V    V
              0000 0000  ld   $00
              0001 1880  ld   $80,out
              0002 18c0  ld   $c0,out
              0003 0001  ld   $01
.countMem0:   0004 d601  st   [$01],y
              0005 00ff  ld   $ff
              0006 6900  xora [y,$00]
              0007 ca00  st   [y,$00]
              0008 c200  st   [$00]
              0009 6900  xora [y,$00]
              000a ec0a  bne  $000a
              000b 00ff  ld   $ff
              000c 6900  xora [y,$00]
              000d ca00  st   [y,$00]
              000e 6100  xora [$00]
              000f f013  beq  .countMem1
              0010 0101  ld   [$01]
              0011 fc04  bra  .countMem0
              0012 8200  adda ac
.countMem1:   0013 0001  ld   $01
              0014 1880  ld   $80,out
              0015 18c0  ld   $c0,out
              0016 0000  ld   $00
              0017 d21c  st   [$1c],x
              0018 d61d  st   [$1d],y
.initEnt0:    0019 0110  ld   [$10]
              001a f41d  bge  .initEnt1
              001b 8d00  adda [y,x]
              001c 60bf  xora $bf
.initEnt1:    001d c210  st   [$10]
              001e 0111  ld   [$11]
              001f f422  bge  .initEnt2
              0020 8110  adda [$10]
              0021 60c1  xora $c1
.initEnt2:    0022 c211  st   [$11]
              0023 011c  ld   [$1c]
              0024 8001  adda $01
              0025 ec19  bne  .initEnt0
              0026 d21c  st   [$1c],x
              0027 011d  ld   [$1d]
              0028 8001  adda $01
              0029 ec19  bne  .initEnt0
              002a d61d  st   [$1d],y
              002b 0003  ld   $03
              002c 1880  ld   $80,out
              002d 18c0  ld   $c0,out
              002e 0104  ld   [$04]
              002f 8105  adda [$05]
              0030 805a  adda $5a
              0031 ec35  bne  cold
              0032 0000  ld   $00
              0033 0104  ld   [$04]
              0034 8001  adda $01
cold:         0035 c204  st   [$04]
              0036 60ff  xora $ff
              0037 a059  suba $59
              0038 c205  st   [$05]
              0039 00ff  ld   $ff
              003a c20d  st   [$0d]
              003b 1401  ld   $01,y
              003c 1000  ld   $00,x
              003d 0008  ld   $08
              003e de00  st   [y,x++]
.initVideo:   003f dc00  st   $00,[y,x++]
              0040 8001  adda $01
              0041 f43f  bge  .initVideo
              0042 de00  st   [y,x++]
              0043 00f2  ld   $f2
              0044 c20c  st   [$0c]
              0045 1402  ld   $02,y
              0046 0000  ld   $00
              0047 c202  st   [$02]
.loop:        0048 c21c  st   [$1c]
              0049 8200  adda ac
              004a 9200  adda ac,x
              004b 011c  ld   [$1c]
              004c ce00  st   [y,x]
              004d 8001  adda $01
              004e 6040  xora $40
              004f ec48  bne  .loop
              0050 6040  xora $40
              0051 0078  ld   $78
              0052 c213  st   [$13]
              0053 0000  ld   $00
              0054 c214  st   [$14]
              0055 000a  ld   $0a
              0056 c215  st   [$15]
              0057 1401  ld   $01,y
              0058 10fa  ld   $fa,x
              0059 dc38  st   $38,[y,x++]
              005a cc06  st   $06,[y,x]
              005b 1402  ld   $02,y
              005c 10fa  ld   $fa,x
              005d dc70  st   $70,[y,x++]
              005e cc0c  st   $0c,[y,x]
              005f 1403  ld   $03,y
              0060 10fa  ld   $fa,x
              0061 dc10  st   $10,[y,x++]
              0062 cc10  st   $10,[y,x]
              0063 1404  ld   $04,y
              0064 10fa  ld   $fa,x
              0065 dc20  st   $20,[y,x++]
              0066 cc13  st   $13,[y,x]
              0067 0000  ld   $00
              0068 c212  st   [$12]
              0069 00ff  ld   $ff
              006a c216  st   [$16]
              006b c217  st   [$17]
              006c 0007  ld   $07
              006d 1880  ld   $80,out
              006e 18c0  ld   $c0,out
              006f 0075  ld   $75
              0070 c20e  st   [$0e]
              0071 0000  ld   $00
              0072 1406  ld   $06,y
              0073 e000  jmp  y,$00
              0074 c20f  st   [$0f]
.retn:        0075 000f  ld   $0f
              0076 1880  ld   $80,out
              0077 18c0  ld   $c0,out
              0078 c207  st   [$07]
              0079 c206  st   [$06]
              007a 1401  ld   $01,y
              007b e000  jmp  y,$00
              007c 00c0  ld   $c0
              007d 0000  ld   $00
              007e 0000  ld   $00
              007f 0000  ld   $00
              * 131 times
videoLoop:    0100 c209  st   [$09]
              0101 0080  ld   $80
              0102 c20a  st   [$0a]
              0103 c000  st   $00,[$00]
              0104 0001  ld   $01
              0105 c280  st   [$80]
              0106 010d  ld   [$0d]
              0107 8001  adda $01
              0108 c20d  st   [$0d]
              0109 c003  st   $03,[$03]
              010a 0011  ld   $11
              010b c20e  st   [$0e]
              010c 0001  ld   $01
              010d c20f  st   [$0f]
              010e 1404  ld   $04,y
              010f e000  jmp  y,$00
              0110 0029  ld   $29
              0111 0113  ld   [$13]
              0112 ec38  bne  .leds4
              0113 0017  ld   $17
              0114 8114  adda [$14]
              0115 fe00  bra  ac
              0116 fc2f  bra  .leds1
.leds0:       0117 000f  ld   $0f
              0118 0007  ld   $07
              0119 0003  ld   $03
              011a 0001  ld   $01
              011b 0002  ld   $02
              011c 0004  ld   $04
              011d 0008  ld   $08
              011e 0004  ld   $04
              011f 0002  ld   $02
              0120 0001  ld   $01
              0121 0003  ld   $03
              0122 0007  ld   $07
              0123 000f  ld   $0f
              0124 000e  ld   $0e
              0125 000c  ld   $0c
              0126 0008  ld   $08
              0127 0004  ld   $04
              0128 0002  ld   $02
              0129 0001  ld   $01
              012a 0002  ld   $02
              012b 0004  ld   $04
              012c 0008  ld   $08
              012d 000c  ld   $0c
              012e 008e  ld   $8e
.leds1:       012f c207  st   [$07]
              0130 e833  blt  .leds2
              0131 fc34  bra  .leds3
              0132 0114  ld   [$14]
.leds2:       0133 00ff  ld   $ff
.leds3:       0134 8001  adda $01
              0135 c214  st   [$14]
              0136 fc3e  bra  .leds5
              0137 0115  ld   [$15]
.leds4:       0138 0003  ld   $03
              0139 ec39  bne  $0139
              013a a001  suba $01
              013b 0200  nop
              013c 0113  ld   [$13]
              013d a001  suba $01
.leds5:       013e c213  st   [$13]
              013f 0107  ld   [$07]
              0140 200f  anda $0f
              0141 c207  st   [$07]
              0142 0112  ld   [$12]
              0143 ec46  bne  .snd0
              0144 fc47  bra  .snd1
              0145 0000  ld   $00
.snd0:        0146 00f0  ld   $f0
.snd1:        0147 4107  ora  [$07]
              0148 c207  st   [$07]
              0149 0112  ld   [$12]
              014a f04d  beq  .snd2
              014b fc4e  bra  .snd3
              014c a001  suba $01
.snd2:        014d 0000  ld   $00
.snd3:        014e c212  st   [$12]
              014f 0027  ld   $27
              0150 c208  st   [$08]
              0151 1909  ld   [$09],out
sound1:       0152 0102  ld   [$02]
              0153 2003  anda $03
              0154 8001  adda $01
              0155 190a  ld   [$0a],out
              0156 d602  st   [$02],y
              0157 007f  ld   $7f
              0158 29fe  anda [y,$fe]
              0159 89fa  adda [y,$fa]
              015a cafe  st   [y,$fe]
              015b 3080  anda $80,x
              015c 0500  ld   [x]
              015d 89ff  adda [y,$ff]
              015e 89fb  adda [y,$fb]
              015f caff  st   [y,$ff]
              0160 0200  nop
              0161 0200  nop
              0162 30fc  anda $fc,x
              0163 1402  ld   $02,y
              0164 0d00  ld   [y,x]
              0165 8103  adda [$03]
              0166 c203  st   [$03]
              0167 0200  nop
              0168 0200  nop
              0169 0200  nop
              016a 0200  nop
              016b 0106  ld   [$06]
              016c 0200  nop
              016d 1909  ld   [$09],out
              016e 0108  ld   [$08]
              016f f0a0  beq  vBlankLast0
              0170 a001  suba $01
              0171 c208  st   [$08]
              0172 a01a  suba $1a
              0173 ec78  bne  vSync0
              0174 a008  suba $08
              0175 00c0  ld   $c0
              0176 fc7d  bra  vSync2
              0177 c209  st   [$09]
vSync0:       0178 ec7c  bne  vSync1
              0179 0040  ld   $40
              017a fc7e  bra  vSync3
              017b c209  st   [$09]
vSync1:       017c 0109  ld   [$09]
vSync2:       017d 0200  nop
vSync3:       017e 6040  xora $40
              017f c20a  st   [$0a]
              0180 0108  ld   [$08]
              0181 6019  xora $19
              0182 ec85  bne  .ser0
              0183 fc86  bra  .ser1
              0184 c316  st   in,[$16]
.ser0:        0185 0200  nop
.ser1:        0186 0108  ld   [$08]
              0187 2003  anda $03
              0188 ec97  bne  vBlankRegular
              0189 0103  ld   [$03]
              018a 400f  ora  $0f
              018b 2107  anda [$07]
              018c c206  st   [$06]
              018d c003  st   $03,[$03]
              018e 0095  ld   $95
              018f c20e  st   [$0e]
              0190 0001  ld   $01
              0191 c20f  st   [$0f]
              0192 1404  ld   $04,y
              0193 e000  jmp  y,$00
              0194 0032  ld   $32
              0195 fc52  bra  sound1
              0196 1909  ld   [$09],out
vBlankRegular: 0197 009e  ld   $9e
              0198 c20e  st   [$0e]
              0199 0001  ld   $01
              019a c20f  st   [$0f]
              019b 1404  ld   $04,y
              019c e000  jmp  y,$00
              019d 0034  ld   $34
              019e fc52  bra  sound1
              019f 1909  ld   [$09],out
vBlankLast0:  01a0 0000  ld   $00
              01a1 c209  st   [$09]
              01a2 c20b  st   [$0b]
vBlankLast1:  01a3 0116  ld   [$16]
              01a4 f0a7  beq  .multi0
              01a5 fca8  bra  .multi1
              01a6 c217  st   [$17]
.multi0:      01a7 0040  ld   $40
.multi1:      01a8 4117  ora  [$17]
              01a9 c217  st   [$17]
              01aa 0117  ld   [$17]
              01ab 60df  xora $df
              01ac f0af  beq  .sel0
              01ad fcb0  bra  .sel1
              01ae 0000  ld   $00
.sel0:        01af 002c  ld   $2c
.sel1:        01b0 610c  xora [$0c]
              01b1 c20c  st   [$0c]
              01b2 0200  nop
              01b3 00ba  ld   $ba
              01b4 c20e  st   [$0e]
              01b5 0001  ld   $01
              01b6 c20f  st   [$0f]
              01b7 1404  ld   $04,y
              01b8 e000  jmp  y,$00
              01b9 0035  ld   $35
              01ba 0102  ld   [$02]
              01bb 2003  anda $03
              01bc 8001  adda $01
              01bd 1402  ld   $02,y
              01be e0b0  jmp  y,$b0
              01bf 1880  ld   $80,out
              01c0 0000  ld   $00
              01c1 0000  ld   $00
              01c2 0000  ld   $00
              * 64 times
visiblePage:
videoA:       0200 00c8  ld   $c8
              0201 c20b  st   [$0b]
              0202 1401  ld   $01,y
              0203 1108  ld   [$08],x
              0204 0d00  ld   [y,x]
              0205 de00  st   [y,x++]
              0206 c20a  st   [$0a]
              0207 0d00  ld   [y,x]
              0208 9109  adda [$09],x
              0209 150a  ld   [$0a],y
              020a 00c0  ld   $c0
pixels:       020b 5d00  ora  [y,x++],out
              020c 5d00  ora  [y,x++],out
              020d 5d00  ora  [y,x++],out
              * 160 times
              02ab 18c0  ld   $c0,out
              02ac 0102  ld   [$02]
soundF:       02ad 2003  anda $03
              02ae 8001  adda $01
              02af 1880  ld   $80,out
sound2:       02b0 d602  st   [$02],y
              02b1 007f  ld   $7f
              02b2 29fe  anda [y,$fe]
              02b3 89fa  adda [y,$fa]
              02b4 cafe  st   [y,$fe]
              02b5 3080  anda $80,x
              02b6 0500  ld   [x]
              02b7 89ff  adda [y,$ff]
              02b8 89fb  adda [y,$fb]
              02b9 caff  st   [y,$ff]
              02ba 0200  nop
              02bb 0200  nop
              02bc 30fc  anda $fc,x
              02bd 1402  ld   $02,y
              02be 0d00  ld   [y,x]
              02bf 8103  adda [$03]
              02c0 c203  st   [$03]
              02c1 0200  nop
              02c2 0200  nop
              02c3 0200  nop
              02c4 0200  nop
              02c5 0106  ld   [$06]
              02c6 fd0b  bra  [$0b]
              02c7 18c0  ld   $c0,out
videoB:       02c8 00d3  ld   $d3
              02c9 c20b  st   [$0b]
              02ca 1401  ld   $01,y
              02cb 0108  ld   [$08]
              02cc 9001  adda $01,x
              02cd 0109  ld   [$09]
              02ce 8d00  adda [y,x]
              02cf d209  st   [$09],x
              02d0 150a  ld   [$0a],y
              02d1 fc0b  bra  pixels
              02d2 00c0  ld   $c0
videoC:       02d3 0103  ld   [$03]
              02d4 400f  ora  $0f
              02d5 2107  anda [$07]
              02d6 c206  st   [$06]
              02d7 c003  st   $03,[$03]
              02d8 010c  ld   [$0c]
              02d9 c20b  st   [$0b]
              02da 1109  ld   [$09],x
              02db 150a  ld   [$0a],y
              02dc fc0b  bra  pixels
              02dd 00c0  ld   $c0
videoD:       02de 1109  ld   [$09],x
              02df 0108  ld   [$08]
              02e0 a0ee  suba $ee
              02e1 f0e9  beq  last
              02e2 150a  ld   [$0a],y
              02e3 80f0  adda $f0
              02e4 c208  st   [$08]
              02e5 0000  ld   $00
              02e6 c20b  st   [$0b]
              02e7 fc0b  bra  pixels
              02e8 00c0  ld   $c0
last:         02e9 0200  nop
              02ea 0200  nop
              02eb 00ef  ld   $ef
              02ec c20b  st   [$0b]
              02ed fc0b  bra  pixels
              02ee 00c0  ld   $c0
videoE:       02ef 1401  ld   $01,y
              02f0 e000  jmp  y,$00
              02f1 00c0  ld   $c0
videoF:       02f2 0108  ld   [$08]
              02f3 a0ee  suba $ee
              02f4 ecf8  bne  notlast
              02f5 80f0  adda $f0
              02f6 fcfa  bra  .join
              02f7 00ef  ld   $ef
notlast:      02f8 c208  st   [$08]
              02f9 0000  ld   $00
.join:        02fa c20b  st   [$0b]
              02fb 0200  nop
              02fc 0003  ld   $03
              02fd c20e  st   [$0e]
              02fe 0003  ld   $03
              02ff c20f  st   [$0f]
              0300 1404  ld   $04,y
              0301 e000  jmp  y,$00
              0302 003b  ld   $3b
              0303 1402  ld   $02,y
              0304 e0ad  jmp  y,$ad
              0305 0102  ld   [$02]
              0306 0000  ld   $00
              0307 0000  ld   $00
              0308 0000  ld   $00
              * 250 times
ENTER:        0400 fc06  bra  .next2
              0401 1519  ld   [$19],y
next14:       0402 c21a  st   [$1a]
              0403 00f8  ld   $f8
NEXT:         0404 811c  adda [$1c]
              0405 e80e  blt  RETURN
.next2:       0406 c21c  st   [$1c]
              0407 0118  ld   [$18]
              0408 8002  adda $02
              0409 d218  st   [$18],x
              040a 0d00  ld   [y,x]
              040b de00  st   [y,x++]
              040c fe00  bra  ac
              040d 0d00  ld   [y,x]
RETURN:       040e 800e  adda $0e
              040f e40f  bgt  $040f
              0410 a001  suba $01
              0411 150f  ld   [$0f],y
              0412 e10e  jmp  y,[$0e]
              0413 0200  nop
LDI:          0414 c21a  st   [$1a]
              0415 0000  ld   $00
              0416 c21b  st   [$1b]
              0417 00f8  ld   $f8
              0418 fc04  bra  NEXT
              0419 0200  nop
LDWI:         041a c21a  st   [$1a]
              041b de00  st   [y,x++]
              041c 0d00  ld   [y,x]
              041d c21b  st   [$1b]
              041e 0118  ld   [$18]
              041f 8001  adda $01
              0420 c218  st   [$18]
              0421 00f6  ld   $f6
              0422 fc04  bra  NEXT
LD:           0423 1200  ld   ac,x
              0424 0500  ld   [x]
              0425 c21a  st   [$1a]
              0426 0000  ld   $00
              0427 c21b  st   [$1b]
              0428 00f7  ld   $f7
              0429 fc04  bra  NEXT
LDW:          042a 1200  ld   ac,x
              042b 8001  adda $01
              042c c21d  st   [$1d]
              042d 0500  ld   [x]
              042e c21a  st   [$1a]
              042f 111d  ld   [$1d],x
              0430 0500  ld   [x]
              0431 c21b  st   [$1b]
              0432 fc04  bra  NEXT
              0433 00f6  ld   $f6
STW:          0434 1200  ld   ac,x
              0435 8001  adda $01
              0436 c21d  st   [$1d]
              0437 011a  ld   [$1a]
              0438 c600  st   [x]
              0439 111d  ld   [$1d],x
              043a 011b  ld   [$1b]
              043b c600  st   [x]
              043c fc04  bra  NEXT
              043d 00f6  ld   $f6
SIGNW:        043e 0118  ld   [$18]
              043f a001  suba $01
              0440 c218  st   [$18]
              0441 011b  ld   [$1b]
              0442 ec4d  bne  .testw3
              0443 e850  blt  .testw4
              0444 c21b  st   [$1b]
              0445 011a  ld   [$1a]
              0446 ec49  bne  .testw1
              0447 fc4a  bra  .testw2
.testw0:      0448 0000  ld   $00
.testw1:      0449 0001  ld   $01
.testw2:      044a c21a  st   [$1a]
              044b fc04  bra  NEXT
              044c 00f4  ld   $f4
.testw3:      044d 0000  ld   $00
              044e fc48  bra  .testw0
              044f c21b  st   [$1b]
.testw4:      0450 00ff  ld   $ff
              0451 c21b  st   [$1b]
              0452 fc4a  bra  .testw2
              0453 0200  nop
BEQ:          0454 011a  ld   [$1a]
              0455 ec59  bne  br1
              0456 0d00  ld   [y,x]
br0:          0457 c218  st   [$18]
              0458 fc04  bra  NEXT
br1:          0459 00f8  ld   $f8
              045a fc04  bra  NEXT
ST:           045b 1200  ld   ac,x
              045c 011a  ld   [$1a]
              045d fc02  bra  next14
              045e c61a  st   [x]
BNE:          045f 011a  ld   [$1a]
              0460 ec57  bne  br0
              0461 0d00  ld   [y,x]
              0462 00f8  ld   $f8
              0463 fc04  bra  NEXT
AND:          0464 1200  ld   ac,x
              0465 011a  ld   [$1a]
              0466 fc02  bra  next14
              0467 2500  anda [x]
ANDI:         0468 211a  anda [$1a]
              0469 c21a  st   [$1a]
              046a 0000  ld   $00
              046b c21b  st   [$1b]
              046c fc04  bra  NEXT
              046d 00f8  ld   $f8
ORI:          046e 411a  ora  [$1a]
              046f c21a  st   [$1a]
              0470 fc04  bra  NEXT
              0471 00f9  ld   $f9
XORI:         0472 611a  xora [$1a]
              0473 c21a  st   [$1a]
              0474 fc04  bra  NEXT
              0475 00f9  ld   $f9
BGT:          0476 011a  ld   [$1a]
              0477 e457  bgt  br0
              0478 0d00  ld   [y,x]
              0479 00f8  ld   $f8
              047a fc04  bra  NEXT
OR:           047b 1200  ld   ac,x
              047c 011a  ld   [$1a]
              047d fc02  bra  next14
              047e 4500  ora  [x]
BLT:          047f 011a  ld   [$1a]
              0480 e857  blt  br0
              0481 0d00  ld   [y,x]
              0482 00f8  ld   $f8
              0483 fc04  bra  NEXT
XOR:          0484 1200  ld   ac,x
              0485 011a  ld   [$1a]
              0486 fc02  bra  next14
              0487 6500  xora [x]
ADDI:         0488 811a  adda [$1a]
              0489 c21a  st   [$1a]
              048a fc04  bra  NEXT
              048b 00f9  ld   $f9
BRA:          048c c218  st   [$18]
              048d 00f9  ld   $f9
              048e fc04  bra  NEXT
              048f 0200  nop
BGE:          0490 011a  ld   [$1a]
              0491 f457  bge  br0
              0492 0d00  ld   [y,x]
              0493 00f8  ld   $f8
              0494 fc04  bra  NEXT
ADD:          0495 1200  ld   ac,x
              0496 011a  ld   [$1a]
              0497 fc02  bra  next14
              0498 8500  adda [x]
BLE:          0499 011a  ld   [$1a]
              049a f857  ble  br0
              049b 0d00  ld   [y,x]
              049c 00f8  ld   $f8
              049d fc04  bra  NEXT
SUB:          049e 1200  ld   ac,x
              049f 011a  ld   [$1a]
              04a0 fc02  bra  next14
              04a1 a500  suba [x]
ADDW:         04a2 1200  ld   ac,x
              04a3 8001  adda $01
              04a4 c21d  st   [$1d]
              04a5 011a  ld   [$1a]
              04a6 8500  adda [x]
              04a7 c21a  st   [$1a]
              04a8 e8ac  blt  .addw0
              04a9 a500  suba [x]
              04aa fcae  bra  .addw1
              04ab 4500  ora  [x]
.addw0:       04ac 2500  anda [x]
              04ad 0200  nop
.addw1:       04ae 3080  anda $80,x
              04af 0500  ld   [x]
              04b0 811b  adda [$1b]
              04b1 111d  ld   [$1d],x
              04b2 8500  adda [x]
              04b3 c21b  st   [$1b]
              04b4 fc04  bra  NEXT
              04b5 00f2  ld   $f2
SUBW:         04b6 1200  ld   ac,x
              04b7 8001  adda $01
              04b8 c21d  st   [$1d]
              04b9 011a  ld   [$1a]
              04ba e8bf  blt  .subw0
              04bb a500  suba [x]
              04bc c21a  st   [$1a]
              04bd fcc2  bra  .subw1
              04be 4500  ora  [x]
.subw0:       04bf c21a  st   [$1a]
              04c0 2500  anda [x]
              04c1 0200  nop
.subw1:       04c2 3080  anda $80,x
              04c3 011b  ld   [$1b]
              04c4 a500  suba [x]
              04c5 111d  ld   [$1d],x
              04c6 a500  suba [x]
              04c7 c21b  st   [$1b]
              04c8 0200  nop
              04c9 fc04  bra  NEXT
              04ca 00f2  ld   $f2
PEEK:         04cb c21d  st   [$1d]
              04cc 9001  adda $01,x
              04cd 0500  ld   [x]
              04ce 1600  ld   ac,y
              04cf 111d  ld   [$1d],x
              04d0 0500  ld   [x]
              04d1 1200  ld   ac,x
              04d2 0d00  ld   [y,x]
              04d3 c21a  st   [$1a]
              04d4 0000  ld   $00
              04d5 c21b  st   [$1b]
              04d6 1519  ld   [$19],y
              04d7 fc04  bra  NEXT
              04d8 00f4  ld   $f4
POKE:         04d9 c21d  st   [$1d]
              04da 9001  adda $01,x
              04db 0500  ld   [x]
              04dc 1600  ld   ac,y
              04dd 111d  ld   [$1d],x
              04de 0500  ld   [x]
              04df 1200  ld   ac,x
              04e0 011a  ld   [$1a]
              04e1 ce00  st   [y,x]
              04e2 1519  ld   [$19],y
              04e3 fc04  bra  NEXT
              04e4 00f5  ld   $f5
LOOKUP:       04e5 c21d  st   [$1d]
              04e6 9001  adda $01,x
              04e7 0500  ld   [x]
              04e8 1600  ld   ac,y
              04e9 111d  ld   [$1d],x
              04ea e000  jmp  y,$00
              04eb 0500  ld   [x]
.lookup0:     04ec c21a  st   [$1a]
              04ed 0000  ld   $00
              04ee c21b  st   [$1b]
              04ef fc04  bra  NEXT
              04f0 00f2  ld   $f2
GOTO:         04f1 d619  st   [$19],y
              04f2 00fe  ld   $fe
              04f3 c218  st   [$18]
              04f4 00f8  ld   $f8
              04f5 fc04  bra  NEXT
              04f6 0200  nop
              04f7 0000  ld   $00
              04f8 0000  ld   $00
              04f9 0000  ld   $00
              * 9 times
              0500 fe00  bra  ac
              0501 fc02  bra  $0502
              0502 1404  ld   $04,y
              0503 e0ec  jmp  y,$ec
              0504 1519  ld   [$19],y
              0505 007c  ld   $7c
              0506 0082  ld   $82
              0507 0082  ld   $82
              0508 0092  ld   $92
              0509 005c  ld   $5c
              050a 0000  ld   $00
              050b 0022  ld   $22
              050c 00be  ld   $be
              050d 0002  ld   $02
              050e 0000  ld   $00
              050f 0018  ld   $18
              0510 0025  ld   $25
              0511 0025  ld   $25
              0512 0025  ld   $25
              0513 001e  ld   $1e
              0514 0004  ld   $04
              0515 002a  ld   $2a
              0516 002a  ld   $2a
              0517 002a  ld   $2a
              0518 001e  ld   $1e
              0519 0020  ld   $20
              051a 00fc  ld   $fc
              051b 0022  ld   $22
              051c 0002  ld   $02
              051d 0004  ld   $04
              051e 003e  ld   $3e
              051f 0010  ld   $10
              0520 0020  ld   $20
              0521 0020  ld   $20
              0522 0010  ld   $10
              0523 001c  ld   $1c
              0524 0022  ld   $22
              0525 0022  ld   $22
              0526 0022  ld   $22
              0527 001c  ld   $1c
              0528 003e  ld   $3e
              0529 0010  ld   $10
              052a 0020  ld   $20
              052b 0020  ld   $20
              052c 001e  ld   $1e
              052d 0000  ld   $00
              052e 0000  ld   $00
              052f 0000  ld   $00
              * 5 times
              0532 0080  ld   $80
              0533 0080  ld   $80
              0534 00fe  ld   $fe
              0535 0080  ld   $80
              0536 0080  ld   $80
              0537 0080  ld   $80
              0538 0080  ld   $80
              0539 00fe  ld   $fe
              053a 0080  ld   $80
              053b 0080  ld   $80
              053c 00fe  ld   $fe
              053d 0002  ld   $02
              053e 0002  ld   $02
              053f 0002  ld   $02
              0540 0002  ld   $02
              0541 0000  ld   $00
              0542 0000  ld   $00
              0543 0000  ld   $00
              * 5 times
              0546 003e  ld   $3e
              0547 0020  ld   $20
              0548 001c  ld   $1c
              0549 0020  ld   $20
              054a 001e  ld   $1e
              054b 0000  ld   $00
              054c 0022  ld   $22
              054d 00be  ld   $be
              054e 0002  ld   $02
              054f 0000  ld   $00
              0550 001c  ld   $1c
              0551 0022  ld   $22
              0552 0022  ld   $22
              0553 0022  ld   $22
              0554 0014  ld   $14
              0555 003e  ld   $3e
              0556 0010  ld   $10
              0557 0020  ld   $20
              0558 0020  ld   $20
              0559 0010  ld   $10
              055a 001c  ld   $1c
              055b 0022  ld   $22
              055c 0022  ld   $22
              055d 0022  ld   $22
              055e 001c  ld   $1c
              055f 001c  ld   $1c
              0560 0022  ld   $22
              0561 0022  ld   $22
              0562 0022  ld   $22
              0563 0014  ld   $14
              0564 001c  ld   $1c
              0565 0022  ld   $22
              0566 0022  ld   $22
              0567 0022  ld   $22
              0568 001c  ld   $1c
              0569 003e  ld   $3e
              056a 0020  ld   $20
              056b 001c  ld   $1c
              056c 0020  ld   $20
              056d 001e  ld   $1e
              056e 003f  ld   $3f
              056f 0024  ld   $24
              0570 0024  ld   $24
              0571 0024  ld   $24
              0572 0018  ld   $18
              0573 003c  ld   $3c
              0574 0002  ld   $02
              0575 0002  ld   $02
              0576 0004  ld   $04
              0577 003e  ld   $3e
              0578 0020  ld   $20
              0579 00fc  ld   $fc
              057a 0022  ld   $22
              057b 0002  ld   $02
              057c 0004  ld   $04
              057d 001c  ld   $1c
              057e 002a  ld   $2a
              057f 002a  ld   $2a
              0580 002a  ld   $2a
              0581 0018  ld   $18
              0582 003e  ld   $3e
              0583 0010  ld   $10
              0584 0020  ld   $20
              0585 0020  ld   $20
              0586 0010  ld   $10
              0587 0000  ld   $00
              0588 0000  ld   $00
              0589 0000  ld   $00
              * 5 times
              058c 00fe  ld   $fe
              058d 0090  ld   $90
              058e 0098  ld   $98
              058f 0094  ld   $94
              0590 0062  ld   $62
              0591 007c  ld   $7c
              0592 0082  ld   $82
              0593 0082  ld   $82
              0594 0082  ld   $82
              0595 007c  ld   $7c
              0596 00fe  ld   $fe
              0597 0040  ld   $40
              0598 0020  ld   $20
              0599 0040  ld   $40
              059a 00fe  ld   $fe
              059b 0038  ld   $38
              059c 0004  ld   $04
              059d 0002  ld   $02
              059e 0004  ld   $04
              059f 0038  ld   $38
              05a0 007c  ld   $7c
              05a1 008a  ld   $8a
              05a2 0092  ld   $92
              05a3 00a2  ld   $a2
              05a4 007c  ld   $7c
              05a5 0000  ld   $00
              05a6 0000  ld   $00
              05a7 0000  ld   $00
              * 91 times
initVcpu:     0600 1000  ld   $00,x
              0601 1404  ld   $04,y
              0602 1000  ld   $00,x
              0603 1404  ld   $04,y
              0604 dc14  st   $14,[y,x++]
              0605 dc78  st   $78,[y,x++]
              0606 dc5b  st   $5b,[y,x++]
              0607 dc12  st   $12,[y,x++]
              0608 dc23  st   $23,[y,x++]
              0609 dc12  st   $12,[y,x++]
              060a dc3e  st   $3e,[y,x++]
              060b dc5f  st   $5f,[y,x++]
              060c dc02  st   $02,[y,x++]
              060d dc14  st   $14,[y,x++]
              060e dc3e  st   $3e,[y,x++]
              060f dc34  st   $34,[y,x++]
              0610 dc9f  st   $9f,[y,x++]
              0611 dc1a  st   $1a,[y,x++]
              0612 dc05  st   $05,[y,x++]
              0613 dc05  st   $05,[y,x++]
              0614 dc34  st   $34,[y,x++]
              0615 dc8b  st   $8b,[y,x++]
              0616 dc1a  st   $1a,[y,x++]
              0617 dc00  st   $00,[y,x++]
              0618 dc08  st   $08,[y,x++]
              0619 dc34  st   $34,[y,x++]
              061a dca5  st   $a5,[y,x++]
              061b dc1a  st   $1a,[y,x++]
              061c dc00  st   $00,[y,x++]
              061d dc10  st   $10,[y,x++]
              061e dc34  st   $34,[y,x++]
              061f dca9  st   $a9,[y,x++]
              0620 dce5  st   $e5,[y,x++]
              0621 dc8b  st   $8b,[y,x++]
              0622 dc34  st   $34,[y,x++]
              0623 dc81  st   $81,[y,x++]
              0624 dc2a  st   $2a,[y,x++]
              0625 dca5  st   $a5,[y,x++]
              0626 dc34  st   $34,[y,x++]
              0627 dca7  st   $a7,[y,x++]
              0628 dc2a  st   $2a,[y,x++]
              0629 dc81  st   $81,[y,x++]
              062a dc68  st   $68,[y,x++]
              062b dc80  st   $80,[y,x++]
              062c dc3e  st   $3e,[y,x++]
              062d dc5f  st   $5f,[y,x++]
              062e dc2f  st   $2f,[y,x++]
              062f dc14  st   $14,[y,x++]
              0630 dc00  st   $00,[y,x++]
              0631 dcd9  st   $d9,[y,x++]
              0632 dca7  st   $a7,[y,x++]
              0633 dc8c  st   $8c,[y,x++]
              0634 dc33  st   $33,[y,x++]
              0635 dc2a  st   $2a,[y,x++]
              0636 dc9f  st   $9f,[y,x++]
              0637 dcd9  st   $d9,[y,x++]
              0638 dca7  st   $a7,[y,x++]
              0639 dc2a  st   $2a,[y,x++]
              063a dc81  st   $81,[y,x++]
              063b dca2  st   $a2,[y,x++]
              063c dc81  st   $81,[y,x++]
              063d dc34  st   $34,[y,x++]
              063e dc81  st   $81,[y,x++]
              063f dc1a  st   $1a,[y,x++]
              0640 dc00  st   $00,[y,x++]
              0641 dc01  st   $01,[y,x++]
              0642 dca2  st   $a2,[y,x++]
              0643 dca7  st   $a7,[y,x++]
              0644 dc34  st   $34,[y,x++]
              0645 dca7  st   $a7,[y,x++]
              0646 dcb6  st   $b6,[y,x++]
              0647 dca9  st   $a9,[y,x++]
              0648 dc3e  st   $3e,[y,x++]
              0649 dc7f  st   $7f,[y,x++]
              064a dc22  st   $22,[y,x++]
              064b dc14  st   $14,[y,x++]
              064c dc01  st   $01,[y,x++]
              064d dca2  st   $a2,[y,x++]
              064e dc8b  st   $8b,[y,x++]
              064f dc34  st   $34,[y,x++]
              0650 dc8b  st   $8b,[y,x++]
              0651 dc14  st   $14,[y,x++]
              0652 dc01  st   $01,[y,x++]
              0653 dca2  st   $a2,[y,x++]
              0654 dca5  st   $a5,[y,x++]
              0655 dc34  st   $34,[y,x++]
              0656 dca5  st   $a5,[y,x++]
              0657 dc68  st   $68,[y,x++]
              0658 dcff  st   $ff,[y,x++]
              0659 dc72  st   $72,[y,x++]
              065a dca0  st   $a0,[y,x++]
              065b dc3e  st   $3e,[y,x++]
              065c dc5f  st   $5f,[y,x++]
              065d dc1a  st   $1a,[y,x++]
              065e dc2a  st   $2a,[y,x++]
              065f dc9f  st   $9f,[y,x++]
              0660 dc72  st   $72,[y,x++]
              0661 dc08  st   $08,[y,x++]
              0662 dc3e  st   $3e,[y,x++]
              0663 dc54  st   $54,[y,x++]
              0664 dc68  st   $68,[y,x++]
              0665 dc1a  st   $1a,[y,x++]
              0666 dcf7  st   $f7,[y,x++]
              0667 dcff  st   $ff,[y,x++]
              0668 dca2  st   $a2,[y,x++]
              0669 dc9f  st   $9f,[y,x++]
              066a dc34  st   $34,[y,x++]
              066b dc9f  st   $9f,[y,x++]
              066c dc8c  st   $8c,[y,x++]
              066d dc0b  st   $0b,[y,x++]
              066e dc1a  st   $1a,[y,x++]
              066f dc11  st   $11,[y,x++]
              0670 dc01  st   $01,[y,x++]
              0671 dc34  st   $34,[y,x++]
              0672 dca5  st   $a5,[y,x++]
              0673 dc14  st   $14,[y,x++]
              0674 dc00  st   $00,[y,x++]
              0675 dc34  st   $34,[y,x++]
              0676 dca1  st   $a1,[y,x++]
              0677 dc34  st   $34,[y,x++]
              0678 dca3  st   $a3,[y,x++]
              0679 dc34  st   $34,[y,x++]
              067a dc93  st   $93,[y,x++]
              067b dc34  st   $34,[y,x++]
              067c dc89  st   $89,[y,x++]
              067d dc34  st   $34,[y,x++]
              067e dcb3  st   $b3,[y,x++]
              067f dc34  st   $34,[y,x++]
              0680 dc8d  st   $8d,[y,x++]
              0681 dc1a  st   $1a,[y,x++]
              0682 dc00  st   $00,[y,x++]
              0683 dc18  st   $18,[y,x++]
              0684 dc34  st   $34,[y,x++]
              0685 dcb1  st   $b1,[y,x++]
              0686 dc34  st   $34,[y,x++]
              0687 dc83  st   $83,[y,x++]
              0688 dc14  st   $14,[y,x++]
              0689 dc5a  st   $5a,[y,x++]
              068a dc34  st   $34,[y,x++]
              068b dc8f  st   $8f,[y,x++]
              068c dcf1  st   $f1,[y,x++]
              068d dc05  st   $05,[y,x++]
              068e 1000  ld   $00,x
              068f 1405  ld   $05,y
              0690 dccb  st   $cb,[y,x++]
              0691 dca5  st   $a5,[y,x++]
              0692 dc34  st   $34,[y,x++]
              0693 dcaf  st   $af,[y,x++]
              0694 dc72  st   $72,[y,x++]
              0695 dc78  st   $78,[y,x++]
              0696 dc3e  st   $3e,[y,x++]
              0697 dc5f  st   $5f,[y,x++]
              0698 dc0b  st   $0b,[y,x++]
              0699 dc14  st   $14,[y,x++]
              069a dc0a  st   $0a,[y,x++]
              069b dc34  st   $34,[y,x++]
              069c dc89  st   $89,[y,x++]
              069d dccb  st   $cb,[y,x++]
              069e dca5  st   $a5,[y,x++]
              069f dca2  st   $a2,[y,x++]
              06a0 dca3  st   $a3,[y,x++]
              06a1 dca2  st   $a2,[y,x++]
              06a2 dca1  st   $a1,[y,x++]
              06a3 dc34  st   $34,[y,x++]
              06a4 dca3  st   $a3,[y,x++]
              06a5 dca2  st   $a2,[y,x++]
              06a6 dca1  st   $a1,[y,x++]
              06a7 dc3e  st   $3e,[y,x++]
              06a8 dc90  st   $90,[y,x++]
              06a9 dc1a  st   $1a,[y,x++]
              06aa dc72  st   $72,[y,x++]
              06ab dc2b  st   $2b,[y,x++]
              06ac dca2  st   $a2,[y,x++]
              06ad dca1  st   $a1,[y,x++]
              06ae dca2  st   $a2,[y,x++]
              06af dca1  st   $a1,[y,x++]
              06b0 dc34  st   $34,[y,x++]
              06b1 dca1  st   $a1,[y,x++]
              06b2 dc1a  st   $1a,[y,x++]
              06b3 dcc4  st   $c4,[y,x++]
              06b4 dcff  st   $ff,[y,x++]
              06b5 dca2  st   $a2,[y,x++]
              06b6 dc8f  st   $8f,[y,x++]
              06b7 dc3e  st   $3e,[y,x++]
              06b8 dc99  st   $99,[y,x++]
              06b9 dc36  st   $36,[y,x++]
              06ba dc2a  st   $2a,[y,x++]
              06bb dca3  st   $a3,[y,x++]
              06bc dc68  st   $68,[y,x++]
              06bd dc10  st   $10,[y,x++]
              06be dc3e  st   $3e,[y,x++]
              06bf dc54  st   $54,[y,x++]
              06c0 dc36  st   $36,[y,x++]
              06c1 dc1a  st   $1a,[y,x++]
              06c2 dcff  st   $ff,[y,x++]
              06c3 dcff  st   $ff,[y,x++]
              06c4 dca2  st   $a2,[y,x++]
              06c5 dc8f  st   $8f,[y,x++]
              06c6 dc34  st   $34,[y,x++]
              06c7 dc8f  st   $8f,[y,x++]
              06c8 dc1a  st   $1a,[y,x++]
              06c9 dca6  st   $a6,[y,x++]
              06ca dcff  st   $ff,[y,x++]
              06cb dca2  st   $a2,[y,x++]
              06cc dc8f  st   $8f,[y,x++]
              06cd dc3e  st   $3e,[y,x++]
              06ce dc90  st   $90,[y,x++]
              06cf dc4b  st   $4b,[y,x++]
              06d0 dc2a  st   $2a,[y,x++]
              06d1 dca3  st   $a3,[y,x++]
              06d2 dc68  st   $68,[y,x++]
              06d3 dc80  st   $80,[y,x++]
              06d4 dc3e  st   $3e,[y,x++]
              06d5 dc54  st   $54,[y,x++]
              06d6 dc4b  st   $4b,[y,x++]
              06d7 dc14  st   $14,[y,x++]
              06d8 dc01  st   $01,[y,x++]
              06d9 dca2  st   $a2,[y,x++]
              06da dc8f  st   $8f,[y,x++]
              06db dc34  st   $34,[y,x++]
              06dc dc8f  st   $8f,[y,x++]
              06dd dc14  st   $14,[y,x++]
              06de dc08  st   $08,[y,x++]
              06df dca2  st   $a2,[y,x++]
              06e0 dc8f  st   $8f,[y,x++]
              06e1 dc5b  st   $5b,[y,x++]
              06e2 dc94  st   $94,[y,x++]
              06e3 dc14  st   $14,[y,x++]
              06e4 dca0  st   $a0,[y,x++]
              06e5 dca2  st   $a2,[y,x++]
              06e6 dcaf  st   $af,[y,x++]
              06e7 dc68  st   $68,[y,x++]
              06e8 dcff  st   $ff,[y,x++]
              06e9 dc34  st   $34,[y,x++]
              06ea dca7  st   $a7,[y,x++]
              06eb dc1a  st   $1a,[y,x++]
              06ec dc00  st   $00,[y,x++]
              06ed dc10  st   $10,[y,x++]
              06ee dca2  st   $a2,[y,x++]
              06ef dca7  st   $a7,[y,x++]
              06f0 dc34  st   $34,[y,x++]
              06f1 dcab  st   $ab,[y,x++]
              06f2 dcd9  st   $d9,[y,x++]
              06f3 dcab  st   $ab,[y,x++]
              06f4 dc1a  st   $1a,[y,x++]
              06f5 dc00  st   $00,[y,x++]
              06f6 dc01  st   $01,[y,x++]
              06f7 dca2  st   $a2,[y,x++]
              06f8 dcab  st   $ab,[y,x++]
              06f9 dc34  st   $34,[y,x++]
              06fa dcab  st   $ab,[y,x++]
              06fb dc3e  st   $3e,[y,x++]
              06fc dc76  st   $76,[y,x++]
              06fd dc60  st   $60,[y,x++]
              06fe dc2a  st   $2a,[y,x++]
              06ff dca3  st   $a3,[y,x++]
              0700 dc68  st   $68,[y,x++]
              0701 dc7f  st   $7f,[y,x++]
              0702 dc34  st   $34,[y,x++]
              0703 dc81  st   $81,[y,x++]
              0704 dc1a  st   $1a,[y,x++]
              0705 dc91  st   $91,[y,x++]
              0706 dcff  st   $ff,[y,x++]
              0707 dca2  st   $a2,[y,x++]
              0708 dc81  st   $81,[y,x++]
              0709 dc3e  st   $3e,[y,x++]
              070a dc99  st   $99,[y,x++]
              070b dc7e  st   $7e,[y,x++]
              070c dc14  st   $14,[y,x++]
              070d dc77  st   $77,[y,x++]
              070e dc34  st   $34,[y,x++]
              070f dc81  st   $81,[y,x++]
              0710 dc14  st   $14,[y,x++]
              0711 dc10  st   $10,[y,x++]
              0712 dca2  st   $a2,[y,x++]
              0713 dc81  st   $81,[y,x++]
              0714 dc5b  st   $5b,[y,x++]
              0715 dc82  st   $82,[y,x++]
              0716 dc2a  st   $2a,[y,x++]
              0717 dca7  st   $a7,[y,x++]
              0718 dc5b  st   $5b,[y,x++]
              0719 dc81  st   $81,[y,x++]
              071a dc14  st   $14,[y,x++]
              071b dc02  st   $02,[y,x++]
              071c dcd9  st   $d9,[y,x++]
              071d dc81  st   $81,[y,x++]
              071e dc2a  st   $2a,[y,x++]
              071f dc93  st   $93,[y,x++]
              0720 dca2  st   $a2,[y,x++]
              0721 dca7  st   $a7,[y,x++]
              0722 dc34  st   $34,[y,x++]
              0723 dcab  st   $ab,[y,x++]
              0724 dc14  st   $14,[y,x++]
              0725 dc3f  st   $3f,[y,x++]
              0726 dcd9  st   $d9,[y,x++]
              0727 dcab  st   $ab,[y,x++]
              0728 dc1a  st   $1a,[y,x++]
              0729 dc00  st   $00,[y,x++]
              072a dc01  st   $01,[y,x++]
              072b dca2  st   $a2,[y,x++]
              072c dcab  st   $ab,[y,x++]
              072d dc34  st   $34,[y,x++]
              072e dcab  st   $ab,[y,x++]
              072f dc2a  st   $2a,[y,x++]
              0730 dcaf  st   $af,[y,x++]
              0731 dc68  st   $68,[y,x++]
              0732 dc08  st   $08,[y,x++]
              0733 dca2  st   $a2,[y,x++]
              0734 dc8f  st   $8f,[y,x++]
              0735 dc34  st   $34,[y,x++]
              0736 dc85  st   $85,[y,x++]
              0737 dc14  st   $14,[y,x++]
              0738 dc01  st   $01,[y,x++]
              0739 dca2  st   $a2,[y,x++]
              073a dc85  st   $85,[y,x++]
              073b dc34  st   $34,[y,x++]
              073c dc85  st   $85,[y,x++]
              073d dc68  st   $68,[y,x++]
              073e dc08  st   $08,[y,x++]
              073f dc3e  st   $3e,[y,x++]
              0740 dc5f  st   $5f,[y,x++]
              0741 dcb4  st   $b4,[y,x++]
              0742 dc14  st   $14,[y,x++]
              0743 dc2a  st   $2a,[y,x++]
              0744 dc8c  st   $8c,[y,x++]
              0745 dcb6  st   $b6,[y,x++]
              0746 dc14  st   $14,[y,x++]
              0747 dc20  st   $20,[y,x++]
              0748 dcd9  st   $d9,[y,x++]
              0749 dcab  st   $ab,[y,x++]
              074a dc1a  st   $1a,[y,x++]
              074b dc00  st   $00,[y,x++]
              074c dc01  st   $01,[y,x++]
              074d dca2  st   $a2,[y,x++]
              074e dcab  st   $ab,[y,x++]
              074f dc34  st   $34,[y,x++]
              0750 dcab  st   $ab,[y,x++]
              0751 dc3e  st   $3e,[y,x++]
              0752 dc76  st   $76,[y,x++]
              0753 dca5  st   $a5,[y,x++]
              0754 dcf1  st   $f1,[y,x++]
              0755 dc06  st   $06,[y,x++]
              0756 1000  ld   $00,x
              0757 1406  ld   $06,y
              0758 dc23  st   $23,[y,x++]
              0759 dc08  st   $08,[y,x++]
              075a dc3e  st   $3e,[y,x++]
              075b dc5f  st   $5f,[y,x++]
              075c dcfe  st   $fe,[y,x++]
              075d dc14  st   $14,[y,x++]
              075e dc01  st   $01,[y,x++]
              075f dca2  st   $a2,[y,x++]
              0760 dcaf  st   $af,[y,x++]
              0761 dcd9  st   $d9,[y,x++]
              0762 dca5  st   $a5,[y,x++]
              0763 dc2a  st   $2a,[y,x++]
              0764 dc8d  st   $8d,[y,x++]
              0765 dcd9  st   $d9,[y,x++]
              0766 dc83  st   $83,[y,x++]
              0767 dc2a  st   $2a,[y,x++]
              0768 dc89  st   $89,[y,x++]
              0769 dca2  st   $a2,[y,x++]
              076a dcb3  st   $b3,[y,x++]
              076b dc34  st   $34,[y,x++]
              076c dcb3  st   $b3,[y,x++]
              076d dc2a  st   $2a,[y,x++]
              076e dcb1  st   $b1,[y,x++]
              076f dca2  st   $a2,[y,x++]
              0770 dcb3  st   $b3,[y,x++]
              0771 dc34  st   $34,[y,x++]
              0772 dcb1  st   $b1,[y,x++]
              0773 dc14  st   $14,[y,x++]
              0774 dc32  st   $32,[y,x++]
              0775 dca2  st   $a2,[y,x++]
              0776 dcaf  st   $af,[y,x++]
              0777 dc34  st   $34,[y,x++]
              0778 dc83  st   $83,[y,x++]
              0779 dc23  st   $23,[y,x++]
              077a dcb2  st   $b2,[y,x++]
              077b dc5b  st   $5b,[y,x++]
              077c dc84  st   $84,[y,x++]
              077d dccb  st   $cb,[y,x++]
              077e dc83  st   $83,[y,x++]
              077f dc34  st   $34,[y,x++]
              0780 dc8d  st   $8d,[y,x++]
              0781 dc14  st   $14,[y,x++]
              0782 dc02  st   $02,[y,x++]
              0783 dcb6  st   $b6,[y,x++]
              0784 dc8d  st   $8d,[y,x++]
              0785 dc3e  st   $3e,[y,x++]
              0786 dc90  st   $90,[y,x++]
              0787 dc4c  st   $4c,[y,x++]
              0788 dc14  st   $14,[y,x++]
              0789 dc00  st   $00,[y,x++]
              078a dcb6  st   $b6,[y,x++]
              078b dcb3  st   $b3,[y,x++]
              078c dc34  st   $34,[y,x++]
              078d dcb3  st   $b3,[y,x++]
              078e dc2a  st   $2a,[y,x++]
              078f dcb1  st   $b1,[y,x++]
              0790 dca2  st   $a2,[y,x++]
              0791 dcb3  st   $b3,[y,x++]
              0792 dc34  st   $34,[y,x++]
              0793 dcb1  st   $b1,[y,x++]
              0794 dc14  st   $14,[y,x++]
              0795 dc0a  st   $0a,[y,x++]
              0796 dc5b  st   $5b,[y,x++]
              0797 dc12  st   $12,[y,x++]
              0798 dc14  st   $14,[y,x++]
              0799 dc32  st   $32,[y,x++]
              079a dca2  st   $a2,[y,x++]
              079b dcaf  st   $af,[y,x++]
              079c dc34  st   $34,[y,x++]
              079d dc83  st   $83,[y,x++]
              079e dc23  st   $23,[y,x++]
              079f dcb2  st   $b2,[y,x++]
              07a0 dc5b  st   $5b,[y,x++]
              07a1 dc84  st   $84,[y,x++]
              07a2 dccb  st   $cb,[y,x++]
              07a3 dc83  st   $83,[y,x++]
              07a4 dc34  st   $34,[y,x++]
              07a5 dc8d  st   $8d,[y,x++]
              07a6 dc14  st   $14,[y,x++]
              07a7 dc3f  st   $3f,[y,x++]
              07a8 dcd9  st   $d9,[y,x++]
              07a9 dc83  st   $83,[y,x++]
              07aa dcf1  st   $f1,[y,x++]
              07ab dc05  st   $05,[y,x++]
              07ac 00fe  ld   $fe
              07ad c218  st   [$18]
              07ae 0004  ld   $04
              07af c219  st   [$19]
              07b0 150f  ld   [$0f],y
              07b1 e10e  jmp  y,[$0e]
              07b2 0200  nop
07b3
