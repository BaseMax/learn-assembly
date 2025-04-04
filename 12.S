section .data
    digit db 5          
    buffer db 0, 10     

section .text
    global _start

_start:

    mov al, [digit]

    add al, 48

    mov [buffer], al

    mov rax, 1          
    mov rdi, 1          
    mov rsi, buffer     
    mov rdx, 2          
    syscall             

    mov rax, 60         
    xor rdi, rdi        
    syscall             
