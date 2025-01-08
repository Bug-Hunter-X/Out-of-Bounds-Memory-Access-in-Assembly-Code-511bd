mov ecx, esi ; save esi
mov esi, 0 ; loop counter
mov eax, array_length ; get array length
cmp ecx, eax ; check if the index is greater than the array length
jge out_of_bounds_error ; jump to error handler if index is out of bounds

mov eax, [ebx+ecx*4+0x10] ;Access memory only after checking the bounds
mov ecx, [eax]
add eax, 5
mov [ebx+ecx*4+0x12], eax
jmp end_of_function

out_of_bounds_error:
; Handle out of bounds error, for instance by exiting the program or setting an error code
mov eax, -1 ; indicates an error
jmp end_of_function

end_of_function: ; exit gracefully
