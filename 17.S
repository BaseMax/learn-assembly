section .data
    var1 db 8          
    var2 db 9          
    buffer db "0 0", 10 
    buffer_len equ 4   

section .text
    global _start

_start:

    movzx rax, byte [var1]  

    movzx rbx, byte [var2]  
    mov [var1], bl          
    mov [var2], al          

    add bl, '0'             
    mov [buffer], bl        

    mov byte [buffer + 1], ' '  

    add al, '0'             
    mov [buffer + 2], al    

    mov rax, 1              
    mov rdi, 1              
    mov rsi, buffer         
    mov rdx, buffer_len     
    syscall                 

    mov rax, 60             
    xor rdi, rdi            
    syscall                 
