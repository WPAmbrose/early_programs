DIM X, RT AS DOUBLE
PRINT "CALQL8OR" + CHR$(13) + CHR$(10)
FOR X = 1 TO 10000: NEXT X
PRINT "a program written in QBASIC by William Ambrose" + CHR$(13) + CHR$(10)
FOR X = 1 TO 8000: NEXT X
PRINT "valid operators are +, -, * for multiplication, / for division, \ for"
FOR X = 1 TO 4000: NEXT X
PRINT "integer division (no remainder or decimal places), ^ for exponentiation"
FOR X = 1 TO 4000: NEXT X
PRINT "or raising to a power, S for the square root, C to clear the running total,"
FOR X = 1 TO 4000: NEXT X
PRINT "and Esc to quit" + CHR$(10) + CHR$(13)
FOR X = 1 TO 8000: NEXT X
INPUT "number please"; RT
DO
    IF O$ = "C" THEN
        O$ = CHR$(13) + CHR$(10) + "number"
        PRINT O$;
        INPUT RT
    ELSE
        PRINT RT
    END IF
    PRINT "operator?";
    DO
        IF INKEY$ = CHR$(27) THEN
            Q$ = "X"
            EXIT DO
        END IF
        O$ = UCASE$(INKEY$)
    LOOP UNTIL O$ = "+" OR O$ = "-" OR O$ = "*" OR O$ = "/" OR O$ = "\" OR O$ = "^" OR O$ = "C" OR O$ = "S"
    LOCATE , 1: PRINT SPACE$(10); : LOCATE , 1
    IF Q$ = "X" THEN EXIT DO
    SELECT CASE O$
        CASE IS = "+"
            INPUT "plus (+)"; X
            RT = RT + X
        CASE IS = "-"
            INPUT "minus (-)"; X
            RT = RT - X
        CASE IS = "*"
            INPUT "times (*)"; X
            RT = RT * X
        CASE IS = "/"
            INPUT "divided by (/)"; X
            RT = RT / X
        CASE IS = "^"
            INPUT "to the power of (^)"; X
            RT = RT ^ X
        CASE IS = "\"
            INPUT "integer division (\)"; X
            RT = RT \ X
        CASE IS = "S"
            PRINT "square root"
            RT = SQR(RT)
        CASE IS = "C"
            PRINT "CLEAR"
            RT = 0
    END SELECT
LOOP
PRINT "goodbye"
CLEAR