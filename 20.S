section .data
    num1 db 7              
    num2 db 11             
    msg_first db "First is closer", 10    
    msg_first_len equ $ - msg_first       
    msg_second db "Second is closer", 10  
    msg_second_len equ $ - msg_second     
    msg_equal db "Equidistant", 10        
    msg_equal_len equ $ - msg_equal       

section .text
    global _start

_start:

    movzx rax, byte [num1]  
    movzx rbx, byte [num2]  

    sub rax, 10             
    jge no_abs1             
    neg rax                 
no_abs1:

    sub rbx, 10             
    jge no_abs2             
    neg rbx                 
no_abs2:

    cmp rax, rbx            
    jl first_closer         
    jg second_closer        
    jmp equidistant         

first_closer:
    mov rax, 1              
    mov rdi, 1              
    mov rsi, msg_first      
    mov rdx, msg_first_len  
    syscall
    jmp exit

second_closer:
    mov rax, 1              
    mov rdi, 1              
    mov rsi, msg_second     
    mov rdx, msg_second_len 
    syscall
    jmp exit

equidistant:
    mov rax, 1              
    mov rdi, 1              
    mov rsi, msg_equal      
    mov rdx, msg_equal_len  
    syscall

exit:
    mov rax, 60             
    xor rdi, rdi            
    syscall                 
