section .data
    msg_equal db "Equal", 10
    len_equal equ $ - msg_equal

section .text
    global _start

_start:
check_equal:
    mov eax, 20
    mov ebx, 20

    cmp eax, ebx
    jne done
    
    mov eax, 1
    mov edi, 1
    mov esi, msg_equal
    mov edx, len_equal
    syscall

done:
    mov eax, 60
    xor edi, edi
    syscall
