;Author: Ash Searle 
;Username: kss0024 
;Homework #4 
 
;public class AnagramReplace { 
;  public static void main(String[] args) { 
;    String s1 = "GARDENA"; 
;    String s2 = "DANGERZ"; 
;    int eax = 1; 
;    for(int i = 0; i < s1.length(); i++) { 
;      char c = s1.charAt(i); 
;      for(int j = 0; j < s2.length(); j++) { 
;        if(c == s2.charAt(j)) { 
;          s2 = s2.substring(0, j) + s2.substring(j + 1); 
;          break; 
;        } 
;      } 
;    } 
;    if(s2.length() > 0){ 
;      eax = 0; 
;    } 
;  } 
;} 
 
.386 
.model flat, stdcall 
.stack 4096 
ExitProcess PROTO, dwExitCode:DWORD 
.data 
  s1 byte 1,2,3,4,5,6 
  s2 byte "A,B,C,D,E,F" 
 
.code 
  main PROC 
    mov eax, 0				; y/n anagram 
    mov ebx, lengthof s1    ; i < s1.length() 
    mov ecx, 0 
    mov esi, 0				; i = 0 
    ForLoop1: 
		mov ch, s1[esi]		; saves s1[i] for compare
		push esi				; conv i to j
		mov esi, 0			; j = 0
	 
		ForLoop2: 
			mov cl, s2[esi]	; saves s2[j] for compare
			inc esi			; j++ 
			cmp esi, ebx	; j < s2.length()
		jnz ForLoop2
		
		pop esi				; conv j to i
		inc esi				; i++ 
		cmp esi, ebx		; i < s1.length() 
    jnz ForLoop1 
 
     
 
 
    invoke ExitProcess, 0 
  main endp 
end main
