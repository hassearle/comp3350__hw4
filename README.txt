# comp3350__hw4

Homework #4 
– Anagram


Due: 11/07/2017 by 11:59pm


You may submit the homework up to 24 hours late for a 20% penalty.




Deliverables:                                                                

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=



Submit the source file (.asm) to Canvas before the due date. 
 This should be
the only file you should submit to Canvas.

The 
file should be named {USERNAME}-HW{NUMBER}.asm

E.g. abc0003-HW4.asm

 



Specifications:

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=



The objective of this assignment is to create a program that will determine

if two strings are anagrams. If the two strings are anagrams, then EAX will

have the value 1 after the code has completed.  If they are not anagrams, 

then EAX will have the value 0.

 Two .java implementations are in the “files”
 section in Canvas.  Feel free 
to use one of these or another method. 

All 
“high level” directives are not allowed on this homework. 
(e.g. .IF 
.ENDIF .REPEAT, etc)





Design:

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=



Create a BYTE array with the label ‘s1’. This array may be of any length 

between 2 and 100.

Create a BYTE array with the label ‘s2’. This array 
should be the same 
length as ‘s1’.

You may create any other values you deem 
necessary.

The program should compare the two strings to determine if they 
are anagrams.

Assume that each of the arrays (s1 and s2) will be the same 
length.  Also 
assume that all characters in the array will be capital letters.


For example:

s1 BYTE “GARDEN”

 s2 BYTE “DANGER”

 After the code completes EAX 
would have the value 1.  (These are anagrams)

Another example:

s1 BYTE “CODE”


s2 BYTE “DOGS”

 After the code completes EAX would have the value 0.  
(These are not
anagrams)