section .data
    buffer db 0, 10    

section .text
    global _start

_start:
    mov rcx, 5         
    mov rbx, 0         

loop_start:
    mov al, bl         
    add al, '0'        
    mov [buffer], al   
    push rcx           
    
    mov rax, 1         
    mov rdi, 1         
    mov rsi, buffer    
    mov rdx, 2         
    syscall 
    
    pop rcx            
    add rbx, 2         
    dec rcx            
    jnz loop_start 

    mov rax, 60        
    xor rdi, rdi       
    syscall            
