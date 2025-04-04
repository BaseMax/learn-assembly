section .data
    msg_max db "Max is A", 10
    len_max equ $ - msg_max
    msg_bmax db "Max is B", 10
    len_bmax equ $ - msg_bmax

section .text
    global _start

_start:
check_max:
    mov eax, 7
    mov ebx, 12

    cmp eax, ebx
    jge a_is_max

    mov eax, 1
    mov edi, 1
    mov esi, msg_bmax
    mov edx, len_bmax
    syscall
    jmp done

a_is_max:
    mov eax, 1
    mov edi, 1
    mov esi, msg_max
    mov edx, len_max
    syscall

done:
    mov eax, 60
    xor edi, edi
    syscall
