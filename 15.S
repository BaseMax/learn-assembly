section .data
    num db 9
    prime_msg db "Prime", 10      
    prime_len equ $ - prime_msg   
    not_prime_msg db "Not Prime", 10  
    not_prime_len equ $ - not_prime_msg  

section .text
    global _start

_start:

    movzx rax, byte [num]  

    cmp rax, 2
    jl not_prime

    je is_prime

    mov rbx, 2

check_divisor:

    cmp rbx, rax
    jge is_prime       

    mov rdx, 0         
    mov rcx, rax       
    div rbx            
    cmp rdx, 0         
    je not_prime       
    mov rax, rcx       
    inc rbx            
    jmp check_divisor  

is_prime:

    mov rax, 1         
    mov rdi, 1         
    mov rsi, prime_msg 
    mov rdx, prime_len 
    syscall
    jmp exit

not_prime:

    mov rax, 1         
    mov rdi, 1         
    mov rsi, not_prime_msg  
    mov rdx, not_prime_len  
    syscall

exit:

    mov rax, 60        
    xor rdi, rdi       
    syscall
