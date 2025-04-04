section .data
    result_char db 0, 10
    len_result equ $ - result_char

section .text
    global _start

_start:
check_add:
    mov eax, 3
    mov ebx, 4
    add eax, ebx
    
    add eax, '0'
    mov [result_char], al

    mov eax, 1
    mov edi, 1
    mov esi, result_char
    mov edx, len_result
    syscall

done:
    mov eax, 60
    xor edi, edi
    syscall
