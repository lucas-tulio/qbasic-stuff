SCREEN 13
CLS

rows = 25
cols = 40

' Here I`ll use LOCATE to move the cursor on the screen
' and then print happy litte faces using different colors

FOR I = 0 TO 255
  COLOR I
  LOCATE I \ cols + 1, I MOD cols + 1
  PRINT ""
NEXT

FOR I = 0 TO 255
  COLOR I
  LOCATE I \ cols + 1 + 10, I MOD cols + 1
  PRINT ""
NEXT

