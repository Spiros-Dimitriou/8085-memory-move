# 8085-memory-move
Move an area of the memory to another point in memory (copy-paste)

General principle:
Source low through source high is copied to destination low and ascending.

copy-pastev1.asm
This is a piece of code that copies the contents between LOW and HIGH labels to the address in DE.
This is done so the labes LOW and HIGH can be placed anywhere in the program.

copy-pastev2.asm
Another code that copies and pastes.
Can be used with the LOW and HIGH address finding code of v1.
The difference is that less lines of code have been used.

copy-pastev3.asm
Same principle but with more lines of code aiming for a more understandable code.
The moving is now a subroutine.

Notes:
There is an obvious bug here. What if the destination low is between source low and source high?
In that case the destination high needs to be calculated (dstLow+(srcHigh-srcLow)) and the copying needs to be descending.