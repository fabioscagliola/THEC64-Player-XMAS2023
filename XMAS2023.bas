100 PRINT CHR$(147)
110 PRINT "xmas 2023"
120 PRINT "feliz navidad"
130 PRINT "by jose feliciano"

140 REM **** PLAYER ****

150 S = 54272
160 FOR T = 0 TO 24 : POKE S + T, 0 : NEXT
170 POKE S + 24, 15
180 TM = 1975 * 1.5
190 WF = 16
200 A = 2 ^ (1 / 12)
210 POKE S + 5,  3 * 16 + 7
220 POKE S + 6, 10 * 16 + 9
230 READ A$, LT
240 IF A$ = "end" THEN END
250 NO$ = LEFT$(A$, 1)
260 SH$ = MID$(A$, 2, 1)
270 OCT = VAL(MID$(A$, 3, 1))
280 N = 2 * (ASC(NO$) - 65) - 1
290 IF NO$ = "p" THEN DR = INT(TM / LT) : GOTO 450
300 IF NO$ = "f" THEN N = N - 1 : GOTO 340
310 IF NO$ = "g" THEN N = N - 1 : GOTO 340
320 IF NO$ = "a" THEN N = 12 : GOTO 340
330 IF NO$ = "b" THEN N = 14
340 IF SH$ = "#" THEN N = N + 1
350 FS = INT((466 * A ^ N) * 2 ^ OCT)
360 FH = INT(FS / 256)
370 FL = FS - 256 * FH
380 POKE S, FL
390 POKE S + 1, FH
400 DR = INT(TM / LT)
410 POKE S + 4, WF + 1
420 FOR T = 1 TO DR : NEXT
430 POKE S + 4, WF
440 GOTO 230
450 FOR T = 1 TO DR : NEXT
460 GOTO 230

470 REM **** SONG DATA ****

480 REM
490 REM Duration
500 REM
510 REM 1      4
520 REM 1/2.   6
530 REM 1/2    8
540 REM 1/4.  12
550 REM 1/4   16
560 REM 1/8.  24
570 REM 1/8   32
580 REM

590 DATA "p  ", 16, "p  ", 32, "g 3", 32, "c 4", 16, "b 3", 32, "c 4", 32
600 DATA "a 3", 16, "a 2", 32, "f 2", 32, "d 2", 32, "c 2", 16, "b 1", 32
610 DATA "b 1", 16, "f 2", 32, "a 3", 32, "d 4", 16, "c 4", 32, "a 3", 32
620 DATA "g 3", 16, "g 4", 32, "e 4", 32, "c 4", 32, "a 3", 12

630 DATA "g 3", 16, "e 3", 32, "g 3", 32, "c 4", 16, "b 3", 32, "c 4", 32
640 DATA "a 3", 12, "f 3", 32, "a 3", 16, "a 3", 16
650 DATA "g 3", 32, "g 3", 32, "g 3", 32, "g 3", 32, "f 3", 16, "f 3", 32, "e 3", 32
660 DATA "e 3", 12

670 DATA "end",  0

