'Early metaprogramming
'comments fixed
'============
'dimensions the variables
DIM Q AS STRING, CRLF AS STRING, DIMMER AS STRING, DONTLEAVEME AS STRING, GETREADY AS STRING, OPENING AS STRING, ENTER AS STRING, PRINTIT AS STRING, POWER AS STRING, WHEREAREYOUGOING AS STRING, TRANSFER AS STRING, LOOPY AS STRING, X AS INTEGER, Y AS INTEGER
'============
'makes sure I have as much memory available as possible for variables
CLEAR , , 2048
'============
'deletes the old file
KILL "C:\LANGS\COMPUTER\BASIC\Q\WRITEIT.BAS"
'============
'makes and opens the new files
OPEN "C:\LANGS\COMPUTER\BASIC\Q\WRITEIT.BAS" FOR BINARY AS #1
'============
Q = CHR$(34)
CRLF = CHR$(10) + CHR$(13)
DIMMER = "DIM QUOTE2 AS STRING, ENTER2 AS STRING, PRINTIT2 AS STRING, POWER2 AS STRING
DONTLEAVEME = "KILL " + Q + "C:\LANGS\COMPUTER\BASIC\Q\WRITTEN.BAS" + Q
GETREADY = "CLEAR"
OPENING = "OPEN " + Q + "C:\LANGS\COMPUTER\BASIC\Q\WRITTEN.BAS" + Q + " FOR BINARY AS #1" + Q
ENTER = "ENTER2 = CHR$(13) + CHR$(10)"
PRINTIT = "PRINTIT2 = " + Q + "PRINT " + Q
POWER = "POWER2 = " + Q + "^" + Q
WHEREAREYOUGOING = "CLOSE" + CRLF + "CLEAR"
TRANSFER = "RUN " + Q + "C:\LANGS\COMPUTER\BASIC\Q\WRITTEN.BAS" + Q
'============
PUT #1, , DIMMER
PUT #1, , CRLF
PUT #1, , DONTLEAVEME
PUT #1, , CRLF
PUT #1, , GETREADY
PUT #1, , CRLF
PUT #1, , OPENING
PUT #1, , CRLF
PUT #1, , ENTER
PUT #1, , CRLF
PUT #1, , PRINTIT
PUT #1, , CRLF
PUT #1, , POWER
PUT #1, , CRLF
CLS
'============
'these allow the program to have a slight amount of real usefulness by taking 
'user input and producing figures from it on the fly
INPUT "number (not too big now)"; X
INPUT "power to go up to (please keep this small too)"; Y
LOOPY = "FOR I = 2 TO " + STR$(Y) + CRLF + "FINAL = PRINTIT2 + " + Q + STR$(X) + Q " + POWER2 + STR$(Y) + ENTER2" + CRLF + PUT #1, , FINAL" + CRLF + "NEXT I"
'============
'these do the most vital stuff except killing the old file and opening the new one
PUT #1, , LOOPY
PUT #1, , CRLF
PUT #1, , WHEREAREYOUGOING
PUT #1, , CRLF
PUT #1, , TRANSFER
'============
'cleans everything up
CLOSE
CLEAR
RUN "C:\LANGS\COMPUTER\BASIC\Q\WRITEIT.BAS"