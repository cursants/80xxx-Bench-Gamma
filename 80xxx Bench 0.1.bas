SCREEN 12

DIM startTime AS SINGLE, endTime AS SINGLE
DIM i AS INTEGER

startTime = TIMER
FOR i = 1 TO 1000
    LINE (RND * 640, RND * 480)-(RND * 640, RND * 480), RND * 15
NEXT i
endTime = TIMER

PRINT "Time to draw 1000 lines: "; endTime - startTime; " seconds"

startTime = TIMER
FOR i = 1 TO 100
    PAINT (RND * 640, RND * 480), RND * 15, RND * 15
NEXT i
endTime = TIMER

PRINT "Time to fill the screen 100 times: "; endTime - startTime; " seconds"

startTime = TIMER
FOR i = 1 TO 1000
    CIRCLE (RND * 640, RND * 480), RND * 100, RND * 15
NEXT i
endTime = TIMER

PRINT "Time to draw 1000 circles: "; endTime - startTime; " seconds"

PRINT "Press any key to exit..."
DO WHILE INKEY$ = ""
LOOP

SCREEN 0
END