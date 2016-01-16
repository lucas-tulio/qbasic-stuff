SCREEN 13
CLS

PRINT "WASD to move"
PRINT "ESC to exit"

rows = 25
cols = 40

DIM character AS STRING
character = ""
x = 1
y = 1

DO
 
  ' Reading input
  DO
    LET k$ = INKEY$
  LOOP UNTIL k$ <> ""

  LOCATE y, x
  PRINT " "

  ' Interpreting input
  asciikey = ASC(k$)
  SELECT CASE asciikey
    CASE 119
      y = y - 1
    CASE 97
      x = x - 1
    CASE 115
      y = y + 1
    CASE 100
      x = x + 1
  END SELECT

  ' Bounds
  IF x < 1 THEN
    x = 1
  ELSEIF x > cols THEN
    x = cols
  END IF

  IF y < 1 THEN
    y = 1
  ELSEIF y > rows THEN
    y = rows
  END IF

  ' Apply screen cursor position and print the character
  LOCATE y, x
  PRINT character

LOOP UNTIL k$ = CHR$(27)

