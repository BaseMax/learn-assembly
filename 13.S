section .data
    positive_msg db "Positive", 10  
    positive_len equ $ - positive_msg  
    negative_msg db "Negative", 10  
    negative_len equ $ - negative_msg  

section .text
    global _start

_start:

    mov rax, -42    

    cmp rax, 0
    jl print_negative  

    mov rax, 1         
    mov rdi, 1         
    mov rsi, positive_msg  
    mov rdx, positive_len  
    syscall            
    jmp exit           

print_negative:

    mov rax, 1         
    mov rdi, 1         
    mov rsi, negative_msg  
    mov rdx, negative_len  
    syscall            

exit:

    mov rax, 60        
    xor rdi, rdi       
    syscall            
