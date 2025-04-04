section .data
    num dq 16                
    msg_yes db 'Yes, it is a multiple of 3.', 10  
    msg_no db 'No, it is not a multiple of 3.', 10 

section .text
    global _start

_start:

    mov rax, [num]          
    mov rbx, 3              
    xor rdx, rdx            
    div rbx                 

    cmp rdx, 0              
    je is_multiple          

    mov rax, 1              
    mov rdi, 1              
    mov rsi, msg_no         
    mov rdx, 28             
    syscall                 
    jmp exit                

is_multiple:

    mov rax, 1              
    mov rdi, 1              
    mov rsi, msg_yes        
    mov rdx, 27             
    syscall                 

exit:

    mov rax, 60             
    mov rdi, 0              
    syscall                 
