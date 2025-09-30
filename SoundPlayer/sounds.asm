.code

; Kernel 32 import API
externdef Beep:proc

; Begin function
PlaySounds proc
	; make rsp 16-byte aligned
	sub rsp, 28h
	
	; copies first arg into r12 (a pointer to notes)
	mov r12, rcx
	
	; copies second arg into r13d (the loop counter)
	mov r13d, edx

playloop:
	; copies frequency into ecx
	mov ecx, dword ptr [r12]

	;copies the duration into edx
	mov edx, dword ptr [r12+4]
	
	; calls Beep (Beep(DWORD dwFreq, DWORD dwDuration);))
	call Beep
	
	; add 8 bytes to r12, 4 for freq and 4 for dur (to skip to next pair)
	add r12, 8

	; decrement r13d (the pair counter)
	dec r13d

	; if counter isn't zero, jump to playloop
	jnz playloop

	;return rsp to its originally state before beginning the program
	add rsp, 28h	

	ret
PlaySounds endp

end
